#include "global.h"

#include "map_object.h"

typedef BOOL (*MovementCmdStepFunc)(LocalMapObject *object);

extern BOOL MapObjectMovementCmd005_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd007_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd008_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd009_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd012_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd013_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd014_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd015_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd016_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd017_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd018_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd019_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd020_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd021_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd022_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd023_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd024_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd025_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd026_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd027_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd028_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd029_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd030_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd031_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd032_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd033_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd034_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd035_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd036_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd037_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd038_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd039_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd040_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd040_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd041_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd042_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd043_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd044_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd045_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd046_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd047_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd048_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd049_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd050_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd051_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd052_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd053_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd054_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd055_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd056_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd057_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd058_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd059_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd060_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd061_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd062_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd063_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd064_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd064_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd065_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd066_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd067_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd067_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd068_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd068_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd075_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd075_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd076_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd076_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd077_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd078_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd079_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd080_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd081_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd082_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd082_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd084_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd085_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd086_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd087_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd088_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd090_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd090_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd092_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd092_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd093_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd094_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd095_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd096_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd097_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd098_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd098_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd098_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd099_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd100_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd100_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd101_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd101_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd102_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd102_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd103_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd104_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd105_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd105_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd105_Step4(LocalMapObject *object);
extern BOOL MapObjectMovementCmd105_Step6(LocalMapObject *object);
extern BOOL MapObjectMovementCmd105_Step8(LocalMapObject *object);
extern BOOL MapObjectMovementCmd106_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd106_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd106_Step4(LocalMapObject *object);
extern BOOL MapObjectMovementCmd106_Step6(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step10(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step12(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step4(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step6(LocalMapObject *object);
extern BOOL MapObjectMovementCmd107_Step8(LocalMapObject *object);
extern BOOL MapObjectMovementCmd108_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd108_Step1(LocalMapObject *object);
extern BOOL MapObjectMovementCmd108_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd109_Step12(LocalMapObject *object);
extern BOOL MapObjectMovementCmd110_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step0(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step10(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step14(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step16(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step18(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step2(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step4(LocalMapObject *object);
extern BOOL MapObjectMovementCmd111_Step6(LocalMapObject *object);
extern BOOL MapObjectMovementCmd112_Step0(LocalMapObject *object);

const MovementCmdStepFunc gMovementCmdSteps_060[] = {
    MapObjectMovementCmd060_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_064[] = {
    MapObjectMovementCmd064_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_096[] = {
    MapObjectMovementCmd096_Step0,
    MapObjectMovementCmd098_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_097[] = {
    MapObjectMovementCmd097_Step0,
    MapObjectMovementCmd098_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_090[] = {
    MapObjectMovementCmd090_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_098[] = {
    MapObjectMovementCmd098_Step0,
    MapObjectMovementCmd098_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_099[] = {
    MapObjectMovementCmd099_Step0,
    MapObjectMovementCmd098_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_012[] = {
    MapObjectMovementCmd012_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_013[] = {
    MapObjectMovementCmd013_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_014[] = {
    MapObjectMovementCmd014_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_015[] = {
    MapObjectMovementCmd015_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_009[] = {
    MapObjectMovementCmd009_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_017[] = {
    MapObjectMovementCmd017_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_018[] = {
    MapObjectMovementCmd018_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_019[] = {
    MapObjectMovementCmd019_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_020[] = {
    MapObjectMovementCmd020_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_021[] = {
    MapObjectMovementCmd021_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_022[] = {
    MapObjectMovementCmd022_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_023[] = {
    MapObjectMovementCmd023_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_005[] = {
    MapObjectMovementCmd005_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_085[] = {
    MapObjectMovementCmd085_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_086[] = {
    MapObjectMovementCmd086_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_087[] = {
    MapObjectMovementCmd087_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_024[] = {
    MapObjectMovementCmd024_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_025[] = {
    MapObjectMovementCmd025_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_026[] = {
    MapObjectMovementCmd026_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_027[] = {
    MapObjectMovementCmd027_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_028[] = {
    MapObjectMovementCmd028_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_029[] = {
    MapObjectMovementCmd029_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_104[] = {
    MapObjectMovementCmd104_Step0,
    MapObjectMovementCmd102_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_031[] = {
    MapObjectMovementCmd031_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_079[] = {
    MapObjectMovementCmd079_Step0,
    MapObjectMovementCmd076_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_033[] = {
    MapObjectMovementCmd033_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_052[] = {
    MapObjectMovementCmd052_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_035[] = {
    MapObjectMovementCmd035_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_051[] = {
    MapObjectMovementCmd051_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_037[] = {
    MapObjectMovementCmd037_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_078[] = {
    MapObjectMovementCmd078_Step0,
    MapObjectMovementCmd076_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_039[] = {
    MapObjectMovementCmd039_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_050[] = {
    MapObjectMovementCmd050_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_041[] = {
    MapObjectMovementCmd041_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_042[] = {
    MapObjectMovementCmd042_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_043[] = {
    MapObjectMovementCmd043_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_044[] = {
    MapObjectMovementCmd044_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_045[] = {
    MapObjectMovementCmd045_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_046[] = {
    MapObjectMovementCmd046_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_049[] = {
    MapObjectMovementCmd049_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_102[] = {
    MapObjectMovementCmd102_Step0,
    MapObjectMovementCmd102_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_077[] = {
    MapObjectMovementCmd077_Step0,
    MapObjectMovementCmd076_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_048[] = {
    MapObjectMovementCmd048_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_047[] = {
    MapObjectMovementCmd047_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_076[] = {
    MapObjectMovementCmd076_Step0,
    MapObjectMovementCmd076_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_053[] = {
    MapObjectMovementCmd053_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_054[] = {
    MapObjectMovementCmd054_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_081[] = {
    MapObjectMovementCmd081_Step0,
    MapObjectMovementCmd082_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_057[] = {
    MapObjectMovementCmd057_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_058[] = {
    MapObjectMovementCmd058_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_059[] = {
    MapObjectMovementCmd059_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_008[] = {
    MapObjectMovementCmd008_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_093[] = {
    MapObjectMovementCmd093_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_094[] = {
    MapObjectMovementCmd094_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_095[] = {
    MapObjectMovementCmd095_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_016[] = {
    MapObjectMovementCmd016_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_061[] = {
    MapObjectMovementCmd061_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_062[] = {
    MapObjectMovementCmd062_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_063[] = {
    MapObjectMovementCmd063_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_084[] = {
    MapObjectMovementCmd084_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_065[] = {
    MapObjectMovementCmd065_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_066[] = {
    MapObjectMovementCmd066_Step0,
    MapObjectMovementCmd064_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_067[] = {
    MapObjectMovementCmd067_Step0,
    MapObjectMovementCmd067_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_068[] = {
    MapObjectMovementCmd068_Step0,
    MapObjectMovementCmd068_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_030[] = {
    MapObjectMovementCmd030_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_032[] = {
    MapObjectMovementCmd032_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_034[] = {
    MapObjectMovementCmd034_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_036[] = {
    MapObjectMovementCmd036_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_038[] = {
    MapObjectMovementCmd038_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_040[] = {
    MapObjectMovementCmd040_Step0,
    MapObjectMovementCmd040_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_101[] = {
    MapObjectMovementCmd101_Step0,
    MapObjectMovementCmd101_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_103[] = {
    MapObjectMovementCmd103_Step0,
    MapObjectMovementCmd075_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_075[] = {
    MapObjectMovementCmd075_Step0,
    MapObjectMovementCmd075_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_100[] = {
    MapObjectMovementCmd100_Step0,
    MapObjectMovementCmd100_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_007[] = {
    MapObjectMovementCmd007_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_055[] = {
    MapObjectMovementCmd055_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_080[] = {
    MapObjectMovementCmd080_Step0,
    MapObjectMovementCmd082_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_056[] = {
    MapObjectMovementCmd056_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_082[] = {
    MapObjectMovementCmd082_Step0,
    MapObjectMovementCmd082_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_092[] = {
    MapObjectMovementCmd092_Step0,
    MapObjectMovementCmd092_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_088[] = {
    MapObjectMovementCmd088_Step0,
    MapObjectMovementCmd090_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_110[] = {
    MapObjectMovementCmd110_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd108_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_108[] = {
    MapObjectMovementCmd108_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd108_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_112[] = {
    MapObjectMovementCmd112_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd112_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd112_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_106[] = {
    MapObjectMovementCmd106_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd106_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd106_Step4,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd106_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_105[] = {
    MapObjectMovementCmd105_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd105_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd105_Step4,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd105_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd105_Step8,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_107[] = {
    MapObjectMovementCmd107_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step4,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step8,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step10,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step12,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_109[] = {
    MapObjectMovementCmd107_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step4,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step8,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd107_Step10,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd109_Step12,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};

const MovementCmdStepFunc gMovementCmdSteps_111[] = {
    MapObjectMovementCmd111_Step0,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step2,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step4,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step6,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step10,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step10,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step14,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step16,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd111_Step18,
    MapObjectMovementCmd108_Step1,
    MapObjectMovementCmd098_Step2,
};
