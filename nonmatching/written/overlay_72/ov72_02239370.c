typedef unsigned int u32;
typedef unsigned long long u64;
typedef int s32;
typedef unsigned char u8;

s32 Save_SysInfo_GetDwcProfileId(void *sysInfo);
void Save_SysInfo_SetDwcProfileId(void *sysInfo, s32 id);
u64 DWC_CreateFriendKey(void *userData);
void ov72_022378C0(s32 profileId, u32 keyLo, u32 keyHi);

s32 ov72_02239370(u8 **work)
{
    s32 id = Save_SysInfo_GetDwcProfileId(*(void **)(*work + 8));
    if (id == 0) {
        Save_SysInfo_SetDwcProfileId(*(void **)(*work + 8), *(s32 *)(*work + 0x1c));
    }
    id = Save_SysInfo_GetDwcProfileId(*(void **)(*work + 8));
    u64 key = DWC_CreateFriendKey(*(void **)(*work + 0x14));
    ov72_022378C0(id, (u32)key, (u32)(key >> 32));
    ((u32 *)work)[7] = 7;
    return 3;
}
