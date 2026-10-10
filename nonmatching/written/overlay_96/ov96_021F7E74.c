#include "global.h"
#include "brightness.h"
#include "message_format.h"
#include "screen_fade.h"
#include "sound.h"
#include "unk_02005D10.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021EE830(void *obj);
int ov96_021EEA80(void *obj);
MessageFormat *ov96_021EE97C(void *obj);
void ov96_021EE944(void *obj);
void ov96_021EE8CC(void *obj, int code);
u8 *ov96_021E94EC(void *gfx, u8 index);
int ov96_021E95D8(void *gfx, u32 participant, u32 index);
int ov96_021F81CC(void *p, PokeathlonCourseData *data);
int ov96_021F83DC(PokeathlonCourseData *data);
int ov96_021F83FC(PokeathlonCourseData *data);
int ov96_021F85F4(PokeathlonCourseData *data);
void ov96_021F910C(void *obj, int value, u8 index);
int ov96_021F7E64(PokeathlonCourseData *data);

BOOL ov96_021F7E74(PokeathlonCourseData *data, u8 *state) {
    int busy = 0;
    u8 *alloc;
    int result = 0;
    int code;
    MessageFormat *msgFmt;
    u8 *players[4];
    int i;
    int value;
    u32 participant;

    alloc = PokeathlonCourse_GetHeapAllocPtr4(data);
    IsFanfarePlaying();
    if (PokeathlonCourse_GetMode(data) == 1) {
        busy = ov96_021F85F4(data);
    }
    ov96_021EE830(*(void **)(alloc + 0x18));
    if (ov96_021EEA80(*(void **)(alloc + 0x18)) != 0 || busy != 0) {
        return result;
    }
    msgFmt = ov96_021EE97C(*(void **)(alloc + 0x18));
    code = -1;
    switch (*state) {
    case 0:
        code = ov96_021F83DC(data);
        (*state)++;
        break;
    case 1:
        if (ov96_021F81CC(alloc + 0x1c, data) != 0) {
            for (i = 0; i < 4; i++) {
                players[i] = ov96_021E94EC(PokeathlonCourse_GetGraphicsSystem(data), (u8)i);
            }
            if (players[0][9] == players[1][9]) {
                code = 0xfe;
            } else {
                BufferPlayersName(msgFmt, 0, PokeathlonCourse_GetPlayerProfileFromData(data, *(int *)players[0]));
                code = 0xfd;
            }
            (*state)++;
        }
        break;
    case 2:
        StartBrightnessTransition(0x10, -8, 0, 0x3f, 1);
        UpdateMainScreenBrightnessSurface(0x3f, 0x3f);
        *(vu16 *)0x04000052 = 0x10;
        (*state)++;
        break;
    case 3:
        if (IsBrightnessTransitionActive(1) != 0) {
            code = 0xff;
            (*state)++;
        }
        break;
    case 4:
        for (i = 0; i < 4; i++) {
            participant = PokeathlonCourse_GetField3D8_ForCurrentParticipant(data);
            value = ov96_021E95D8(PokeathlonCourse_GetGraphicsSystem(data), participant, i);
            if (value > 999) {
                value = 999;
            }
            ov96_021F910C(*(void **)(alloc + 0x14), value, (u8)i);
        }
        StartBrightnessTransition(0x10, 0, 0x10, 0x3f, 2);
        (*state)++;
        break;
    case 5:
        if (IsBrightnessTransitionActive(2) != 0) {
            (*state)++;
        }
        break;
    case 6:
        code = ov96_021F83FC(data);
        *(u32 *)(alloc + 0xa8) = 1;
        (*state)++;
        break;
    case 7:
        if (PokeathlonCourse_GetMode(data) == 0 || ov96_021F7E64(data) != 0) {
            BeginNormalPaletteFade(0, 0, 0, 0x7fff, 0xc, 1, *(u32 *)alloc);
            GF_SndStartFadeOutBGM(0, 0xc);
            (*state)++;
        }
        break;
    case 8:
        if (IsPaletteFadeFinished() != 0) {
            ov96_021EE944(*(void **)(alloc + 0x18));
            result = 1;
        }
        break;
    }
    if (code != -1) {
        ov96_021EE8CC(*(void **)(alloc + 0x18), code);
        *(int *)(alloc + 0xa4) = *(int *)(alloc + 0xa4) + 1;
    }
    return result;
}
