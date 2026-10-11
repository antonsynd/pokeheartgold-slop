	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221C6B4
	.public ov07_0221C6EC
	.extern ov07_0221BE20

	.text

	.text
	thumb_func_start ov07_0221C6B4
ov07_0221C6B4: ; 0x0221C6B4
	push {r3, r4}
	add r2, r0, #0
	mov r1, #1
	add r2, #0x8d
	strb r1, [r2]
	ldr r3, _0221C6E8 ; =gSystem
	lsl r2, r1, #9
	ldr r4, [r3, #0x44]
	tst r2, r4
	beq _0221C6E4
	add r2, r1, #0
	add r2, #0xff
	tst r2, r4
	beq _0221C6E4
	ldr r2, [r3, #0x48]
	lsl r1, r1, #0xa
	tst r1, r2
	beq _0221C6E4
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r1, #0
	add r0, #0x8d
	strb r1, [r0]
_0221C6E4:
	pop {r3, r4}
	bx lr
	.balign 4, 0
_0221C6E8: .word gSystem
	thumb_func_end ov07_0221C6B4

	thumb_func_start ov07_0221C6EC
ov07_0221C6EC: ; 0x0221C6EC
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0x8d
	strb r2, [r1]
	ldr r1, [r0, #0x18]
	add r1, r1, #4
	str r1, [r0, #0x18]
	ldr r1, _0221C708 ; =ov07_0221BE20
	add r0, #0xbc
	str r1, [r0]
	bx lr
	.balign 4, 0
_0221C708: .word ov07_0221BE20
	thumb_func_end ov07_0221C6EC

