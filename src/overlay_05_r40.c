#include "global.h"

typedef struct Ov05Capacities {
    int counts[6];
} Ov05Capacities;

typedef struct Ov05SpriteTemplate {
    u8 data[0x1C];
} Ov05SpriteTemplate;

typedef struct Ov05Scene {
    u8 filler_000[0x198];
    void *sprites[14];
    u8 filler_1D0[0x40];
    u32 numSprites;
} Ov05Scene;

extern const Ov05Capacities ov05_0221EB04;
extern const Ov05SpriteTemplate ov05_0221EDA4[];

void ov05_0221CD24(Ov05Scene *scene, const Ov05Capacities *capacities, int count);
void ov05_0221D318(Ov05Scene *scene);
void *ov05_0221CDC4(Ov05Scene *scene, const Ov05SpriteTemplate *template);
void ov05_0221D3AC(Ov05Scene *scene, int index, int x, int y);
void ov05_0221D4D0(Ov05Scene *scene);
void ov05_0221D5DC(Ov05Scene *scene);
void ov05_0221D664(Ov05Scene *scene, int index, int x, int y);

void ov05_0221D240(Ov05Scene *scene) {
    Ov05Capacities capacities = ov05_0221EB04;
    u32 i;

    ov05_0221CD24(scene, &capacities, 12 + 8 + 1);
    ov05_0221D318(scene);
    for (i = 0; i < 12; i++) {
        scene->sprites[i] = ov05_0221CDC4(scene, &ov05_0221EDA4[i]);
    }
    ov05_0221D3AC(scene, 0, -256, 0);
    ov05_0221D3AC(scene, 1, -256, 0);
    ov05_0221D3AC(scene, 2, 256, 0);
    ov05_0221D3AC(scene, 3, 256, 0);
    ov05_0221D4D0(scene);
    scene->numSprites = 12;
    ov05_0221D5DC(scene);
    ov05_0221D664(scene, 0, -256, 0);
    ov05_0221D664(scene, 1, -256, 0);
    ov05_0221D664(scene, 2, 256, 0);
    ov05_0221D664(scene, 3, 256, 0);
}
