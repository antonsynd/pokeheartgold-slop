#include "global.h"

extern u32 ov13_0224CF98[];
extern u8 ov13_0224CFB8[];
extern s32 ov13_022459B4;
extern u16 _0224267C[2];

void ov13_02221454(void *self);
void ov13_022214AC(u32 code);
void ov13_02221428(void);
void ov13_022217D0(u32 n);
void ov13_022208F8(void *ptr);
void *ov13_022208E8(u32 size);
s32 ov13_02222DB0(void *p);
int ov13_022216E0(void *p);
void ov13_022230F8(int ms);
void *ov13_02222978(void *dst, u32 value, u32 size);
int ov13_0222175C(void *buf);
int ov13_02222F28(void *a, void *b);
int ov13_022228CC(u32 a, u32 b, u32 c);
void ov13_022217A0(u32 a, void *b, void *c);
int ov13_02222A00(int domain, int type, int protocol);
int ov13_022229FC(int sock, u32 level, int option, void *value, int length);
u32 ov13_02222A1C(u32 value);
u16 ov13_02222A44(u16 value);
int ov13_02222A08(int sock, void *addr, u32 len);
void ov13_02222A14(int sock);
int ov13_02222924(void);
u32 ov13_02221410(u32 a, u32 b);
int ov13_022220B4(int mode, void *list, void *buf, int sock);
void ov13_02222B20(void *set);
void ov13_02222B2C(int sock, void *set);
int ov13_02222998(u32 unused0, void *fds, u32 unused2, u32 unused3, s32 *timeout);
u32 ov13_02222984(int sock, void *buf, u32 len, u32 flags, void *from, void *fromLen);
int ov13_02222A84(u32 value);
int ov13_022217FC(int mode, void *buf, void *tries, void *list, int sock);
u32 ov13_022214B8(void);
int ov13_022214C4(void *self);

#define FAIL(code)               \
    do {                         \
        self[0x116] = (code);    \
        ov13_02221428();         \
        return -1;               \
    } while (0)

#define CLOSE_SOCKET()                       \
    do {                                     \
        if (ov13_022459B4 != -1) {           \
            ov13_02222A14(ov13_022459B4);    \
        }                                    \
    } while (0)

/* socket(), setsockopt(), bind() with a failure exit after each */
#define OPEN_AND_BIND(addr)                                                        \
    do {                                                                           \
        ov13_022459B4 = ov13_02222A00(2, 2, 0);                                    \
        if (ov13_022459B4 < 0) {                                                   \
            FAIL(0xf);                                                             \
        }                                                                          \
        if (ov13_022229FC(ov13_022459B4, 0xFFFF, 1, &optionValue, 4) < 0) {        \
            ov13_022214AC(0xb);                                                    \
            FAIL(0xf);                                                             \
        }                                                                          \
        ov13_02222978(sockaddr, 0, 8);                                             \
        sockaddr[1] = 2;                                                           \
        *(u32 *)(sockaddr + 4) = ov13_02222A1C(addr);                              \
        *(u16 *)(sockaddr + 2) = ov13_02222A44(0x5790);                            \
        if (ov13_02222A08(ov13_022459B4, sockaddr, 8) < 0) {                       \
            FAIL(0xf);                                                             \
        }                                                                          \
    } while (0)

