#include "global.h"

#include "sprite_system.h"

typedef struct Ov40Pos {
    s16 x;
    s16 y;
} Ov40Pos;

typedef struct Ov40Positions {
    Ov40Pos pos[30];
} Ov40Positions;

typedef struct Ov40Cell {
    ManagedSprite *sprite;
    u8 filler_4[4];
} Ov40Cell;

typedef struct Ov40Row {
    Ov40Cell cells[6];
} Ov40Row;

typedef struct Ov40Data {
    u8 filler_0000[0x2090];
    Ov40Row rows[5];
} Ov40Data;

typedef struct Ov40App {
    u8 filler_000[0x860];
    Ov40Data *data;
} Ov40App;

extern const Ov40Positions ov40_0224557C;

void ov40_0223A3BC(Ov40App *app) {
    Ov40Positions positions = ov40_0224557C;
    Ov40Data *data = app->data;
    int i;
    int j;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 6; j++) {
            if (data->rows[i].cells[j].sprite != NULL) {
                ManagedSprite_SetPositionXY(data->rows[i].cells[j].sprite, positions.pos[i * 6 + j].x, positions.pos[i * 6 + j].y);
            }
        }
    }
}
