#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2A9C
	.public ov14_021F2AC8
	.extern ov14_021F80A8
	.extern ov14_021F80D4
	.extern ov14_021F80EC

    .text

	.text
	thumb_func_start ov14_021F2A9C
ov14_021F2A9C: ; 0x021F2A9C
	push {r3, lr}
	cmp r2, #1
	bne _021F2AB4
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
_021F2AB4:
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021F2A9C

	thumb_func_start ov14_021F2AC8
ov14_021F2AC8: ; 0x021F2AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021F2B5C ; =ov14_021F80D4
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0xa
	bl SpriteSystem_Alloc
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	mov r7, #0xbe
	lsl r7, r7, #2
	add r2, sp, #0x14
	ldr r3, _021F2B60 ; =ov14_021F80EC
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021F2B64 ; =ov14_021F80A8
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
	mov r2, #0x67
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	sub r0, r7, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_GetRenderer
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2B5C: .word ov14_021F80D4
_021F2B60: .word ov14_021F80EC
_021F2B64: .word ov14_021F80A8
	thumb_func_end ov14_021F2AC8

