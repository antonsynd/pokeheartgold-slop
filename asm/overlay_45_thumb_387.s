#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EA4C
	.public ov45_0222EA78
	.public ov45_0222EAD4
	.public ov45_0222EB38
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_0222F7B0
	.extern ov45_0222F954
	.extern ov45_0222FB5C

	.text

	.text
	thumb_func_start ov45_0222EA4C
ov45_0222EA4C: ; 0x0222EA4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0222EA74 ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EA5E
	bl GF_AssertFail
_0222EA5E:
	ldr r0, _0222EA74 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	bl ov45_0222F954
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	nop
_0222EA74: .word _022577C0
	thumb_func_end ov45_0222EA4C

	thumb_func_start ov45_0222EA78
ov45_0222EA78: ; 0x0222EA78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	lsr r6, r0, #4
	add r5, r0, #0
	ldr r0, _0222EAD0 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EA92
	bl GF_AssertFail
_0222EA92:
	mov r4, #0
_0222EA94:
	ldr r0, _0222EAD0 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0
	bl ov45_0222FB5C
	mov r1, #0
	add r7, r0, #0
	mvn r1, r1
	cmp r7, r1
	beq _0222EAC4
	add r1, sp, #4
	bl ov45_0222EA4C
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	sub r0, r2, r5
	mov ip, r1
	mov r0, ip
	sbc r0, r6
	bge _0222EAC4
	add r5, r2, #0
	add r6, r1, #0
	str r7, [sp]
_0222EAC4:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0222EA94
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EAD0: .word _022577C0
	thumb_func_end ov45_0222EA78

	thumb_func_start ov45_0222EAD4
ov45_0222EAD4: ; 0x0222EAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	lsr r7, r0, #4
	add r6, r0, #0
	ldr r0, _0222EB34 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EAF0
	bl GF_AssertFail
_0222EAF0:
	mov r4, #0
_0222EAF2:
	ldr r0, _0222EB34 ; =_022577C0
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0
	bl ov45_0222FB5C
	mov r1, #0
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	beq _0222EB28
	ldr r1, [sp]
	cmp r5, r1
	beq _0222EB28
	add r1, sp, #8
	bl ov45_0222EA4C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	sub r0, r2, r6
	mov ip, r1
	mov r0, ip
	sbc r0, r7
	bge _0222EB28
	add r6, r2, #0
	add r7, r1, #0
	str r5, [sp, #4]
_0222EB28:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0222EAF2
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EB34: .word _022577C0
	thumb_func_end ov45_0222EAD4

	thumb_func_start ov45_0222EB38
ov45_0222EB38: ; 0x0222EB38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222EB6C ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EB48
	bl GF_AssertFail
_0222EB48:
	add r0, r4, #0
	bl ov45_0222F7B0
	bl ov45_02231C8C
	bl ov45_0222F74C
	cmp r0, #1
	bne _0222EB6A
	ldr r2, _0222EB6C ; =_022577C0
	ldr r1, _0222EB70 ; =0x0000012D
	ldr r3, [r2]
	strb r4, [r3, r1]
	ldr r2, [r2]
	mov r3, #0
	add r1, r1, #2
	strb r3, [r2, r1]
_0222EB6A:
	pop {r4, pc}
	.balign 4, 0
_0222EB6C: .word _022577C0
_0222EB70: .word 0x0000012D
	thumb_func_end ov45_0222EB38

