#include "global.h"
#include "constants/sndseq.h"
#include "list_menu.h"
#include "overlay_manager.h"
#include "unk_02005D10.h"

typedef int (*ov74_0222F404_Handler)(OverlayManager *man, u32 r1, u32 r2, u32 r3);

extern ov74_0222F404_Handler ov74_0223D0C0;

/* r1-r3 still hold PlaySE's leftovers when the handler is entered. */
#define CAPTURE_R1_R3()                                                                         \
    do {                                                                                        \
        register u32 captured1 __asm__("r4");                                                   \
        register u32 captured2 __asm__("r5");                                                   \
        register u32 captured3 __asm__("r6");                                                   \
        __asm__ volatile("movs r4, r1\n\tmovs r5, r2\n\tmovs r6, r3"                            \
                         : "=r"(captured1), "=r"(captured2), "=r"(captured3));                  \
        r1 = captured1;                                                                         \
        r2 = captured2;                                                                         \
        r3 = captured3;                                                                         \
    } while (0)

void ov74_0222F404(OverlayManager *man, int *state, ov74_0222F404_Handler onCancel) {
    u32 r1, r2, r3;
    s32 input;
    int next;
    u8 *work = OverlayManager_GetData(man);

    input = ListMenu_ProcessInput(*(struct ListMenu **)(work + 0x2bbc));
    if (input == -2) {
        PlaySE(SEQ_SE_DP_SELECT);
        CAPTURE_R1_R3();
        if (onCancel != NULL) {
            next = onCancel(man, r1, r2, r3);
            if (next != -1) {
                *state = next;
                return;
            }
        }
    } else if (input != -1) {
        PlaySE(SEQ_SE_DP_SELECT);
        CAPTURE_R1_R3();
        if (input != 0) {
            if ((u32)input < 0x1f) {
                *state = input;
                return;
            }
            ov74_0223D0C0 = (ov74_0222F404_Handler)input;
            next = ((ov74_0222F404_Handler)input)(man, r1, r2, r3);
            if (next != -1) {
                *state = next;
            }
        }
    }
}
