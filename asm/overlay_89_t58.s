	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225AF10
	.extern ov89_0225CCD0

	.text

	.text
	thumb_func_start ov89_0225AF10
ov89_0225AF10: ; 0x0225AF10
	push {r3, r4, r5, lr}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, #0xff
	bne _0225AF1E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225AF1E:
	ldr r2, _0225AF70 ; =0x0000053C
	lsl r4, r1, #2
	add r5, r3, r2
	ldrb r1, [r5, r4]
	add r1, r1, #1
	strb r1, [r5, r4]
	add r1, r2, #1
	add r5, r3, r1
	ldrb r1, [r5, r4]
	add r1, r1, #1
	strb r1, [r5, r4]
	ldr r1, _0225AF74 ; =0x0000073C
	ldrb r5, [r3, r1]
	cmp r5, #0
	bne _0225AF6A
	add r5, r1, #1
	ldrb r5, [r3, r5]
	cmp r5, #0
	bne _0225AF6A
	add r4, r3, r4
	ldrb r2, [r4, r2]
	add r4, r1, #3
	ldrb r4, [r3, r4]
	lsl r5, r4, #1
	ldr r4, _0225AF78 ; =ov89_0225CCD0
	ldrsh r4, [r4, r5]
	cmp r2, r4
	blt _0225AF6A
	add r1, r1, #1
	strb r0, [r3, r1]
	add r3, #0xb0
	add r0, r3, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225AF6A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0225AF70: .word 0x0000053C
_0225AF74: .word 0x0000073C
_0225AF78: .word ov89_0225CCD0
	thumb_func_end ov89_0225AF10

