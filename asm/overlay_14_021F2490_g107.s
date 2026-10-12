#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F4380
	.extern ov14_021F8174

    .text

	.text
	thumb_func_start ov14_021F4380
ov14_021F4380: ; 0x021F4380
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	mov r7, #0
	ldr r3, _021F43EC ; =ov14_021F8174
	str r0, [sp]
	add r4, r7, #0
	add r5, r0, #0
	add r2, sp, #4
	mov r6, #6
_021F4392:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F4392
	ldr r0, [r3]
	str r0, [r2]
_021F439E:
	add r6, sp, #4
	add r3, sp, #0x38
	mov r2, #6
_021F43A4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F43A4
	ldr r0, [r6]
	add r1, sp, #4
	str r0, [r3]
	mov r0, #0x34
	ldrsh r0, [r1, r0]
	add r1, r0, r4
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldr r0, _021F43F0 ; =0x0000C129
	ldr r1, [sp]
	add r0, r7, r0
	str r0, [sp, #0x4c]
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xbe
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r2, sp, #0x38
	bl SpriteSystem_NewSprite
	mov r1, #0x35
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r7, r7, #1
	add r4, #0x2e
	add r5, r5, #4
	cmp r7, #4
	blo _021F439E
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F43EC: .word ov14_021F8174
_021F43F0: .word 0x0000C129
	thumb_func_end ov14_021F4380

