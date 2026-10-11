	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_0226789C
	.public ov49_02267908
	.extern ov49_02265980
	.extern ov49_02265BE8
	.extern ov49_02265C40
	.extern ov49_0226A4D8
	.extern ov49_0226A508
	.extern ov49_0226A70C

    .text

	.text
	thumb_func_start ov49_0226789C
ov49_0226789C: ; 0x0226789C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0x96
	add r7, r1, #0
	add r5, r2, #0
	add r4, r7, r5
	lsl r3, r3, #4
	ldrb r6, [r4, r3]
	sub r3, r3, #4
	add r4, r7, r3
	ldrb r3, [r4, r5]
	str r0, [sp, #4]
	cmp r3, #0
	bne _022678FC
	mov r3, #0
	bl ov49_02265C40
	lsl r1, r6, #0xd
	str r0, [sp, #8]
	cmp r0, r1
	bne _022678D0
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	b _022678E8
_022678D0:
	cmp r6, #4
	beq _022678D8
	str r1, [sp, #8]
	b _022678E8
_022678D8:
	add r1, r7, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r5
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
_022678E8:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	bl ov49_02265BE8
	mov r0, #8
	strb r0, [r4, r5]
_022678FC:
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	strb r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0226789C

	thumb_func_start ov49_02267908
ov49_02267908: ; 0x02267908
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #0x14]
	ldr r0, [r0, #8]
	add r1, sp, #0x50
	str r2, [sp, #0x18]
	bl ov49_02259154
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _022679E6
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
_0226792A:
	ldr r1, [sp, #0x20]
	add r1, #0xd
	cmp r1, #0xf
	bls _02267934
	mov r1, #0xf
_02267934:
	ldr r0, _02267A04 ; =ov49_0226A4D8
	ldr r7, _02267A08 ; =ov49_0226A508
	str r0, [sp, #0x34]
	lsl r0, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, _02267A0C ; =0x00000968
	str r0, [sp, #0x28]
	add r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x30]
_02267950:
	ldr r0, [sp, #0x1c]
	ldr r6, _02267A10 ; =ov49_0226A70C
	add r5, r4, r0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	add r3, r6, r3
	bl ov49_02265980
	ldr r1, [sp, #0x34]
	add r0, sp, #0x50
	add r2, sp, #0x44
	bl VEC_Add
	add r0, sp, #0x44
	add r1, r7, #0
	add r2, sp, #0x38
	bl VEC_Add
	mov r0, #0x78
	mul r0, r5
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, r1, r0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_020182A8
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r0, r5
	ldr r0, _02267A14 ; =0x00000958
	strb r1, [r2, r0]
	ldr r0, [sp, #0x3c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r1, r0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	add r0, r0, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl ov49_0226540C
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, #0xc
	add r7, #0xc
	str r0, [sp, #0x34]
	cmp r4, #4
	blt _02267950
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _0226792A
_022679E6:
	ldr r2, _02267A18 ; =0x00000956
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r3, r2, #1
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	mov r0, #0
	strb r0, [r1, r3]
	sub r3, r2, #2
	strb r0, [r1, r3]
	add r2, r2, #1
	strb r0, [r1, r2]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02267A04: .word ov49_0226A4D8
_02267A08: .word ov49_0226A508
_02267A0C: .word 0x00000968
_02267A10: .word ov49_0226A70C
_02267A14: .word 0x00000958
_02267A18: .word 0x00000956
	thumb_func_end ov49_02267908

