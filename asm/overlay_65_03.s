#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221BFEC
	.public ov65_0221C08C
	.public ov65_0221C1C4
	.public ov65_0221C46C
	.public ov65_0221CE1C
	.public ov65_0221CE98
	.public ov65_0221CEB8
	.public ov65_0221D280
	.public ov65_0221D3B8
	.public ov65_0221D3E8
	.public ov65_0221D930
	.public ov65_0221FB90

	.text

	thumb_func_start ov65_0221C08C
ov65_0221C08C: ; 0x0221C08C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x34
	mov r1, #0x1a
	bl NARC_New
	add r4, r0, #0
	bl ov65_0221CE98
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl ov65_0221CEB8
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0221D280
	add r0, r5, #0
	bl ov65_0221C1C4
	add r0, r5, #0
	bl ov65_0221BFEC
	ldr r0, [r5, #8]
	ldr r0, [r0, #0x18]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, _0221C1AC ; =0x000003D9
	mov r1, #0
	mov r3, #0xa
	bl LoadUserFrameGfx2
	mov r1, #0
	str r1, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r2, _0221C1B0 ; =0x000003F7
	mov r3, #0xb
	bl LoadUserFrameGfx1
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221C1B4 ; =0x00000594
	ldr r3, [r5, r3]
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	bl ov65_0221D3B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0221D3E8
	add r0, r5, #0
	bl ov65_0221D930
	ldr r0, _0221C1B8 ; =0x00002224
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r5, #0
	bl ov65_0221C46C
	ldr r0, _0221C1BC ; =0x00002228
	mov r1, #6
	ldr r0, [r5, r0]
	add r2, r5, #0
	bl ov65_0221C46C
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0221C1C0 ; =ov65_0221CE1C
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	bl NARC_Delete
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0221C1AC: .word 0x000003D9
_0221C1B0: .word 0x000003F7
_0221C1B4: .word 0x00000594
_0221C1B8: .word 0x00002224
_0221C1BC: .word 0x00002228
_0221C1C0: .word ov65_0221CE1C
	thumb_func_end ov65_0221C08C

