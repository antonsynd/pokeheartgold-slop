#include "global.h"

typedef void (*WMCallbackFunc)(void *arg);
typedef void (*WifiConnectFunc)(int aid);
typedef void (*WifiRecvFunc)(u16 aid, void *data, u16 length);
typedef void (*WifiGgidScanFunc)(u32 ggid, u8 arg);
typedef void (*WifiScanFunc)(void *bssDesc);
typedef void (*WifiSendFunc)(BOOL success);

typedef struct WifiParentParam {
    u16 *userGameInfo;
    u16 userGameInfoLength;
    u16 padding;
    u32 ggid;
    u16 tgid;
    u16 entryFlag;
    u16 maxEntry;
    u16 multiBootFlag;
    u16 KS_Flag;
    u16 CS_Flag;
    u16 beaconPeriod;
    u8 pad1A[0x32 - 0x1A];
    u16 channel;
    u16 parentMaxSize;
    u16 childMaxSize;
    u8 pad38[8];
} WifiParentParam;

typedef struct WifiBssDesc {
    u8 pad00[0x36];
    u16 gameInfoLength;
    u8 pad38[0x88];
} WifiBssDesc;

typedef struct WifiScanParam {
    void *scanBuf;
    u16 channel;
    u16 maxChannelTime;
    u16 bssid[3];
    u16 padding;
} WifiScanParam;

typedef struct WifiWork {
    WifiParentParam parentParam;
    u8 nitroBuffer[0xF00];
    u8 sendBuffer[0xE0];
    u8 recvBuffer[0x200];
    WifiBssDesc bssDesc;
    WifiScanParam scanParam;
    u8 pad12F0[0x10];
    WifiScanFunc scanCallback;
    u32 sendBufferSize;
    u32 recvBufferSize;
    u16 channel;
    u16 autoConnect;
    int state;
    int connectionType;
    WifiRecvFunc recvFunc;
    void *unusedCallback;
    WifiGgidScanFunc ggidScanCallback;
    WifiConnectFunc disconnectCallback;
    WifiConnectFunc connectCallback;
    u16 aid;
    u16 connectedBitmap;
    int errorCode;
    u8 numConnectionsMax;
    u8 pauseConnectionClient;
    u8 pad1336[2];
    u32 rand;
    u16 measureChannel;
    u16 measureChannelBusyRatio;
    u16 leastUsedChannelBitmap;
    u8 pauseConnection;
    u8 pauseConnectSystem;
    u8 setEntry;
    u8 sentBeaconCount;
    u8 pad1346[0x1360 - 0x1346];
} WifiWork;

typedef struct WifiStatus {
    u8 pad00[0x198];
    u32 wepFlag;
} WifiStatus;

typedef struct WifiCallback {
    u16 apiid;
    u16 errcode;
} WifiCallback;

typedef struct WifiStartParentCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u8 macAddress[6];
    u16 aid;
    u8 pad12[2];
    u8 ssid[8];
} WifiStartParentCallback;

typedef struct WifiStartMPCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
} WifiStartMPCallback;

typedef struct WifiGameInfo {
    u16 magicNumber;
    u8 ver;
    u8 platform;
    u32 ggid;
    u16 tgid;
    u8 userGameInfoLength;
    u8 attribute;
    u16 parentMaxSize;
    u16 childMaxSize;
    union {
        u16 userGameInfo[56];
        struct {
            u16 userName[4];
            u16 gameName[8];
            u16 padd1[44];
        } old_type;
    };
} WifiGameInfo;

typedef struct WifiScanCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u8 pad0A[0x36 - 0x0A];
    u16 gameInfoLength;
    WifiGameInfo gameInfo;
} WifiScanCallback;

typedef struct WifiGgidScanInfo {
    u32 unk_00;
    u8 unk_04;
} WifiGgidScanInfo;

typedef struct WifiConnectCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 state;
    u16 aid;
} WifiConnectCallback;

typedef struct WifiSendCallback {
    u16 apiid;
    u16 errcode;
    u8 pad04[0x20 - 4];
    void *arg;
} WifiSendCallback;

typedef struct WifiRecvCallback {
    u16 apiid;
    u16 errcode;
    u16 state;
    u8 pad06[6];
    void *data;
    u16 length;
    u16 aid;
} WifiRecvCallback;

typedef struct WifiMeasureCallback {
    u16 apiid;
    u16 errcode;
    u16 wlCmdID;
    u16 wlResult;
    u16 channel;
    u16 ccaBusyRatio;
} WifiMeasureCallback;

