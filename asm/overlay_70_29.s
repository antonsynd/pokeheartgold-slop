#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238B54
	.public ov70_02239330
	.public ov70_02239414
	.public ov70_02239C6C
	.public ov70_02239CF8
	.public ov70_02245240
	.public ov70_02245242

	.text

	thumb_func_start ov70_02239330
ov70_02239330: ; 0x02239330
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #4]
	mov r0, #0x64
	mov r1, #0x3d
	bl NARC_New
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3d
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #4
	add r3, r2, #0
	add r6, r0, #0
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3d
	bl LoadFontPal1
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl LoadUserFrameGfx2
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl LoadUserFrameGfx1
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x10
	add r2, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x27
	add r2, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x26
	add r2, r4, #0
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r5, #0
	bl ov70_02239C6C
	ldrh r0, [r5, #0x34]
	cmp r0, #0
	beq _02239402
	add r0, r5, #0
	bl ov70_02239CF8
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	b _0223940A
_02239402:
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
_0223940A:
	add r0, r6, #0
	bl NARC_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02239330

	thumb_func_start ov70_02239414
ov70_02239414: ; 0x02239414
	push {r4, lr}
	sub sp, #0x80
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	sub r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xd2
	str r1, [sp, #0xc]
	mov r0, #1
	lsl r2, r2, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, r2]
	add r3, r1, #0
	str r0, [sp, #0x14]
	add r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r2, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r4, r2]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x2c
	str r1, [sp, #0x28]
	bl CreateSpriteResourcesHeader
	add r0, sp, #0x50
	add r1, r4, #0
	add r2, sp, #0x2c
	mov r3, #1
	bl ov70_02238B54
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r1, [r4, r0]
	lsl r2, r1, #2
	ldr r1, _0223949C ; =ov70_02245240
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #0x58]
	ldrh r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _022394A0 ; =ov70_02245242
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0x5c]
	add r0, sp, #0x50
	bl Sprite_CreateAffine
	ldr r1, _022394A4 ; =0x00000DCC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, _022394A4 ; =0x00000DCC
	mov r1, #0x2b
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x80
	pop {r4, pc}
	.balign 4, 0
_0223949C: .word ov70_02245240
_022394A0: .word ov70_02245242
_022394A4: .word 0x00000DCC
	thumb_func_end ov70_02239414

