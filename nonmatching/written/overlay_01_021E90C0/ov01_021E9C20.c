typedef unsigned int u32;
void MapPropOneShotAnimationManager_UnloadAnimation(void *animMan, void *oneShotMan, u32 tag);

void ov01_021E9C20(void *fieldSystem, u32 tag)
{
    MapPropOneShotAnimationManager_UnloadAnimation(*(void **)((char *)fieldSystem + 0x54), *(void **)((char *)fieldSystem + 0x58), tag);
}
