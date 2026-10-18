#include "global.h"

typedef struct Ov96Cell {
    u32 unk0;
    void *obj;
} Ov96Cell;

typedef struct Ov96Row {
    Ov96Cell cells[5];
    u32 unk28;
} Ov96Row;

void *ov96_021EB3E4(void *a0, u16 a1, int a2, int a3, int a4);
void ov96_021EB52C(void *obj, int a1, int a2);
void ov96_021EB630(void *obj, int a1);

void ov96_021FC630(Ov96Row *rows, void *a1, u16 a2) {
    u8 i;
    u8 j;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 5; j++) {
            rows[i].cells[j].obj = ov96_021EB3E4(a1, a2, 1, 0x6A, 10);
            ov96_021EB52C(rows[i].cells[j].obj, 1, 0);
            ov96_021EB630(rows[i].cells[j].obj, 5);
        }
    }
}
