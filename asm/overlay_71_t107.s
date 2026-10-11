	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022499A4
	.extern ov71_022476C4
	.extern ov71_022476D4
	.extern ov71_022476EC
	.extern ov71_02249A98
	.extern ov71_02249B64

	.text

	.text
	thumb_func_start ov71_022499A4
ov71_022499A4: ; 0x022499A4
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4]
	ldr r1, [r0, #0x2c]
	ldr r2, _02249A34 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _02249A38 ; =0xFFF50E00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	mov r1, #0xe2
	lsl r1, r1, #0xc
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x6c
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _02249A3C ; =0xFFFFF550
	add r1, #0x6e
	strh r2, [r1]
	ldr r1, _02249A40 ; =0x000134C4
	str r1, [r4, #0x3c]
	ldr r1, _02249A44 ; =0xFFFF4D56
	str r1, [r4, #0x40]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	mov r1, #2
	str r0, [r4, #0x68]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _02249A48 ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov71_022476EC
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r4, #0x54]
	mov r0, #0x4a
	lsl r0, r0, #0xa
	str r0, [r4, #0x44]
	mov r0, #0x63
	lsl r0, r0, #0xa
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x5c]
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov71_022476D4
	ldr r0, _02249A4C ; =ov71_02249B64
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_02249A34: .word 0xFFFFD870
_02249A38: .word 0xFFF50E00
_02249A3C: .word 0xFFFFF550
_02249A40: .word 0x000134C4
_02249A44: .word 0xFFFF4D56
_02249A48: .word 0xFFFFE000
_02249A4C: .word ov71_02249B64
	thumb_func_end ov71_022499A4

