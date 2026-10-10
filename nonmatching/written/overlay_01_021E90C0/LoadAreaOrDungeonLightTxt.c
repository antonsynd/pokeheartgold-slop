typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern const char *ov01_02206450[];
void GF_AssertFail(void);
s32 ov01_021EA3E0(const char *path, u8 **out);
s32 GF_RTC_TimeToSec(void);
void ov01_021EA300(u8 *entry, void *out);
void ov01_021EA564(u8 **templates);

void LoadAreaOrDungeonLightTxt(u32 idx, void *out)
{
    s32 callerR5;
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    u8 *templates;
    s32 count, half, i, sel;

    if (idx >= 5) {
        GF_AssertFail();
    }
    count = ov01_021EA3E0(ov01_02206450[idx], &templates);
    half = GF_RTC_TimeToSec() / 2;
    sel = callerR5;
    for (i = 0; i < count; i++) {
        if (*(u32 *)(templates + i * 0x30) > (u32)half) {
            sel = i;
            break;
        }
    }
    ov01_021EA300(templates + sel * 0x30, out);
    ov01_021EA564(&templates);
}
