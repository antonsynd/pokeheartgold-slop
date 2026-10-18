#include "global.h"

typedef struct Ov71BallPathState {
    u8 filler_00[0x44];
    fx32 orbitRadiusX;
    fx32 orbitRadiusY;
    fx32 orbitRadiusXStep;
    fx32 orbitRadiusYStep;
    fx32 targetOrbitRadiusX;
    fx32 targetOrbitRadiusY;
    fx32 scale;
    fx32 scaleStep;
    fx32 targetScale;
    int transitionFrames;
} Ov71BallPathState;

void ov71_0224A694(Ov71BallPathState *state, fx32 targetRadiusX, fx32 targetRadiusY, fx32 targetScale, int duration) {
    if (duration != 0) {
        state->orbitRadiusXStep = (targetRadiusX - state->orbitRadiusX) / duration;
        state->orbitRadiusYStep = (targetRadiusY - state->orbitRadiusY) / duration;
        state->scaleStep = (targetScale - state->scale) / duration;
        state->targetOrbitRadiusX = targetRadiusX;
        state->targetOrbitRadiusY = targetRadiusY;
        state->targetScale = targetScale;
        state->transitionFrames = duration;
    }
}
