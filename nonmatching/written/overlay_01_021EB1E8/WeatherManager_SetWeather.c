typedef int s32;
typedef int BOOL;

void GF_AssertFail(void);
BOOL ov01_021EB700(void *a, s32 b, s32 c);

typedef struct {
    void *unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} UnkStruct_WeatherManager_SetWeather;

void WeatherManager_SetWeather(UnkStruct_WeatherManager_SetWeather *mgr, s32 weather)
{
    if (mgr->unkC != 6) {
        GF_AssertFail();
    }
    if (weather >= 0xe) {
        GF_AssertFail();
    }
    if (mgr->unk4 == weather) {
        return;
    }
    if (!ov01_021EB700(mgr->unk0, 8, mgr->unk4)) {
        GF_AssertFail();
    }
    if (!ov01_021EB700(mgr->unk0, 0, weather)) {
        GF_AssertFail();
    }
    if (!ov01_021EB700(mgr->unk0, 3, weather)) {
        GF_AssertFail();
    }
    mgr->unk4 = weather;
}
