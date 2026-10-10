typedef unsigned char u8;
typedef int s32;

s32 sub_02057C94(void);
void sub_020376E0(int arg0, u8 *arg1);
void sub_020582F4(void *func, void *data);
void sub_0205857C(void);
void sub_020586EC(void);

/* the manager pointer stored at 0x021D41C8 */
extern u8 *sFieldCommMan __asm__("sub_021D41C8");

void sub_02058608(void)
{
    u8 data;

    if (sub_02057C94() == 0) {
        sFieldCommMan[0x3F] = 0;

        data = 1;
        sub_020376E0(94, &data);

        sub_020582F4(sub_020586EC, 0);
    }

    sub_0205857C();
}