int WM_Initialize(void *buf, WMCallbackFunc callback, u16 dmaNo);
int WM_InitializeForListening(void *buf, WMCallbackFunc callback, u16 dmaNo, u16 flag);
int WM_Reset(WMCallbackFunc callback);
int WM_End(WMCallbackFunc callback);
int WM_SetIndCallback(WMCallbackFunc callback);
int WM_SetPortCallback(u16 port, WMCallbackFunc callback, void *arg);
u16 WM_GetAllowedChannel(void);
u16 WM_GetDispersionScanPeriod(void);
int WM_SetParentParameter(WMCallbackFunc callback, const WifiParentParam *param);
int WM_StartParent(WMCallbackFunc callback);
int WM_EndParent(WMCallbackFunc callback);
int WM_StartScan(WMCallbackFunc callback, const WifiScanParam *param);
int WM_EndScan(WMCallbackFunc callback);
int WM_StartConnectEx(WMCallbackFunc callback, const void *bssDesc, const u8 *ssid, BOOL powerSave, u16 authMode);
int WM_Disconnect(WMCallbackFunc callback, u16 aid);
int WM_StartMP(WMCallbackFunc callback, u16 *recvBuf, u16 recvBufSize, u16 *sendBuf, u16 sendBufSize, u16 param);
int WM_SetMPDataToPortEx(WMCallbackFunc callback, void *arg, const u16 *sendData, u16 sendDataSize, u16 destBitmap, u16 port, u16 prio);
int WM_EndMP(WMCallbackFunc callback);
int WM_SetGameInfo(WMCallbackFunc callback, const u16 *userGameInfo, u16 length, u32 ggid, u16 tgid, u8 attr);
int WM_SetLifeTime(WMCallbackFunc callback, u16 tgid, u16 camLifeTime, u16 frameLifeTime, u16 mpLifeTime);
int WM_MeasureChannel(WMCallbackFunc callback, u16 ccaMode, u16 edThreshold, u16 channel, u16 measureTime);
int WM_SetEntry(WMCallbackFunc callback, BOOL enabled);
void *WMi_GetStatusAddress(void);
void WVR_TerminateAsync(void *callback, void *arg);

u8 sub_0203993C(void);
BOOL sub_02039918(void);
BOOL sub_02039AD8(int arg0);
BOOL sub_020340C4(int arg0);
extern int _s32_div_f(int a, int b);

static char sSsidPrefix[4] = { 0x44, 0x50, 0x00, 0x00 };

static struct {
    u32 unused;
    WifiWork *work;
} sWorkHolder;

#define sWork (sWorkHolder.work)

BOOL sub_02032B84(int connectionType, u16 *macAddress, u16 channel);
BOOL sub_02032C1C(WifiScanFunc scanCallback, u16 *macAddress, u16 channel);
BOOL sub_02032E24(void);
void sub_02033234(u32 ggid);
void sub_02033240(u16 *userGameInfo, u16 size);
u16 sub_02033250(void);
int sub_02033298(void);
int sub_020332AC(void);
BOOL sub_020332C0(void);
u16 sub_02033468(void);
BOOL sub_02033528(void *heap, BOOL isNotListening);
int sub_020335B4(void);
BOOL sub_02033668(int connectionType, u16 tgid, u16 channel, u16 maxEntry, u16 beaconPeriod, BOOL entryFlag);
BOOL sub_0203373C(int connectionType, void *bssDesc);
void sub_020337D0(WifiRecvFunc recvFunc, int port);
BOOL sub_02033800(void *message, u16 size, int port, WifiSendFunc callback);
BOOL sub_020338D0(void);
void sub_02033908(int numConnectionsMax);
BOOL sub_02033920(void);
BOOL sub_0203393C(void);
BOOL sub_02033958(void);
int sub_02033974(void);
BOOL sub_02033990(void);
void sub_020339B4(void *buffer, int size, u32 ggid, int tgid);
BOOL sub_02033A0C(BOOL enable);
BOOL sub_02033A44(void);
void sub_02033A68(void);
void sub_02033A7C(void *callback);
void sub_02033A90(WifiConnectFunc callback);
void sub_02033AA4(int pause);
u8 sub_02033AB8(void);
void sub_02033ACC(int pause);

static void sub_02032844(int state);
static void sub_02032858(int errorCode);
static BOOL sub_02032874(void);
static void sub_020328A4(void *arg);
static BOOL sub_020328C8(void);
static void sub_02032934(void *arg);
static BOOL sub_02032A40(void);
static void sub_02032AB0(void *arg);
static BOOL sub_02032B0C(void);
static void sub_02032B30(void *arg);
static BOOL sub_02032B50(void);
static void sub_02032B6C(void *arg);
static BOOL sub_02032C84(void);
static void sub_02032D4C(void *arg);
static BOOL sub_02032E48(void);
static void sub_02032E64(void *arg);
static BOOL sub_02032E9C(void);
static void sub_02032F0C(void *arg);
static BOOL sub_02032FCC(void);
static void sub_0203301C(void *arg);
static BOOL sub_02033080(void);
static void sub_020330A4(void *arg);
static BOOL sub_020330C8(void);
static void sub_020330F0(void *arg);
static BOOL sub_02033108(void);
static void sub_0203312C(void *arg);
static BOOL sub_0203314C(void *message, u16 size, int port, WifiSendFunc callback);
static void sub_020331A4(void *arg);
static void sub_020331CC(void *arg);
static void sub_02033214(void *arg);
static u16 sub_02033264(void);
static u16 sub_0203335C(u16 channel);
static void sub_020333D8(void *arg);
static int sub_02033454(WMCallbackFunc callback, u16 channel);
static s16 sub_02033494(u16 bitmap);
static void sub_020335BC(void *arg);
static BOOL sub_020335D4(BOOL isNotListening);
static void sub_02033620(void *arg);
static void sub_02033664(void *arg);
static void sub_02033830(void);
void sub_02033858(void);
u16 sub_020338F4(void);
static void sub_020339F0(void *arg);

