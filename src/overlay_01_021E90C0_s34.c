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
void ov01_021EA300(const AreaLightTemplate *template, ModelAttributes *modelAttrs);
void ov01_021EA564(AreaLightTemplate **templates);

void LoadAreaOrDungeonLightTxt(u32 archiveID, ModelAttributes *modelAttrs) {
    AreaLightTemplate *templates;
    int count;
    int currentTime;
    int i;
    int active;

    GF_ASSERT(archiveID < 5);
    count = ov01_021EA3E0(ov01_02206450[archiveID], &templates);
    currentTime = GF_RTC_TimeToSec() / 2;
    for (i = 0; i < count; i++) {
        if (templates[i].endTime > currentTime) {
            active = i;
            break;
        }
    }
    ov01_021EA300(&templates[active], modelAttrs);
    ov01_021EA564(&templates);
}
