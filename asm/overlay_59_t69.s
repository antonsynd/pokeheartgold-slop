	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B740
	.extern ov59_0223CA40

	.text

	.text
	thumb_func_start ov59_0223B740
ov59_0223B740: ; 0x0223B740
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r1, #0x6d
	mov r6, #0
	lsl r1, r1, #2
	ldr r4, _0223B7D4 ; =ov59_0223CA40
	str r0, [sp, #0x14]
	add r5, r0, r1
	add r7, r6, #0
_0223B752:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	ldr r0, [r0, #0x54]
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #4
	ble _0223B752
	mov r6, #0xc1
	add r1, r6, #0
	ldr r0, [sp, #0x14]
	add r1, #0xf3
	add r0, r0, r1
	mov r5, #0
	mov r4, #4
	str r0, [sp, #0x18]
_0223B780:
	add r0, r5, #5
	lsl r7, r0, #4
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x54]
	add r1, r1, r7
	mov r2, #2
	mov r3, #1
	bl AddWindowParameterized
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r0, r7
	bl FillWindowPixelBuffer
	add r5, r5, #1
	add r6, #0x20
	add r4, r4, #4
	cmp r5, #5
	blt _0223B780
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl YesNoPrompt_Create
	mov r2, #0x95
	ldr r1, [sp, #0x14]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B7D4: .word ov59_0223CA40
	thumb_func_end ov59_0223B740