static void sub_02032844(int state) {
    sWork->state = state;
}

static void sub_02032858(int errorCode) {
    if (sWork->state == 9 || sWork->state == 10) {
        return;
    }
    sWork->errorCode = errorCode;
}

static BOOL sub_02032874(void) {
    int errorCode;

    sub_02032844(3);
    errorCode = WM_SetParentParameter(sub_020328A4, &sWork->parentParam);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        sub_02032844(9);
        return FALSE;
    }
    return TRUE;
}

static void sub_020328A4(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(9);
        return;
    }
    if (!sub_020328C8()) {
        sub_02032844(9);
    }
}

static BOOL sub_020328C8(void) {
    WifiStatus *status;
    int errorCode;

    if (sWork->state == 4 || sWork->state == 5 || sWork->state == 6) {
        return TRUE;
    }

    status = (WifiStatus *)WMi_GetStatusAddress();
    DC_InvalidateRange(&status->wepFlag, sizeof(status->wepFlag));
    status->wepFlag = 0;
    DC_FlushRange(&status->wepFlag, sizeof(status->wepFlag));

    errorCode = WM_StartParent(sub_02032934);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }

    sWork->aid = 0;
    sWork->connectedBitmap = 1;
    return TRUE;
}

static void sub_02032934(void *arg) {
    WifiStartParentCallback *callback = (WifiStartParentCallback *)arg;
    u16 connected = (u16)(1 << callback->aid);

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(9);
        return;
    }

    switch (callback->state) {
    case 2:
        sWork->sentBeaconCount++;
        break;
    case 7:
        if (sWork->pauseConnectSystem == 1 || sWork->pauseConnection == 1 || sub_02033264() >= sWork->numConnectionsMax || callback->ssid[0] != sub_0203993C() || memcmp(sSsidPrefix, &callback->ssid[1], 3) != 0) {
            int disconnectCode = WM_Disconnect(NULL, callback->aid);

            if (disconnectCode != 2) {
                sub_02032858(disconnectCode);
                sub_02032844(9);
            }
            break;
        }

        sWork->connectedBitmap |= connected;

        if (sWork->connectCallback) {
            sWork->connectCallback(callback->aid);
        }
        break;
    case 9:
        sWork->connectedBitmap &= ~connected;

        if (sWork->disconnectCallback) {
            sWork->disconnectCallback(callback->aid);
        }
        break;
    case 0:
        if (!sub_02032A40()) {
            sub_02032844(9);
        }
        break;
    case 0x1a:
        break;
    }
}

