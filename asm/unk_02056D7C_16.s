	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_020573F0
	.extern _021D41C4
	.extern sub_02057384
	.extern sub_02057550
	.extern sub_02057D74

	.text
	thumb_func_start sub_020573F0
sub_020573F0: ; 0x020573F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02057450 ; =_021D41C4
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0205744E
	add r0, r4, #0
	bl sub_02057384
	ldr r0, _02057450 ; =_021D41C4
	ldr r0, [r0]
	add r0, #0xf1
	strb r4, [r0]
	ldr r4, [r5, #0x40]
	cmp r4, #0
	beq _02057420
	bl sub_0203769C
	ldr r1, _02057450 ; =_021D41C4
	lsl r0, r0, #2
	ldr r1, [r1]
	add r0, r1, r0
	str r4, [r0, #4]
_02057420:
	bl sub_02037474
	cmp r0, #0
	beq _0205743A
	bl sub_0203769C
	cmp r0, #0
	bne _0205743A
	ldr r1, _02057450 ; =_021D41C4
	mov r0, #0
	ldr r1, [r1]
	bl sub_02057550
_0205743A:
	bl sub_02037474
	cmp r0, #0
	beq _0205744E
	bl sub_0203769C
	cmp r0, #0
	bne _0205744E
	bl sub_02057D74
_0205744E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02057450: .word _021D41C4
	thumb_func_end sub_020573F0