s32 ov13_022209F8(u8 *self) {
    s16 maxPolls;      /* sp+0x58 */
    s16 sleepRetry;    /* sp+0x5a */
    s16 attempts;      /* sp+0x5c */
    s16 sleepStep;     /* sp+0x5e */
    s32 timeoutMs;
    s32 tries = 0;
    s32 optionValue = 1;
    s32 mode = 0;
    s32 newMode;
    u32 addr = 0;
    s32 status;
    s16 retry;
    s16 i;
    s32 tvSec;
    s32 tvUsec;
    u32 *buf;
    u8 buf74[0x3c];
    u8 bufB0[0x18];
    u32 list[5];
    u8 sockaddr[8];
    u8 fdSet[8];
    s32 timeout[2];
    u8 from[8];
    u32 fromLen;
    s32 r;
    u32 recvLen;

    maxPolls = 0;
    sleepRetry = 0;
    ov13_02222978(bufB0, 0, 0x18);

    attempts = _0224267C[0];
    sleepStep = _0224267C[1];

    attempts = *(s16 *)(self + 0x106);
    if (attempts == -1) {
        attempts = 10;
    }
    maxPolls = *(s16 *)(self + 0x10a);
    if (maxPolls == -1) {
        maxPolls = 10;
    }
    sleepStep = *(s16 *)(self + 0x108);
    if (sleepStep == -1) {
        sleepStep = 100;
    }
    sleepRetry = *(s16 *)(self + 0x10c);
    if (sleepRetry == -1) {
        sleepRetry = 100;
    }
    timeoutMs = *(s16 *)(self + 0x10e);
    if (timeoutMs == -1) {
        timeoutMs = 2000;
    }

    ov13_02221454(self);
    if ((ov13_0224CF98[0x2c / 4] & 1) != 1) {
        ov13_022214AC(0x13);
        FAIL(0xf);
    }

    retry = 0;
    ov13_022217D0(0);
    while (TRUE) {
        if (ov13_0224CF98[1] != 0) {
            ov13_022208F8((void *)ov13_0224CF98[1]);
            ov13_0224CF98[1] = 0;
        }
        if (ov13_02222DB0(&ov13_0224CF98[1]) == -1) {
            FAIL(0xf);
        }
        r = ov13_022216E0((void *)ov13_0224CF98[1]);
        if (r == 4) {
            FAIL(2);
        }
        if (r == 0) {
            break;
        }
        if (retry >= attempts) {
            FAIL(1);
        }
        ov13_022230F8(sleepStep);
        retry = retry + 1;
    }
    ov13_022217D0(1);
    ov13_02222978(buf74, 0, 0x3c);
    if (ov13_0222175C(buf74) != 0) {
        FAIL(0xf);
    }
    ov13_0224CF98[3] = (u32)ov13_022208E8(0x58);
    if (ov13_0224CF98[3] == 0) {
        FAIL(0xf);
    }
    ov13_02222978((void *)ov13_0224CF98[3], 0, 0x58);
    i = attempts;
    retry = 0;
    if (i > 0) {
        do {
            r = ov13_02222F28(buf74, (void *)ov13_0224CF98[3]);
            if (r == -1) {
                FAIL(0xf);
            }
            if (r == 0 && *(u32 *)ov13_0224CF98[3] == 1) {
                break;
            }
            ov13_022230F8(sleepStep);
            retry = retry + 1;
        } while (retry < i);
    }
    if (retry == attempts) {
        FAIL(0xf);
    }
    if (ov13_022228CC(0xC0A80B65, 0xFFFFFF00, 0xC0A80B65) != 0) {
        ov13_022214AC(0xc);
        FAIL(0xf);
    }
    ov13_02221428();
    ov13_022217A0(3, bufB0, self + 0x110);
    OPEN_AND_BIND(0xC0A80B65);

label_02220CF6:
    buf = (u32 *)ov13_0224CF98[0x14 / 4];
    ov13_02222978(list, 0, 0x14);
    list[4] = 0xC0A80B65;
    list[0] = 0xC0A80B65 - 0x64;
    tvSec = timeoutMs / 1000;
    tvUsec = (timeoutMs % 1000) * 1000;
    i = attempts;

label_02220D34:
    if (mode == 1 && *(s8 *)(ov13_0224CFB8 + 0x1c) != 1) {
        CLOSE_SOCKET();
        ov13_022459B4 = -1;
        if (ov13_02222924() != 0) {
            FAIL(0xf);
        }
        ov13_0224CF98[1] = (u32)ov13_022208E8(0x58);
        if (ov13_0224CF98[1] == 0) {
            FAIL(0xf);
        }
        while (TRUE) {
            if (ov13_0224CF98[1] != 0) {
                ov13_022208F8((void *)ov13_0224CF98[1]);
                ov13_0224CF98[1] = 0;
            }
            status = ov13_02222DB0(&ov13_0224CF98[1]);
            if (status == -1) {
                FAIL(0xf);
            }
            r = ov13_022216E0((void *)ov13_0224CF98[1]);
            if (r == 4) {
                FAIL(2);
            }
            if (r == 0) {
                break;
            }
            if (retry >= i) {
                FAIL(1);
            }
            ov13_022230F8(sleepStep);
            retry = retry + 1;
        }
        if (status == -1) {
            FAIL(0xf);
        }
        ov13_0224CF98[3] = (u32)ov13_022208E8(0x58);
        if (ov13_0224CF98[3] == 0) {
            FAIL(0xf);
        }
        ov13_02222978((void *)ov13_0224CF98[3], 0, 0x58);
        retry = 0;
        if (i > 0) {
            do {
                r = ov13_02222F28(buf74, (void *)ov13_0224CF98[3]);
                if (r == -1) {
                    FAIL(0xf);
                }
                if (r == 0 && *(u32 *)ov13_0224CF98[3] == 1) {
                    break;
                }
                ov13_022230F8(sleepStep);
                retry = retry + 1;
            } while (retry < i);
        }
        if (retry == i) {
            FAIL(0xf);
        }
        addr = ov13_02221410(ov13_0224CF98[0x34 / 4], ov13_0224CF98[0x38 / 4]);
        if (ov13_022228CC(addr, ov13_0224CF98[0x38 / 4], addr) != 0) {
            ov13_022214AC(0xc);
            FAIL(0xf);
        }
        ov13_0224CFB8[0x1c] = 1;
        ov13_02221428();
        OPEN_AND_BIND(addr);
    }

    if (ov13_022220B4(mode, list, bufB0, ov13_022459B4) == -1) {
        ov13_022214AC(mode + 0x1000);
        FAIL(0xf);
    }
    ov13_02222978(buf, 0, 0x5f8);
    ov13_02222B20(fdSet);
    ov13_02222B2C(ov13_022459B4, fdSet);
    timeout[0] = tvSec;
    timeout[1] = tvUsec;
    if (ov13_02222998(ov13_022459B4 + 1, fdSet, 0, 0, timeout) <= 0) {
        tries = tries + 1;
        if (tries > maxPolls) {
            if (mode == 0) {
                ov13_022214AC(0xf);
            } else if (mode == 1) {
                ov13_022214AC(0x10);
            } else {
                ov13_022214AC(0x11);
            }
            status = -1;
            goto cleanup;
        }
        ov13_022230F8(sleepRetry);
        goto label_02220D34;
    }

    fromLen = 8;
    recvLen = ov13_02222984(ov13_022459B4, buf + 3, 0x5dc, 0, from, &fromLen);
    buf[0] = ov13_022459B4;
    buf[1] = ov13_02222A84((u16)recvLen);
    newMode = ov13_022217FC(mode, buf, &tries, bufB0, ov13_022459B4);
    if (newMode == 0x64) {
        status = 0;
        goto cleanup;
    }
    status = -1;
    if (newMode == -1) {
        goto cleanup;
    }
    if (mode == newMode) {
        if (tries > maxPolls) {
            if (newMode == 0) {
                ov13_022214AC(0xf);
            } else if (newMode == 1) {
                ov13_022214AC(0x10);
            } else {
                ov13_022214AC(0x11);
            }
            status = -1;
            goto cleanup;
        }
        ov13_022230F8(sleepRetry);
        goto label_02220CF6;
    }
    if (newMode == 2) {
        CLOSE_SOCKET();
        ov13_022459B4 = -1;
        if (ov13_02222924() != 0) {
            FAIL(0xf);
        }
        retry = 0;
        ov13_022217D0(4);
        i = attempts;
        while (TRUE) {
            if (ov13_0224CF98[1] != 0) {
                ov13_022208F8((void *)ov13_0224CF98[1]);
                ov13_0224CF98[1] = 0;
            }
            if (ov13_02222DB0(&ov13_0224CF98[1]) == -1) {
                FAIL(0xf);
            }
            r = ov13_022216E0((void *)ov13_0224CF98[1]);
            if (r == 4) {
                FAIL(2);
            }
            if (r == 0) {
                break;
            }
            if (retry >= i) {
                FAIL(1);
            }
            ov13_022230F8(sleepStep);
            retry = retry + 1;
        }
        ov13_0224CF98[3] = (u32)ov13_022208E8(0x58);
        if (ov13_0224CF98[3] == 0) {
            FAIL(0xf);
        }
        ov13_02222978((void *)ov13_0224CF98[3], 0, 0x58);
        i = attempts;
        retry = 0;
        if (i > 0) {
            do {
                r = ov13_02222F28(buf74, (void *)ov13_0224CF98[3]);
                if (r == -1) {
                    FAIL(0xf);
                }
                if (r == 0 && *(u32 *)ov13_0224CF98[3] == 1) {
                    break;
                }
                ov13_022230F8(sleepStep);
                retry = retry + 1;
            } while (retry < i);
        }
        if (retry == attempts) {
            FAIL(0xf);
        }
        if (ov13_022228CC(addr, ov13_0224CF98[0x38 / 4], addr) != 0) {
            ov13_022214AC(0xc);
            FAIL(0xf);
        }
        ov13_02221428();
        OPEN_AND_BIND(addr);
    }
    mode = newMode;
    goto label_02220CF6;

cleanup:
    CLOSE_SOCKET();
    ov13_022459B4 = -1;
    if (ov13_02222924() != 0) {
        FAIL(0xf);
    }
    if (status != 0) {
        u32 code;

        switch (ov13_022214B8()) {
        case 0xf:
            code = 3;
            break;
        case 0x10:
            code = 4;
            break;
        case 0x11:
            code = 5;
            break;
        case 0x14:
            code = 7;
            break;
        case 0x15:
            code = 8;
            break;
        default:
            code = 0xf;
            break;
        }
        FAIL(code);
    }
    if (ov13_022214C4(self) != 0) {
        FAIL(6);
    }
    return 0;
}
