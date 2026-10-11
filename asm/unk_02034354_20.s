	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020348F0
	.public sub_02034960
	.public sub_02034A20
	.extern _021D4130
	.extern sub_0203484C

	.text
	thumb_func_start sub_020348F0
sub_020348F0: ; 0x020348F0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r4, #0
	add r6, r4, #0
_020348F8:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	beq _0203494C
	ldr r0, _02034958 ; =_021D4130
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203494C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	beq _0203494C
	ldr r0, _02034958 ; =_021D4130
	ldr r1, _0203495C ; =0x0000039D
	ldr r0, [r0]
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0203494C
	add r1, r6, #0
	add r2, r0, r5
_02034934:
	add r3, r2, #0
	add r3, #0x74
	ldrb r0, [r2, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	beq _02034944
	mov r0, #0
	pop {r4, r5, r6, pc}
_02034944:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x20
	blt _02034934
_0203494C:
	add r4, r4, #1
	add r5, #0x68
	cmp r4, #7
	blt _020348F8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02034958: .word _021D4130
_0203495C: .word 0x0000039D
	thumb_func_end sub_020348F0

	thumb_func_start sub_02034960
sub_02034960: ; 0x02034960
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02034A18 ; =_021D4130
	add r6, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _02034A14
	cmp r7, #2
	beq _02034980
	bl sub_0203769C
	bl sub_020378AC
	mov r1, #1
	and r0, r1
	str r0, [sp]
_02034980:
	mov r4, #0
	bl sub_02037454
	cmp r0, #0
	ble _02034A14
	add r5, r4, #0
_0203498C:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	beq _02034A08
	ldr r0, _02034A18 ; =_021D4130
	mov r1, #0xe7
	ldr r0, [r0]
	lsl r1, r1, #2
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02034A08
	cmp r7, #0
	bne _020349D2
	add r0, r4, #0
	bl sub_020378AC
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _02034A08
	ldr r0, _02034A18 ; =_021D4130
	mov r1, #0xdb
	ldr r0, [r0]
	lsl r1, r1, #2
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0xdb
	lsl r1, r1, #2
	strh r2, [r0, r1]
	b _02034A08
_020349D2:
	cmp r7, #1
	bne _020349F8
	add r0, r4, #0
	bl sub_020378AC
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _02034A08
	ldr r0, _02034A18 ; =_021D4130
	ldr r1, _02034A1C ; =0x0000036E
	ldr r0, [r0]
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	ldr r1, _02034A1C ; =0x0000036E
	strh r2, [r0, r1]
	b _02034A08
_020349F8:
	mov r1, #0x37
	add r0, r0, r5
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0x37
	lsl r1, r1, #4
	strh r2, [r0, r1]
_02034A08:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02037454
	cmp r4, r0
	blt _0203498C
_02034A14:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034A18: .word _021D4130
_02034A1C: .word 0x0000036E
	thumb_func_end sub_02034960

	thumb_func_start sub_02034A20
sub_02034A20: ; 0x02034A20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_0202C6F4
	str r0, [sp, #4]
	mov r4, #0
	bl sub_02037454
	cmp r0, #0
	ble _02034A88
	add r5, r4, #0
_02034A38:
	add r0, r4, #0
	bl sub_0203484C
	add r1, r0, #0
	beq _02034A7C
	add r0, r7, #0
	add r2, sp, #8
	bl sub_0203A084
	cmp r0, #0
	beq _02034A52
	cmp r0, #1
	bne _02034A7C
_02034A52:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02034A5C
	bl GF_AssertFail
_02034A5C:
	ldr r0, _02034AB8 ; =_021D4130
	mov r2, #0xdb
	ldr r0, [r0]
	ldr r3, _02034ABC ; =0x0000036E
	add r6, r0, r5
	mov r0, #0x37
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	lsl r2, r2, #2
	str r0, [sp]
	ldrh r2, [r6, r2]
	ldrh r3, [r6, r3]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_0202C4F0
_02034A7C:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02037454
	cmp r4, r0
	blt _02034A38
_02034A88:
	mov r3, #0xdb
	mov r2, #0
	lsl r3, r3, #2
	ldr r6, _02034AB8 ; =_021D4130
	add r1, r2, #0
	add r0, r2, #0
	add r4, r3, #2
	add r5, r3, #4
_02034A98:
	ldr r7, [r6]
	add r2, r2, #1
	add r7, r7, r1
	strh r0, [r7, r3]
	ldr r7, [r6]
	add r7, r7, r1
	strh r0, [r7, r4]
	ldr r7, [r6]
	add r7, r7, r1
	add r1, r1, #6
	strh r0, [r7, r5]
	cmp r2, #8
	blt _02034A98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02034AB8: .word _021D4130
_02034ABC: .word 0x0000036E
	thumb_func_end sub_02034A20

