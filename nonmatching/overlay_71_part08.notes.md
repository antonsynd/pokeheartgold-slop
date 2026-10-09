# overlay_71 part 8 (ov71_0224BABC)

- Passes (2000 of 2000). Started from the Platinum twin BallOpenState_Task (trade_sequence/receive_phase.c); the twin's call to
  BrightnessAnimState_Start was renamed to ov71_022480C0 by the matcher, but the asm calls ov71_0224B910(phase, 0, 16, 8).
- Layout of the ball-opening state, from the asm: +4 sub state, +8 phase, +0xC timer, +0x14 model, +0x18 current alpha (fx), +0x1C alpha
  step, +0x20 alpha frames left, +0x24 position (VecFx32), +0x30 vertical velocity. Constants: rotation speed 6 << 6 over 30 frames,
  gravity 30 << 6, floor y -0xB000, rest y 19 * FX32_ONE, sound effect SEQ_SE_DP_KON.
