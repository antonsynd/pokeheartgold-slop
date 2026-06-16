#ifndef POKEHEARTGOLD_UNK_02097B78_INTERNAL_H
#define POKEHEARTGOLD_UNK_02097B78_INTERNAL_H

#include "global.h"

#include "unk_02097B78.h"

typedef struct LegendaryCinematicWork {
    LegendaryCinematicArgs *args; // 0x00
    u8 filler_04[0x418];          // 0x04
} LegendaryCinematicWork;         // 0x41C

typedef BOOL (*LegendaryCinematicFunc)(LegendaryCinematicWork *work);

BOOL ScriptCinematic_HoOh(LegendaryCinematicWork *work);
BOOL ScriptCinematic_Lugia(LegendaryCinematicWork *work);
BOOL ScriptCinematic_Arceus(LegendaryCinematicWork *work);

#endif // POKEHEARTGOLD_UNK_02097B78_INTERNAL_H
