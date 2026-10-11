	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A880
	.public sub_0203A8A8
	.public sub_0203A8CC
	.extern _0210F91C
	.extern _021D4154
	.extern sub_0203A3B0
	.extern sub_0203A914

	.text
	thumb_func_start sub_0203A880
sub_0203A880: ; 0x0203A880
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	bl sub_02039998
	cmp r0, #0
	beq _0203A890
	mov r4, #1
_0203A890:
	mov r0, #7
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0xf0
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_0203A8CC
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_0203A880

	thumb_func_start sub_0203A8A8
sub_0203A8A8: ; 0x0203A8A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	bl sub_02039998
	cmp r0, #0
	beq _0203A8B8
	mov r4, #1
_0203A8B8:
	mov r0, #0x1e
	lsl r0, r0, #4
	str r0, [sp]
	mov r0, #0xf0
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0203A8CC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203A8A8

	thumb_func_start sub_0203A8CC
sub_0203A8CC: ; 0x0203A8CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02034DCC
	cmp r0, #0
	beq _0203A908
	ldr r0, _0203A90C ; =_021D4154
	ldr r0, [r0]
	cmp r0, #0
	beq _0203A8EC
	bl sub_0203A914
_0203A8EC:
	ldr r0, _0203A910 ; =_0210F91C
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0
	mov r1, #0x59
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0203A3B0
	ldr r1, _0203A90C ; =_021D4154
	str r0, [r1]
_0203A908:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0203A90C: .word _021D4154
_0203A910: .word _0210F91C
	thumb_func_end sub_0203A8CC

