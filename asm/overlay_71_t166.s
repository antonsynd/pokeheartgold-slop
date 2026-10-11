	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224BA64
	.public ov71_0224BAA0
	.extern ov71_022476EC

	.text

	.text
	thumb_func_start ov71_0224BA64
ov71_0224BA64: ; 0x0224BA64
	add r1, r0, #0
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0224BA86
	mov r0, #0x3a
	ldrsh r2, [r1, r0]
	mov r0, #0x3c
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strh r0, [r1, #0x3a]
	ldr r0, [r1, #0x40]
	sub r0, r0, #1
	str r0, [r1, #0x40]
	bne _0224BA86
	mov r0, #0x3e
	ldrsh r0, [r1, r0]
	strh r0, [r1, #0x3a]
_0224BA86:
	mov r0, #0x36
	ldrsh r2, [r1, r0]
	mov r0, #0x3a
	ldrsh r0, [r1, r0]
	ldr r3, _0224BA9C ; =ov71_022476EC
	add r0, r2, r0
	strh r0, [r1, #0x36]
	ldr r0, [r1, #0x14]
	add r1, #0x34
	bx r3
	nop
_0224BA9C: .word ov71_022476EC
	thumb_func_end ov71_0224BA64

	thumb_func_start ov71_0224BAA0
ov71_0224BAA0: ; 0x0224BAA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	beq _0224BAB8
	mov r0, #0x3a
	ldrsh r0, [r5, r0]
	sub r0, r1, r0
	add r1, r4, #0
	bl _s32_div_f
	strh r0, [r5, #0x3c]
	str r4, [r5, #0x40]
_0224BAB8:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_0224BAA0

