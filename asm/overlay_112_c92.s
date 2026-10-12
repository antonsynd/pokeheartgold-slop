#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA230
	.extern ov112_021FEC98
	.extern ov112_021FECAC
	.extern ov112_021FECC4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA230
ov112_021EA230: ; 0x021EA230
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021EA2B0 ; =ov112_021FECAC
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x9a
	bl SpriteSystem_Alloc
	ldr r1, _021EA2B4 ; =0x0001E528
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	ldr r7, _021EA2B8 ; =0x0001E52C
	add r2, sp, #0x14
	ldr r3, _021EA2BC ; =ov112_021FECC4
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021EA2C0 ; =ov112_021FEC98
	stmia r2!, {r0, r1}
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xd9
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021EA2B0: .word ov112_021FECAC
_021EA2B4: .word 0x0001E528
_021EA2B8: .word 0x0001E52C
_021EA2BC: .word ov112_021FECC4
_021EA2C0: .word ov112_021FEC98
	thumb_func_end ov112_021EA230

