#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1A40
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1A40
ov112_021F1A40: ; 0x021F1A40
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r6, [r5, #0x68]
	ldr r4, [r5, #0x6c]
	mov r1, #0
	str r1, [sp]
	mov r3, #0xc
	str r3, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0xd
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0xf
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0x10
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0x11
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0x13
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r3, #0x12
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov112_021F1A40

