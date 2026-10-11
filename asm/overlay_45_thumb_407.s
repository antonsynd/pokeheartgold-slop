#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F028
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_0223021C
	.extern ov45_02230378
	.extern ov45_02230390
	.extern ov45_02230394

	.text

	.text
	thumb_func_start ov45_0222F028
ov45_0222F028: ; 0x0222F028
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0222F138 ; =_022577C0
	add r6, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F03A
	bl GF_AssertFail
_0222F03A:
	ldr r0, _0222F138 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	bl ov45_0223021C
	cmp r0, #1
	bne _0222F04C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222F04C:
	ldr r2, _0222F138 ; =_022577C0
	ldr r1, _0222F13C ; =0x0000069C
	ldr r0, [r2]
	ldrh r3, [r0, r1]
	cmp r3, #3
	beq _0222F05C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222F05C:
	mov r3, #0x4c
	add r5, r4, #0
	mul r5, r3
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe4
	str r4, [r3, r0]
	ldr r0, [r2]
	mov r7, #1
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xe0
	str r6, [r3, r0]
	ldr r0, [r2]
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xdc
	str r7, [r3, r0]
	ldr r0, [r2]
	mov r7, #0
	add r3, r0, r5
	add r0, r1, #0
	sub r0, #0xd8
	str r7, [r3, r0]
	ldr r2, [r2]
	sub r1, #0xe4
	add r0, r2, r1
	mov r1, #0x67
	lsl r1, r1, #2
	add r0, r0, r5
	add r1, r2, r1
	bl ov45_02230378
	ldr r0, _0222F138 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F140 ; =0x000005B8
	add r0, r1, r0
	add r0, r0, r5
	bl ov45_0223285C
	bl ov45_0222F74C
	cmp r0, #0
	bne _0222F0B8
	bl GF_AssertFail
_0222F0B8:
	ldr r1, _0222F138 ; =_022577C0
	mov r0, #0x4c
	add r5, r4, #0
	mul r5, r0
	ldr r1, [r1]
	mov r0, #1
	add r2, r1, r5
	ldr r1, _0222F144 ; =0x000005FC
	strh r0, [r2, r1]
	bl ov45_02232580
	ldr r1, _0222F138 ; =_022577C0
	mov r7, #6
	ldr r2, [r1]
	lsl r7, r7, #8
	add r2, r2, r5
	str r0, [r2, r7]
	ldr r2, [r1]
	ldr r0, _0222F148 ; =0x00000708
	add r3, r2, r5
	sub r2, r7, #2
	strh r0, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1]
	sub r2, #0x6c
	strh r4, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1]
	mov r4, #1
	sub r2, #0x6a
	strb r4, [r3, r2]
	ldr r2, [r1]
	mov r3, #0
	sub r0, #0x69
	strb r3, [r2, r0]
	ldr r4, [r1]
	sub r0, r7, #2
	add r1, r4, r5
	ldrh r0, [r1, r0]
	mov r1, #0x1e
	bl _s32_div_f
	add r3, r0, #0
	add r0, r7, #0
	sub r0, #0x18
	add r0, r4, r0
	add r0, r0, r5
	add r1, r6, #0
	mov r2, #1
	bl ov00_021E5CEC
	ldr r1, _0222F138 ; =_022577C0
	ldr r0, _0222F14C ; =ov45_02230390
	ldr r1, [r1]
	bl ov00_021E5CD0
	ldr r1, _0222F138 ; =_022577C0
	ldr r0, _0222F150 ; =ov45_02230394
	ldr r1, [r1]
	bl ov00_021E5CA0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222F138: .word _022577C0
_0222F13C: .word 0x0000069C
_0222F140: .word 0x000005B8
_0222F144: .word 0x000005FC
_0222F148: .word 0x00000708
_0222F14C: .word ov45_02230390
_0222F150: .word ov45_02230394
	thumb_func_end ov45_0222F028

