#include "global.h"

#include "field/area_light.h"

#include "gf_rtc.h"
#include "heap.h"

typedef struct AreaLightTemplate {
    u32 endTime;
    u8 filler_04[0x2C];
} AreaLightTemplate;

struct AreaLightManager {
    u32 templateCount;
    AreaLightTemplate *templates;
    u32 activeTemplateIndex;
    ModelAttributes *areaModelAttrs;
    BOOL applyToAreaModelAttrs;
};

extern const u32 ov01_02206450[];

u32 ov01_021EA3E0(u32 fileId, AreaLightTemplate **templates);
void ov01_021EA398(AreaLightManager *areaLightMan);

AreaLightManager *AreaLightManager_New(ModelAttributes *areaModelAttrs, const u32 archiveID) {
    AreaLightManager *areaLightMan;
    int currentTime;
    u32 i;

    GF_ASSERT(archiveID < 5);
    areaLightMan = Heap_Alloc(HEAP_ID_FIELD1, sizeof(AreaLightManager));
    areaLightMan->areaModelAttrs = areaModelAttrs;
    areaLightMan->templateCount = ov01_021EA3E0(ov01_02206450[archiveID], &areaLightMan->templates);
    areaLightMan->activeTemplateIndex = 0;
    currentTime = GF_RTC_TimeToSec() / 2;
    for (i = 0; i < areaLightMan->templateCount; i++) {
        if (areaLightMan->templates[i].endTime > currentTime) {
            areaLightMan->activeTemplateIndex = i;
            break;
        }
    }
    areaLightMan->applyToAreaModelAttrs = TRUE;
    ov01_021EA398(areaLightMan);
    return areaLightMan;
}
