#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F3B5C
	.extern ov14_021F8070
	.extern ov14_021F8078

    .text

	.text
	thumb_func_start ov14_021F3B5C
ov14_021F3B5C: ; 0x021F3B5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xca
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021F3BB6
	ldr r6, _021F3BB8 ; =ov14_021F8078
	ldr r4, _021F3BBC ; =ov14_021F8070
	mov r7, #0
_021F3B80:
	add r2, sp, #0
	mov r1, #2
	ldrsh r1, [r2, r1]
	mov r2, #0
	ldrsb r2, [r4, r2]
	add r3, sp, #0
	mov r0, #0x3f
	add r1, r1, r2
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r3, #0
	ldrsb r3, [r6, r3]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	add r2, r2, r3
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r7, #8
	blo _021F3B80
_021F3BB6:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F3BB8: .word ov14_021F8078
_021F3BBC: .word ov14_021F8070
	thumb_func_end ov14_021F3B5C

