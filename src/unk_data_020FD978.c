#include "global.h"

#include "map_object.h"

typedef BOOL (*MovementCmdStepFunc)(LocalMapObject *object);

extern BOOL MapObjectMovementCmd000_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd001_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd002_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd003_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd004_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd006_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd010_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd011_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd069_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd070_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd071_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd072_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd073_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd074_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd082_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd083_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd089_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd090_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd091_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd098_Step2(LocalMapObject *object);

const MovementCmdStepFunc gMovementCmdSteps_073[] = {
    MapObjectMovementCmd073_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_074[] = {
    MapObjectMovementCmd074_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_001[] = {
    MapObjectMovementCmd001_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_072[] = {
    MapObjectMovementCmd072_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_070[] = {
    MapObjectMovementCmd070_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_003[] = {
    MapObjectMovementCmd003_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_071[] = {
    MapObjectMovementCmd071_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_002[] = {
    MapObjectMovementCmd002_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_000[] = {
    MapObjectMovementCmd000_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_069[] = {
    MapObjectMovementCmd069_Step0,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_010[] = {
    MapObjectMovementCmd010_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_089[] = {
    MapObjectMovementCmd089_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_006[] = {
    MapObjectMovementCmd006_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_091[] = {
    MapObjectMovementCmd091_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_083[] = {
    MapObjectMovementCmd083_Step0,
    MapObjectMovementCmd082_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_004[] = {
    MapObjectMovementCmd004_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_011[] = {
    MapObjectMovementCmd011_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};
