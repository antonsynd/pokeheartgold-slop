	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02035F14
	.public sub_02035F4C
	.public sub_02035FA8
	.extern _0210F900
	.extern _021D4140
	.extern sub_02035900
	.extern sub_02035DD8
	.extern sub_02037594
	.extern sub_0203769C

	.text
	thumb_func_start sub_02035F14
sub_02035F14: ; 0x02035F14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #1
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	bne _02035F34
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02034F64
	add r4, r0, #0
_02035F34:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02035900
	ldr r0, _02035F48 ; =_0210F900
	mov r1, #4
	strb r1, [r0, #1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02035F48: .word _0210F900
	thumb_func_end sub_02035F14

	thumb_func_start sub_02035F4C
sub_02035F4C: ; 0x02035F4C
	push {r4, lr}
	mov r4, #0
	bl sub_0203769C
	cmp r0, #0
	bne _02035F62
	ldr r0, _02035F9C ; =_0210F900
	ldrb r0, [r0]
	cmp r0, #4
	beq _02035F6A
	pop {r4, pc}
_02035F62:
	ldr r0, _02035F9C ; =_0210F900
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02035F98
_02035F6A:
	ldr r0, _02035FA0 ; =_021D4140
	ldr r2, [r0, #8]
	ldr r0, _02035FA4 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #2
	bne _02035F7C
	mov r1, #0
	strb r1, [r2, r0]
	mov r4, #1
_02035F7C:
	ldr r0, _02035FA0 ; =_021D4140
	ldr r2, [r0, #8]
	ldr r0, _02035FA4 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #3
	bne _02035F8C
	mov r4, #1
	strb r4, [r2, r0]
_02035F8C:
	cmp r4, #0
	beq _02035F94
	bl sub_02035DD8
_02035F94:
	bl sub_02037594
_02035F98:
	pop {r4, pc}
	nop
_02035F9C: .word _0210F900
_02035FA0: .word _021D4140
_02035FA4: .word 0x000006AD
	thumb_func_end sub_02035F4C

	thumb_func_start sub_02035FA8
sub_02035FA8: ; 0x02035FA8
	ldr r1, _02035FD0 ; =_021D4140
	ldr r3, [r1, #8]
	ldr r1, _02035FD4 ; =0x000006AD
	ldrb r2, [r3, r1]
	cmp r2, #0
	bne _02035FBE
	cmp r0, #1
	bne _02035FBE
	mov r0, #3
	strb r0, [r3, r1]
	bx lr
_02035FBE:
	cmp r2, #1
	bne _02035FCC
	cmp r0, #0
	bne _02035FCC
	ldr r0, _02035FD4 ; =0x000006AD
	mov r1, #2
	strb r1, [r3, r0]
_02035FCC:
	bx lr
	nop
_02035FD0: .word _021D4140
_02035FD4: .word 0x000006AD
	thumb_func_end sub_02035FA8

