#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F898
	.public ov45_0222F8D8
	.public ov45_0222F8FC
	.public ov45_0222F928
	.extern ov45_0222FB24

	.text

	.text
	thumb_func_start ov45_0222F898
ov45_0222F898: ; 0x0222F898
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	mov r2, #0
	add r4, r0, #0
	add r6, r3, #0
	bl ov45_0222FB24
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _0222F8B4
	bl GF_AssertFail
_0222F8B4:
	ldr r2, [r4, #0x28]
	ldr r5, [r4, #0x24]
	add r4, r2, #0
	mul r4, r7
	cmp r2, r6
	bls _0222F8CA
	add r0, r5, r4
	mov r1, #0
	bl memset
	b _0222F8CC
_0222F8CA:
	add r6, r2, #0
_0222F8CC:
	ldr r1, [sp]
	add r0, r5, r4
	add r2, r6, #0
	bl memcpy
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov45_0222F898

	thumb_func_start ov45_0222F8D8
ov45_0222F8D8: ; 0x0222F8D8
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov45_0222FB24
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222F8F0
	bl GF_AssertFail
_0222F8F0:
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x24]
	add r1, r0, #0
	mul r1, r4
	add r0, r2, r1
	pop {r3, r4, r5, pc}
	thumb_func_end ov45_0222F8D8

	thumb_func_start ov45_0222F8FC
ov45_0222F8FC: ; 0x0222F8FC
	push {r3, r4, r5, lr}
	mov r2, #0
	add r5, r0, #0
	bl ov45_0222FB24
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222F914
	bl GF_AssertFail
_0222F914:
	ldr r2, [r5, #0x28]
	ldr r1, [r5, #0x24]
	add r0, r2, #0
	mul r0, r4
	add r0, r1, r0
	mov r1, #0
	bl memset
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov45_0222F8FC

	thumb_func_start ov45_0222F928
ov45_0222F928: ; 0x0222F928
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	bl ov45_0222FB24
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _0222F942
	bl GF_AssertFail
_0222F942:
	mov r0, #0xc
	mul r0, r6
	add r2, r5, r0
	ldmia r4!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	pop {r4, r5, r6, pc}
	thumb_func_end ov45_0222F928

