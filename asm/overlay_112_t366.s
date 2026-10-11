#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1904
	.public ov112_021F194C
	.public ov112_021F196C
	.extern ov112_021FF304
	.extern ov112_021FF318
	.extern ov112_021FF330
	.extern ov112_021FF9B8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1904
ov112_021F1904: ; 0x021F1904
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #6
	blo _021F1916
	cmp r1, #0x10
	bhs _021F1916
	mov r1, #0
	b _021F1924
_021F1916:
	cmp r1, #0x10
	blo _021F1922
	cmp r1, #0x13
	bhs _021F1922
	mov r1, #1
	b _021F1924
_021F1922:
	mov r1, #2
_021F1924:
	cmp r2, #5
	bne _021F192E
	add r0, r1, #3
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_021F192E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r4, #4]
	add r1, r1, #3
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov112_021F1904

	thumb_func_start ov112_021F194C
ov112_021F194C: ; 0x021F194C
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #8
	blo _021F1958
	bl GF_AssertFail
_021F1958:
	ldr r0, _021F1968 ; =ov112_021FF9B8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl PlayBGM
	pop {r4, pc}
	.balign 4, 0
_021F1968: .word ov112_021FF9B8
	thumb_func_end ov112_021F194C

	thumb_func_start ov112_021F196C
ov112_021F196C: ; 0x021F196C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl SpriteSystem_Alloc
	str r0, [r5, #0x68]
	bl SpriteManager_New
	add r2, sp, #0x2c
	ldr r3, _021F19FC ; =ov112_021FF330
	str r0, [r5, #0x6c]
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r6, _021F1A00 ; =ov112_021FF304
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r4, #0
	str r0, [r3]
	mov r3, #0x20
	str r3, [sp, #0x18]
	ldr r0, [r5, #0x68]
	bl SpriteSystem_Init
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x6c]
	mov r2, #0x20
	bl SpriteSystem_InitSprites
	ldr r4, _021F1A04 ; =ov112_021FF318
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x6c]
	bl SpriteSystem_InitManagerWithCapacities
	ldr r0, [r5, #0x68]
	bl SpriteSystem_GetRenderer
	mov r2, #0x83
	mov r1, #0
	lsl r2, r2, #0xe
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F19FC: .word ov112_021FF330
_021F1A00: .word ov112_021FF304
_021F1A04: .word ov112_021FF318
	thumb_func_end ov112_021F196C

