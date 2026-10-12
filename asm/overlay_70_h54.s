#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238FF4
	.extern ov70_02239134
	.extern ov70_02239304
	.extern ov70_02239330
	.extern ov70_02239414
	.extern ov70_022394B8
	.extern ov70_02239614
	.extern ov70_02239B00
	.extern ov70_02240EF4
	.extern ov70_02241358
	.extern ov70_02245124

	.text

	.text
	thumb_func_start ov70_02238FF4
ov70_02238FF4: ; 0x02238FF4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_02239614
	ldr r2, _022390C8 ; =0x04000304
	ldr r0, _022390CC ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, [r4, #4]
	bl ov70_02239134
	add r0, r4, #0
	bl ov70_02239330
	add r0, r4, #0
	bl ov70_022394B8
	add r0, r4, #0
	bl ov70_02239414
	add r0, r4, #0
	bl ov70_02245124
	add r0, r4, #0
	bl ov70_02239B00
	ldr r1, _022390D0 ; =0x00000484
	mov r0, #0x17
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _02239072
	add r0, r4, #0
	bl ov70_02239304
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #1
	strh r0, [r4, #0x34]
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_02240EF4
	b _022390BC
_02239072:
	ldr r0, _022390D4 ; =0x000011FC
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022390A2
	ldr r0, _022390D8 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	beq _022390A2
	add r0, r4, #0
	bl ov70_02241358
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	b _022390B8
_022390A2:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
_022390B8:
	mov r0, #5
	str r0, [r4, #0x2c]
_022390BC:
	ldr r0, _022390D4 ; =0x000011FC
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_022390C8: .word 0x04000304
_022390CC: .word 0xFFFF7FFF
_022390D0: .word 0x00000484
_022390D4: .word 0x000011FC
_022390D8: .word 0x0400106C
	thumb_func_end ov70_02238FF4

