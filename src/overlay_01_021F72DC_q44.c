#include "global.h"

typedef struct Ov01ScaleTable {
    u32 values[4];
} Ov01ScaleTable;

typedef struct Ov01_021F8374_State {
    s8 index;
    s8 unk1;
    s8 forced;
    u8 scaled : 1;
    u8 unk3_1 : 7;
} Ov01_021F8374_State;

extern const Ov01ScaleTable ov01_02208A38;

void sub_02023EE0(void *obj, u32 value);
void sub_02023F40(void *obj, int a1);
void sub_02023F04(void *obj, fx32 value);

void ov01_021F8374(void *a0, void *obj, Ov01_021F8374_State *state, int index) {
    Ov01ScaleTable table = ov01_02208A38;
    u32 value = table.values[index];

    if (index != state->index) {
        sub_02023EE0(obj, value);
        sub_02023F40(obj, 0);
        state->scaled = FALSE;
    } else if (state->forced != 0) {
        state->scaled = TRUE;
    } else if (state->scaled == TRUE) {
        sub_02023EE0(obj, value);
        sub_02023F40(obj, 0);
        state->scaled = FALSE;
    } else {
        sub_02023F04(obj, FX32_ONE);
    }
}
