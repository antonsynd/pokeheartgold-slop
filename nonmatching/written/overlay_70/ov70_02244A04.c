typedef unsigned int u32;
typedef unsigned long long u64;
typedef int s32;
typedef unsigned char u8;

void *sub_0202C08C(void *wifiList);
s32 Save_SysInfo_GetDwcProfileId(void *sysInfo);
void Save_SysInfo_SetDwcProfileId(void *sysInfo, s32 id);
u64 DWC_CreateFriendKey(void *userData);
void ov70_022378C0(s32 profileId, u32 keyLo, u32 keyHi);

s32 ov70_02244A04(u8 **work)
{
    void *userData = sub_0202C08C(*(void **)(*work + 0x14));
    s32 id = Save_SysInfo_GetDwcProfileId(*(void **)(*work + 4));
    if (id == 0) {
        Save_SysInfo_SetDwcProfileId(*(void **)(*work + 4), *(s32 *)(*work + 0x34));
    }
    id = Save_SysInfo_GetDwcProfileId(*(void **)(*work + 4));
    u64 key = DWC_CreateFriendKey(userData);
    ov70_022378C0(id, (u32)key, (u32)(key >> 32));
    ((u32 *)work)[0xb] = 7;
    return 3;
}
