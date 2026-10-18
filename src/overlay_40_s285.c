#include "global.h"

#include "constants/species.h"

#include "bg_window.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct Ov40Data {
    u8 filler_000[0x2C];
    u16 species[0x96];
    void *unk158;
    u8 filler_15C[0x54];
    int unk1B0;
    Window window;
} Ov40Data;

typedef struct Ov40App {
    u8 filler_000[0x860];
    Ov40Data *data;
} Ov40App;

int ov40_022306C0(Window *window, String *string);
BOOL ov40_022371D4(void *a0, u32 mask);

void ov40_022371E4(Ov40App *app, int index) {
    Ov40Data *data = app->data;
    Window *window = &data->window;
    String *string;
    u16 species;
    u16 name[256];

    FillWindowPixelBuffer(window, 0);
    species = data->species[index];
    if (species == SPECIES_NONE) {
        ScheduleWindowCopyToVram(window);
        return;
    }
    string = String_New(0xFF, HEAP_ID_109);
    if (ov40_022371D4(data->unk158, 1 << data->unk1B0) == TRUE) {
        species = SPECIES_EGG;
    }
    GetSpeciesNameIntoArray(species, HEAP_ID_109, name);
    CopyU16ArrayToString(string, name);
    AddTextPrinterParameterizedWithColor(window, 0, string, ov40_022306C0(window, string), 6, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 13, 0), NULL);
    ScheduleWindowCopyToVram(window);
    String_Delete(string);
}
