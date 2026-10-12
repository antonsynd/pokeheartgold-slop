	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public HandleEndFade
	.extern _021D1034
	.extern sub_0201002C
	.extern sub_02010094
	.extern sub_020100C4

	.text
	thumb_func_start HandleEndFade
HandleEndFade: ; 0x0200FD1C
	push {r4, lr}
	mov r1, #0x53
	add r4, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	strh r2, [r4, r1]
	bl sub_0201002C
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0200FD4C
	add r0, r4, #0
	add r0, #0x14
	bl sub_02010094
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200FD4C
	ldr r0, _0200FD70 ; =_021D1034
	mov r1, #0
	strb r1, [r0, #0xe]
_0200FD4C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0200FD66
	add r0, r4, #0
	add r0, #0x44
	bl sub_02010094
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0200FD66
	ldr r0, _0200FD70 ; =_021D1034
	mov r1, #0
	strb r1, [r0, #0xf]
_0200FD66:
	add r0, r4, #0
	bl sub_020100C4
	pop {r4, pc}
	nop
_0200FD70: .word _021D1034
	thumb_func_end HandleEndFade

