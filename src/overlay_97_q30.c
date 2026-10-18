#include "global.h"

#include "sprite.h"

typedef struct Ov97ResultRow {
    s8 trend;
    u8 marks[5];
    u8 filler_6[2];
} Ov97ResultRow;

typedef struct Ov97Results {
    u8 filler_00[0x28];
    Ov97ResultRow rows[5];
} Ov97Results;

typedef struct Ov97RowSprites {
    Sprite *arrow;
    Sprite *marks[5];
} Ov97RowSprites;

typedef struct Ov97App {
    u8 filler_000[0x1DC];
    Ov97RowSprites rows[5];
} Ov97App;

void ov97_0221F5F8(Ov97App *app, Ov97Results *results) {
    u8 i;
    u8 j;

    for (i = 0; i < 5; i++) {
        if (results->rows[i].trend > 0) {
            Sprite_SetDrawFlag(app->rows[i].arrow, TRUE);
            Sprite_SetAnimCtrlSeq(app->rows[i].arrow, 4);
        } else if (results->rows[i].trend < 0) {
            Sprite_SetDrawFlag(app->rows[i].arrow, TRUE);
            Sprite_SetAnimCtrlSeq(app->rows[i].arrow, 5);
        } else {
            Sprite_SetDrawFlag(app->rows[i].arrow, FALSE);
        }
        for (j = 0; j < 5; j++) {
            switch (results->rows[i].marks[j]) {
            case 0:
                Sprite_SetDrawFlag(app->rows[i].marks[j], FALSE);
                break;
            case 1:
                Sprite_SetDrawFlag(app->rows[i].marks[j], TRUE);
                Sprite_SetAnimCtrlSeq(app->rows[i].marks[j], 3);
                break;
            case 2:
                Sprite_SetDrawFlag(app->rows[i].marks[j], TRUE);
                Sprite_SetAnimCtrlSeq(app->rows[i].marks[j], 0);
                break;
            case 3:
                Sprite_SetDrawFlag(app->rows[i].marks[j], TRUE);
                Sprite_SetAnimCtrlSeq(app->rows[i].marks[j], 1);
                break;
            case 4:
                Sprite_SetDrawFlag(app->rows[i].marks[j], TRUE);
                Sprite_SetAnimCtrlSeq(app->rows[i].marks[j], 2);
                break;
            default:
                GF_ASSERT(FALSE);
                break;
            }
        }
    }
}