static BOOL sub_02032A40(void) {
    int errorCode;

    if (sWork->state == 4 || sWork->state == 5 || sWork->state == 6) {
        return TRUE;
    }

    sub_02032844(4);

    errorCode = WM_StartMP(sub_02032AB0, (u16 *)sWork->recvBuffer, (u16)sWork->recvBufferSize, (u16 *)sWork->sendBuffer, (u16)sWork->sendBufferSize, 1);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_02032AB0(void *arg) {
    WifiStartMPCallback *callback = (WifiStartMPCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(9);
        return;
    }

    switch (callback->state) {
    case 10:
        if (sWork->connectionType != 2 || sWork->state == 4 || sWork->state != 6) {
            sub_02032844(4);
        }
        break;
    case 11:
    case 12:
    case 13:
        break;
    }
}

static BOOL sub_02032B0C(void) {
    int errorCode;

    sub_02032844(3);

    errorCode = WM_EndMP(sub_02032B30);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_02032B30(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02033830();
        return;
    }

    if (!sub_02032B50()) {
        sub_02033830();
    }
}

static BOOL sub_02032B50(void) {
    int errorCode = WM_EndParent(sub_02032B6C);

    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_02032B6C(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        return;
    }
    sub_02032844(1);
}

BOOL sub_02032B84(int connectionType, u16 *macAddress, u16 channel) {
    sWork->recvBufferSize = 0x200;
    sWork->sendBufferSize = 0x40;
    sub_02032844(2);

    sWork->bssDesc.gameInfoLength = 1;
    sWork->scanParam.bssid[2] = macAddress[2];
    sWork->scanParam.bssid[1] = macAddress[1];
    sWork->scanParam.bssid[0] = macAddress[0];
    sWork->connectionType = connectionType;
    sWork->scanCallback = NULL;
    sWork->channel = channel;
    sWork->scanParam.channel = 0;
    sWork->autoConnect = 1;

    if (!sub_02032C84()) {
        sub_02032844(9);
        return FALSE;
    }
    return TRUE;
}

BOOL sub_02032C1C(WifiScanFunc scanCallback, u16 *macAddress, u16 channel) {
    sub_02032844(2);

    sWork->scanCallback = scanCallback;
    sWork->channel = channel;
    sWork->scanParam.channel = 0;
    sWork->autoConnect = 0;
    sWork->scanParam.bssid[2] = macAddress[2];
    sWork->scanParam.bssid[1] = macAddress[1];
    sWork->scanParam.bssid[0] = macAddress[0];

    if (!sub_02032C84()) {
        sub_02032844(9);
        return FALSE;
    }
    return TRUE;
}

#ifdef NONMATCHING
static BOOL sub_02032C84(void) {
    u16 allowedChannel = WM_GetAllowedChannel();
    int errorCode;

    if (allowedChannel == 0x8000) {
        sub_02032858(3);
        sub_02039AD8(1);
        return FALSE;
    }

    if (allowedChannel == 0) {
        sub_02032858(0x16);
        sub_02039AD8(1);
        return FALSE;
    }

    if (sWork->channel == 0) {
        while (TRUE) {
            sWork->scanParam.channel++;

            if (sWork->scanParam.channel > 16) {
                sWork->scanParam.channel = 1;
            }

            if (allowedChannel & (1 << (sWork->scanParam.channel - 1))) {
                break;
            }
        }
    } else {
        sWork->scanParam.channel = sWork->channel;
    }

    sWork->scanParam.maxChannelTime = WM_GetDispersionScanPeriod() / 3;
    sWork->scanParam.scanBuf = &sWork->bssDesc;

    errorCode = WM_StartScan(sub_02032D4C, &sWork->scanParam);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}
#else
// clang-format off
// NONMATCHING: retail keeps the allowed-channel mask in r5 and precomputes the
// scanParam.channel offset; the twin's C (identical logic) allocates differently.
// Transcribed asm.
static asm BOOL sub_02032C84(void) {
	push {r3, r4, r5, r6, r7, lr}
	bl WM_GetAllowedChannel
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r5, r0
	bne _02032CA4
	mov r0, #3
	bl sub_02032858
	mov r0, #1
	bl sub_02039AD8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032CA4:
	cmp r5, #0
	bne _02032CB8
	mov r0, #0x16
	bl sub_02032858
	mov r0, #1
	bl sub_02039AD8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032CB8:
	ldr r1, =sWorkHolder
	ldr r0, =0x0000130C
	ldr r3, [r1, #4]
	ldrh r2, [r3, r0]
	cmp r2, #0
	bne _02032CF8
	add r7, r0, #0
	mov r3, #1
	add r2, r3, #0
	sub r7, #0x28
	sub r0, #0x28
_02032CCE:
	ldr r4, [r1, #4]
	ldr r6, =0x000012E4
	ldrh r6, [r4, r6]
	add r6, r6, #1
	strh r6, [r4, r7]
	ldr r4, [r1, #4]
	ldrh r6, [r4, r0]
	cmp r6, #0x10
	bls _02032CE4
	ldr r6, =0x000012E4
	strh r3, [r4, r6]
_02032CE4:
	ldr r6, [r1, #4]
	ldr r4, =0x000012E4
	ldrh r4, [r6, r4]
	add r6, r2, #0
	sub r4, r4, #1
	lsl r6, r4
	add r4, r5, #0
	tst r4, r6
	bne _02032CFC
	b _02032CCE
_02032CF8:
	sub r0, #0x28
	strh r2, [r3, r0]
_02032CFC:
	bl WM_GetDispersionScanPeriod
	mov r1, #3
	bl _s32_div_f
	ldr r2, =sWorkHolder
	ldr r1, =0x000012E6
	ldr r3, [r2, #4]
	strh r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2, #4]
	sub r0, #0xc6
	add r4, r3, r0
	sub r0, r1, #6
	str r4, [r3, r0]
	ldr r2, [r2, #4]
	sub r1, r1, #6
	ldr r0, =sub_02032D4C
	add r1, r2, r1
	bl WM_StartScan
	cmp r0, #2
	beq _02032D32
	bl sub_02032858
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032D32:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
static void sub_02032D4C(void *arg) {
    WifiScanCallback *callback = (WifiScanCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(9);
        return;
    }

    if (sWork->state != 2) {
        sWork->autoConnect = 0;

        if (!sub_02032E48()) {
            sub_02032844(9);
        }
        return;
    }

    switch (callback->state) {
    case 3:
        return;
    case 4:
        break;
    case 5:
        DC_InvalidateRange(&sWork->bssDesc, sizeof(WifiBssDesc));

        if (sWork->ggidScanCallback != NULL && callback->gameInfoLength >= 8) {
            WifiGgidScanInfo *info = (WifiGgidScanInfo *)callback->gameInfo.userGameInfo;

            sWork->ggidScanCallback(callback->gameInfo.ggid, info->unk_04);
        }

        if (callback->gameInfoLength >= 8 && callback->gameInfo.ggid == sWork->parentParam.ggid && (callback->gameInfo.attribute & 3) == 1) {
            if (sWork->scanCallback != NULL) {
                sWork->scanCallback(&sWork->bssDesc);
            }

            if (sWork->autoConnect != 0) {
                if (!sub_02032E48()) {
                    sub_02032844(9);
                }
                return;
            }
        }
        break;
    }

    if (!sub_02032C84()) {
        sub_02032844(9);
    }
}
#else
// clang-format off
// NONMATCHING: retail forms callback + 0x48 (gameInfo.userGameInfo) as its own base and
// loads #4 from it; every C spelling folds to one +0x4C add.
// Transcribed asm.
static asm void sub_02032D4C(void *arg) {
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02032D62
	bl sub_02032858
	mov r0, #9
	bl sub_02032844
	pop {r4, pc}
_02032D62:
	ldr r0, =sWorkHolder
	ldr r2, [r0, #4]
	ldr r0, =0x00001310
	ldr r1, [r2, r0]
	cmp r1, #2
	beq _02032D84
	mov r1, #0
	sub r0, r0, #2
	strh r1, [r2, r0]
	bl sub_02032E48
	cmp r0, #0
	bne _02032E10
	mov r0, #9
	bl sub_02032844
	pop {r4, pc}
_02032D84:
	ldrh r1, [r4, #8]
	cmp r1, #3
	beq _02032E10
	cmp r1, #4
	beq _02032E02
	cmp r1, #5
	bne _02032E02
	sub r0, #0xf0
	add r0, r2, r0
	mov r1, #0xc0
	bl DC_InvalidateRange
	ldr r0, =sWorkHolder
	ldr r1, [r0, #4]
	ldr r0, =0x00001320
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _02032DB8
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _02032DB8
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1, #4]
	ldr r0, [r4, #0x3c]
	blx r2
_02032DB8:
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _02032E02
	ldr r0, =sWorkHolder
	ldr r2, [r4, #0x3c]
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	cmp r2, r1
	bne _02032E02
	add r4, #0x43
	ldrb r2, [r4, #0]
	mov r1, #3
	and r1, r2
	cmp r1, #1
	bne _02032E02
	mov r1, #0x13
	lsl r1, r1, #8
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02032DE6
	sub r1, #0xe0
	add r0, r0, r1
	blx r2
_02032DE6:
	ldr r0, =sWorkHolder
	ldr r1, [r0, #4]
	ldr r0, =0x0000130E
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02032E02
	bl sub_02032E48
	cmp r0, #0
	bne _02032E10
	mov r0, #9
	bl sub_02032844
	pop {r4, pc}
_02032E02:
	bl sub_02032C84
	cmp r0, #0
	bne _02032E10
	mov r0, #9
	bl sub_02032844
_02032E10:
	pop {r4, pc}
}
// clang-format on
#endif

BOOL sub_02032E24(void) {
    if (sWork->state != 2) {
        return FALSE;
    }
    sub_02032844(3);
    return TRUE;
}

static BOOL sub_02032E48(void) {
    int errorCode = WM_EndScan(sub_02032E64);

    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_02032E64(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        return;
    }

    sub_02032844(1);

    if (sWork->autoConnect != 0) {
        if (!sub_02032E9C()) {
            sub_02032844(9);
        }
    }
}

static BOOL sub_02032E9C(void) {
    u8 ssid[32];
    int errorCode;

    if (sWork->state == 4 || sWork->state == 5 || sWork->state == 6) {
        return TRUE;
    }

    sub_02032844(3);
    MI_CpuCopy8(sSsidPrefix, &ssid[1], 3);

    ssid[0] = sub_0203993C();
    errorCode = WM_StartConnectEx(sub_02032F0C, &sWork->bssDesc, ssid, 1, 0);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_02032F0C(void *arg) {
    WifiConnectCallback *callback = (WifiConnectCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);

        if (callback->errcode == 0xc) {
            sub_02032844(9);
            return;
        } else if (callback->errcode == 0xb) {
            sub_02032844(9);
            return;
        } else if (callback->errcode == 1) {
            if (sub_02039918()) {
                sub_02032844(9);
            } else {
                sub_02032844(8);
            }
            return;
        } else {
            sub_02032844(9);
        }
        return;
    }

    if (callback->state == 8) {
    } else if (callback->state == 7) {
        if (sWork->pauseConnectionClient) {
            sub_02032858(0x14);
            sub_02032844(9);
            return;
        } else {
            sub_02032844(4);

            if (!sub_02032FCC()) {
                sub_02032844(3);
                return;
            }

            sWork->aid = callback->aid;
            return;
        }
    } else if (callback->state == 6) {
    } else if (callback->state == 9) {
        sub_02032858(0x14);
        sub_02032844(9);
        return;
    } else if (callback->state == 0x1a) {
    } else {
        sub_02032844(9);
    }
}

static BOOL sub_02032FCC(void) {
    int errorCode = WM_StartMP(sub_0203301C, (u16 *)sWork->recvBuffer, (u16)sWork->recvBufferSize, (u16 *)sWork->sendBuffer, (u16)sWork->sendBufferSize, 1);

    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_0203301C(void *arg) {
    WifiStartMPCallback *callback = (WifiStartMPCallback *)arg;

    if (callback->errcode != 0) {
        if (callback->errcode == 0xf || callback->errcode == 9 || callback->errcode == 0xd) {
            return;
        }
        sub_02032858(callback->errcode);
        sub_02032844(9);
        return;
    }

    switch (callback->state) {
    case 10:
        if (sWork->connectionType != 3 || sWork->state != 6) {
            sub_02032844(4);
        }
        break;
    case 11:
    case 12:
    case 13:
        break;
    }
}

static BOOL sub_02033080(void) {
    int errorCode;

    sub_02032844(3);
    errorCode = WM_EndMP(sub_020330A4);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_020330A4(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02033858();
        return;
    }

    if (!sub_020330C8()) {
        sub_02032844(9);
    }
}

static BOOL sub_020330C8(void) {
    int errorCode;

    sub_02032844(3);
    errorCode = WM_Disconnect(sub_020330F0, 0);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        sub_02033830();
        return FALSE;
    }
    return TRUE;
}

static void sub_020330F0(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        return;
    }
    sub_02032844(1);
}

static BOOL sub_02033108(void) {
    int errorCode;

    sub_02032844(3);
    errorCode = WM_Reset(sub_0203312C);
    if (errorCode != 2) {
        sub_02032858(errorCode);
        return FALSE;
    }
    return TRUE;
}

static void sub_0203312C(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032844(9);
        sub_02032858(callback->errcode);
        return;
    }
    sub_02032844(1);
}

static BOOL sub_0203314C(void *message, u16 size, int port, WifiSendFunc callback) {
    int errorCode;

    DC_FlushRange(sWork->sendBuffer, sWork->sendBufferSize);

    errorCode = WM_SetMPDataToPortEx(sub_020331A4, (void *)callback, message, size, 0xFFFF, port, 2);
    return errorCode == 2;
}

static void sub_020331A4(void *arg) {
    WifiSendCallback *callback = (WifiSendCallback *)arg;

    if (callback->errcode != 0 && callback->errcode != 0xf) {
        sub_02032858(callback->errcode);
        return;
    }

    if (callback->arg != NULL) {
        WifiSendFunc sendFunc = (WifiSendFunc)callback->arg;

        sendFunc(callback->errcode == 0);
    }
}

static void sub_020331CC(void *arg) {
    WifiRecvCallback *callback = (WifiRecvCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        return;
    }

    if (sWork->recvFunc != NULL) {
        if (callback->state == 0x19) {
        } else if (callback->state == 0x15) {
            sWork->recvFunc(callback->aid, callback->data, callback->length);
        } else if (callback->state == 9) {
            sWork->recvFunc(callback->aid, NULL, 0);
        }
    }
}

static void sub_02033214(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode != 0) {
        sub_02032844(10);
        return;
    }

    WVR_TerminateAsync(NULL, NULL);
    sub_02032844(0);
}

void sub_02033234(u32 ggid) {
    sWork->parentParam.ggid = ggid;
}

void sub_02033240(u16 *userGameInfo, u16 size) {
    sWork->parentParam.userGameInfo = userGameInfo;
    sWork->parentParam.userGameInfoLength = size;
}

u16 sub_02033250(void) {
    return sWork->connectedBitmap;
}

static u16 sub_02033264(void) {
    int cnt = 0, i;
    u16 connected = sWork->connectedBitmap;

    for (i = 0; i < 16; i++) {
        if (connected & 1) {
            cnt++;
        }
        connected = connected >> 1;
    }

    return cnt;
}

int sub_02033298(void) {
    return sWork->state;
}

int sub_020332AC(void) {
    return sWork->errorCode;
}

BOOL sub_020332C0(void) {
    u8 macAddress[6];
    u16 errorCode;

    OS_GetMacAddress(macAddress);

    sWork->rand = (u32)(OS_GetVBlankCount() + *(u16 *)&macAddress[0] + *(u16 *)&macAddress[2] + *(u16 *)&macAddress[4]);
    sWork->rand = sWork->rand * 69069UL + 12345;
    sWork->measureChannel = 0;
    sWork->measureChannelBusyRatio = 100 + 1;

    sub_02032844(3);

    errorCode = sub_0203335C(1);

    if (errorCode == 0x18) {
        sub_02032858(0x18);
        sub_02032844(9);
        sub_02039AD8(1);
        return FALSE;
    }

    if (errorCode != 2) {
        sub_02032858(errorCode);
        sub_02032844(9);
        return FALSE;
    }

    return TRUE;
}

static u16 sub_0203335C(u16 channel) {
    u16 allowedChannel = WM_GetAllowedChannel();

    if (allowedChannel == 0x8000) {
        sub_02032858(3);
        sub_02032844(9);
        sub_02039AD8(1);
        return 3;
    }

    if (allowedChannel == 0) {
        sub_02032858(0x16);
        sub_02032844(9);
        sub_02039AD8(1);
        return 0x18;
    }

    while (((1 << (channel - 1)) & allowedChannel) == 0) {
        channel++;

        if (channel > 16) {
            return 0x18;
        }
    }

    return sub_02033454(sub_020333D8, channel);
}

static void sub_020333D8(void *arg) {
    WifiMeasureCallback *callback = (WifiMeasureCallback *)arg;
    u16 channel;
    u16 errorCode;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(9);
        sub_02039AD8(1);
        return;
    }

    channel = callback->channel;

    if (sWork->measureChannelBusyRatio > callback->ccaBusyRatio) {
        sWork->measureChannelBusyRatio = callback->ccaBusyRatio;
        sWork->leastUsedChannelBitmap = (u16)(1 << (channel - 1));
    } else if (sWork->measureChannelBusyRatio == callback->ccaBusyRatio) {
        sWork->leastUsedChannelBitmap |= 1 << (channel - 1);
    }

    errorCode = sub_0203335C(++channel);

    if (errorCode == 0x18) {
        sub_02032844(7);
        return;
    }

    if (errorCode != 2) {
        sub_02032844(9);
        return;
    }
}

static int sub_02033454(WMCallbackFunc callback, u16 channel) {
    return WM_MeasureChannel(callback, 3, 17, channel, 30);
}

u16 sub_02033468(void) {
    sub_02032844(1);
    sWork->measureChannel = (u16)sub_02033494(sWork->leastUsedChannelBitmap);

    return sWork->measureChannel;
}

static s16 sub_02033494(u16 bitmap) {
    s16 i;
    s16 channel = 0;
    u16 cnt = 0;
    u16 randChannel;

    for (i = 0; i < 16; i++) {
        if (bitmap & (1 << i)) {
            channel = (s16)(i + 1);
            cnt++;
        }
    }

    if (cnt <= 1) {
        return channel;
    }

    randChannel = (u16)((((sWork->rand = sWork->rand * 69069UL + 12345) & 0xFF) * cnt) / 0x100);

    for (i = 0; i < 16; i++) {
        if (bitmap & 1) {
            if (randChannel == 0) {
                return (s16)(i + 1);
            }

            randChannel--;
        }

        bitmap >>= 1;
    }

    return 0;
}

#ifdef NONMATCHING
BOOL sub_02033528(void *heap, BOOL isNotListening) {
    u32 heapAddress = (u32)heap;

    if (heapAddress % 32) {
        heapAddress += 32 - (heapAddress % 32);
    }

    sWork = (WifiWork *)heapAddress;
    sWork->recvBufferSize = 0;
    sWork->sendBufferSize = 0;
    sWork->recvFunc = NULL;
    sWork->aid = 0;
    sWork->connectedBitmap = 1;
    sWork->errorCode = 0;
    sWork->state = 0;
    sWork->parentParam.userGameInfo = NULL;
    sWork->parentParam.userGameInfoLength = 0;
    sWork->unusedCallback = NULL;
    sWork->numConnectionsMax = 8;
    sWork->pauseConnectionClient = 0;
    sWork->pauseConnection = 0;

    if (!sub_020335D4(isNotListening)) {
        return FALSE;
    }

    return TRUE;
}
#else
// clang-format off
// NONMATCHING: retail tests heapAddress % 32 with lsl/lsr #27; MWCC emits movs #31 + ands.
// Transcribed asm.
asm BOOL sub_02033528(void *heap, BOOL isNotListening) {
	push {r4, r5, r6, lr}
	lsl r2, r0, #0x1b
	lsr r3, r2, #0x1b
	beq _02033536
	mov r2, #0x20
	sub r2, r2, r3
	add r0, r0, r2
_02033536:
	ldr r3, =sWorkHolder
	ldr r2, =0x00001308
	str r0, [r3, #4]
	mov r4, #0
	str r4, [r0, r2]
	ldr r5, [r3, #4]
	sub r0, r2, #4
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x24
	strh r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r6, #1
	add r0, #0x26
	strh r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x28
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #8
	str r4, [r5, r0]
	ldr r0, [r3, #4]
	mov r6, #8
	str r4, [r0, #0]
	ldr r0, [r3, #4]
	strh r4, [r0, #4]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x14
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2c
	strb r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2d
	strb r4, [r5, r0]
	ldr r0, [r3, #4]
	add r2, #0x3a
	strb r4, [r0, r2]
	add r0, r1, #0
	bl sub_020335D4
	cmp r0, #0
	bne _020335A6
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_020335A6:
	mov r0, #1
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

int sub_020335B4(void) {
    return 0x1380;
}

static void sub_020335BC(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode == 8) {
        sub_02032844(9);
        sub_02032858(0x19);
    }
}

static BOOL sub_020335D4(BOOL isNotListening) {
    int errorCode;

    sub_02032844(3);

    if (isNotListening == 1) {
        errorCode = WM_Initialize(&sWork->nitroBuffer, sub_02033620, 2);
    } else {
        errorCode = WM_InitializeForListening(&sWork->nitroBuffer, sub_02033620, 2, 0);
    }

    if (errorCode != 2) {
        sub_02032858(errorCode);
        sub_02032844(10);
        return FALSE;
    }

    return TRUE;
}

static void sub_02033620(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;
    int errorCode;

    if (callback->errcode != 0) {
        sub_02032858(callback->errcode);
        sub_02032844(10);
        sub_02039AD8(5);
        return;
    }

    errorCode = WM_SetIndCallback(sub_020335BC);

    if (errorCode != 0) {
        sub_02032858(errorCode);
        sub_02032844(10);
        sub_02039AD8(5);
        return;
    }

    sub_02032844(1);
}

static void sub_02033664(void *arg) {
}

BOOL sub_02033668(int connectionType, u16 tgid, u16 channel, u16 maxEntry, u16 beaconPeriod, BOOL entryFlag) {
    if (sub_020340C4(sub_0203993C())) {
        WM_SetLifeTime(sub_02033664, 0xFFFF, 100, 5, 100);
    }

    sWork->recvBufferSize = 0x1C0;
    sWork->sendBufferSize = 0xE0;
    sWork->connectionType = connectionType;
    sub_02032844(3);

    sWork->parentParam.tgid = tgid;
    sWork->parentParam.channel = channel;
    sWork->parentParam.beaconPeriod = beaconPeriod;

    switch (connectionType) {
    case 0:
        sWork->parentParam.parentMaxSize = 192;

        if (maxEntry >= 5) {
            sWork->parentParam.childMaxSize = 12;
        } else {
            sWork->parentParam.childMaxSize = 38;
        }
        break;
    case 4:
        sWork->parentParam.parentMaxSize = 100;
        sWork->parentParam.childMaxSize = 12;
        break;
    }

    sWork->parentParam.maxEntry = maxEntry;
    sWork->parentParam.CS_Flag = 0;
    sWork->parentParam.multiBootFlag = 0;
    sWork->parentParam.entryFlag = entryFlag;
    sWork->parentParam.KS_Flag = (u16)((connectionType == 2) ? 1 : 0);

    switch (connectionType) {
    case 0:
    case 2:
    case 4:
        return sub_02032874();
    default:
        break;
    }

    return FALSE;
}

BOOL sub_0203373C(int connectionType, void *bssDesc) {
    if (sub_020340C4(sub_0203993C())) {
        WM_SetLifeTime(sub_02033664, 0xFFFF, 100, 5, 100);
    }

    sWork->recvBufferSize = 0x200;
    sWork->sendBufferSize = 0x40;
    sWork->connectionType = connectionType;
    sub_02032844(3);

    switch (connectionType) {
    case 1:
    case 3:
    case 5:
        MI_CpuCopy8(bssDesc, &sWork->bssDesc, sizeof(sWork->bssDesc));
        DC_FlushRange(&sWork->bssDesc, sizeof(sWork->bssDesc));
        DC_WaitWriteBufferEmpty();
        return sub_02032E9C();
    default:
        break;
    }

    return FALSE;
}

void sub_020337D0(WifiRecvFunc recvFunc, int port) {
    sWork->recvFunc = recvFunc;

    if (WM_SetPortCallback(port, sub_020331CC, NULL) != 0) {
        sub_02032844(9);

        while (TRUE) {
        }
    }
}

BOOL sub_02033800(void *message, u16 size, int port, WifiSendFunc callback) {
    if ((sub_020338F4() == 0) && !(0xFE & sub_02033250())) {
        return FALSE;
    }

    return sub_0203314C(message, size, port, callback);
}

static void sub_02033830(void) {
    if (2 == sWork->state) {
        while (TRUE) {
        }
    }

    if (!sub_02033108()) {
        sub_02032844(10);
    }
}

void sub_02033858(void) {
    if (sWork->state == 1) {
        return;
    }

    if (sWork->state != 6 && sWork->state != 5 && sWork->state != 4) {
        sub_02032844(3);
        sub_02033830();
        return;
    }

    sub_02032844(3);

    switch (sWork->connectionType) {
    case 3:
        break;
    case 5:
    case 1:
        if (!sub_02033080()) {
            sub_02033830();
        }
        break;
    case 2:
        break;
    case 4:
    case 0:
        if (!sub_02032B0C()) {
            sub_02033830();
        }
    }
}

BOOL sub_020338D0(void) {
    int errorCode;

    sub_02032844(3);
    errorCode = WM_End(sub_02033214);

    if (errorCode != 2) {
        sub_02032844(9);
        return FALSE;
    }

    return TRUE;
}

u16 sub_020338F4(void) {
    return sWork->aid;
}

void sub_02033908(int numConnectionsMax) {
    if (sWork) {
        sWork->numConnectionsMax = numConnectionsMax;
    }
}

BOOL sub_02033920(void) {
    return sWork->state == 1;
}

BOOL sub_0203393C(void) {
    return sWork->state == 3;
}

BOOL sub_02033958(void) {
    return sWork->state == 9;
}

int sub_02033974(void) {
    return sWork->state == 10;
}

BOOL sub_02033990(void) {
    if (sWork) {
        return sWork->state == 2;
    }

    return FALSE;
}

void sub_020339B4(void *buffer, int size, u32 ggid, int tgid) {
    if (sWork->state == 4) {
        WM_SetGameInfo(NULL, buffer, size, ggid, tgid, 1);
    }
}

static void sub_020339F0(void *arg) {
    WifiCallback *callback = (WifiCallback *)arg;

    if (callback->errcode == 0) {
        sWork->setEntry = TRUE;
    }
}

BOOL sub_02033A0C(BOOL enable) {
    sWork->setEntry = 0;

    if (sWork->state == 4) {
        if (2 == WM_SetEntry(sub_020339F0, enable)) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL sub_02033A44(void) {
    if (sWork) {
        return sWork->sentBeaconCount >= 6;
    }

    return FALSE;
}

void sub_02033A68(void) {
    sWork->sentBeaconCount = 0;
}

void sub_02033A7C(void *callback) {
    sWork->ggidScanCallback = (WifiGgidScanFunc)callback;
}

void sub_02033A90(WifiConnectFunc callback) {
    sWork->connectCallback = callback;
}

void sub_02033AA4(int pause) {
    sWork->pauseConnection = pause;
}

u8 sub_02033AB8(void) {
    return sWork->pauseConnection;
}

void sub_02033ACC(int pause) {
    sWork->pauseConnectSystem = pause;
}
