	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020347A0
	.public sub_020347CC
	.public sub_02034818
	.extern _021D4130
	.extern sub_020346E8

	.text
	thumb_func_start sub_020347A0
sub_020347A0: ; 0x020347A0
	push {r3, r4}
	ldr r1, _020347C8 ; =_021D4130
	mov r0, #0
	ldr r4, [r1]
	mov r1, #0xe7
	add r3, r0, #0
	lsl r1, r1, #2
_020347AE:
	ldrb r2, [r4, r1]
	cmp r2, #2
	beq _020347B8
	cmp r2, #3
	bne _020347BA
_020347B8:
	add r0, r0, #1
_020347BA:
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, #8
	blt _020347AE
	pop {r3, r4}
	bx lr
	nop
_020347C8: .word _021D4130
	thumb_func_end sub_020347A0

	thumb_func_start sub_020347CC
sub_020347CC: ; 0x020347CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02034814 ; =_021D4130
	mov r5, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _02034810
	bl sub_02037454
	cmp r0, #0
	bne _020347E4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020347E4:
	mov r7, #0xe7
	ldr r6, _02034814 ; =_021D4130
	add r4, r5, #0
	lsl r7, r7, #2
_020347EC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_020373B4
	cmp r0, #0
	bne _0203480A
	ldr r0, [r6]
	add r0, r0, r4
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _0203480A
	add r0, r4, #0
	bl sub_020346E8
	mov r5, #1
_0203480A:
	add r4, r4, #1
	cmp r4, #8
	blt _020347EC
_02034810:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02034814: .word _021D4130
	thumb_func_end sub_020347CC

	thumb_func_start sub_02034818
sub_02034818: ; 0x02034818
	ldr r1, _02034848 ; =_021D4130
	ldr r3, [r1]
	cmp r3, #0
	bne _02034824
	mov r0, #0
	bx lr
_02034824:
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #1
	beq _02034838
	cmp r1, #2
	beq _02034838
	cmp r1, #3
	bne _02034844
_02034838:
	lsl r0, r0, #2
	add r1, r3, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
_02034844:
	mov r0, #0
	bx lr
	.balign 4, 0
_02034848: .word _021D4130
	thumb_func_end sub_02034818

