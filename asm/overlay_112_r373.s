#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1D70
	.public ov112_021F1DC0
	.public ov112_021F1EFC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1D70
ov112_021F1D70: ; 0x021F1D70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl Sprite_GetVramType
	add r4, r0, #0
	add r0, r6, #0
	bl Sprite_GetImageProxy
	add r1, r4, #0
	bl NNS_G2dGetImageLocation
	add r6, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	bl DC_FlushRange
	cmp r4, #1
	beq _021F1DA0
	cmp r4, #2
	beq _021F1DAC
	b _021F1DB8
_021F1DA0:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GX_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021F1DAC:
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r6, r5
	bl GXS_LoadOBJ
	pop {r3, r4, r5, r6, r7, pc}
_021F1DB8:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov112_021F1D70

	thumb_func_start ov112_021F1DC0
ov112_021F1DC0: ; 0x021F1DC0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	ldr r6, [r4, #0x68]
	ldr r5, [r4, #0x6c]
	cmp r0, #3
	bls _021F1DD6
	b _021F1EF0
_021F1DD6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F1DE2: ; jump table
	.short _021F1DEA - _021F1DE2 - 2 ; case 0
	.short _021F1E2A - _021F1DE2 - 2 ; case 1
	.short _021F1E8A - _021F1DE2 - 2 ; case 2
	.short _021F1EEA - _021F1DE2 - 2 ; case 3
_021F1DEA:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0xc
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0xc
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021F1EF4
_021F1E2A:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x14
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x14
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x15
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x16
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021F1EF4
_021F1E8A:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x17
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x17
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x18
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [r4, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0x19
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0x4f
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _021F1EF4
_021F1EEA:
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F1EF0:
	bl GF_AssertFail
_021F1EF4:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov112_021F1DC0

	thumb_func_start ov112_021F1EFC
ov112_021F1EFC: ; 0x021F1EFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021F1F14
	ldr r0, [r5, #0xc]
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	b _021F1F28
_021F1F14:
	ldr r0, [r5]
	cmp r0, #0
	beq _021F1F22
	ldr r0, [r5, #0xc]
	bl ManagedSprite_SetDrawFlag
	b _021F1F28
_021F1F22:
	ldr r0, [r5, #8]
	bl ManagedSprite_SetDrawFlag
_021F1F28:
	ldr r0, [r5, #4]
	sub r0, #0x32
	cmp r0, #1
	bhi _021F1F32
	mov r4, #0
_021F1F32:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ManagedSprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	thumb_func_end ov112_021F1EFC

