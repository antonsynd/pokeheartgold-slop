	.include "asm/macros.inc"
	.include "unk_02034354.inc"
	.include "global.inc"
	.public sub_020347CC
	.extern _021D4130
	.extern sub_020346E8

	.text
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

