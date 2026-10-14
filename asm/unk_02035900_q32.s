	.include "macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020369CC
	.extern _021D4140
	.extern sub_02035FF0
	.extern sub_0203772C

	.text
	thumb_func_start sub_020369CC
sub_020369CC: ; 0x020369CC
	push {r4, r5, r6, lr}
	ldr r3, _02036A8C ; =_021D4140
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _02036A90 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _02036A88
	ldr r0, [r3, #8]
	add r2, #0x32
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _020369FA
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _02036A88
_020369FA:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02035FF0
	cmp r0, #1
	bne _02036A88
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203772C
	add r6, r0, #0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	ldrb r0, [r4]
	ldr r2, _02036A94 ; =0x00000694
	cmp r0, #0xff
	bne _02036A38
	ldr r0, _02036A8C ; =_021D4140
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	mvn r3, r3
	and r0, r3
	b _02036A44
_02036A38:
	ldr r0, _02036A8C ; =_021D4140
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	orr r0, r3
_02036A44:
	strh r0, [r1, r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _02036A88
	cmp r0, #2
	beq _02036A88
	cmp r0, #0xe
	beq _02036A88
	ldr r1, _02036A8C ; =_021D4140
	ldr r2, _02036A98 ; =0x0000069E
	ldr r1, [r1, #8]
	add r3, r1, r5
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _02036A68
	mov r2, #1
	tst r0, r2
	bne _02036A88
_02036A68:
	ldr r3, _02036A9C ; =0x0000051C
	mov r0, #0xc
	add r1, r1, r3
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	sub r2, r6, #1
	add r3, #0xcb
	bl sub_02033AF0
	ldr r0, _02036A8C ; =_021D4140
	mov r2, #0
	ldr r0, [r0, #8]
	add r1, r0, r5
	ldr r0, _02036A98 ; =0x0000069E
	strb r2, [r1, r0]
_02036A88:
	pop {r4, r5, r6, pc}
	nop
_02036A8C: .word _021D4140
_02036A90: .word 0x0000066C
_02036A94: .word 0x00000694
_02036A98: .word 0x0000069E
_02036A9C: .word 0x0000051C
	thumb_func_end sub_020369CC

