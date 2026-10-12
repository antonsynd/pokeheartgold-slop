	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022397E4
	.extern ov59_0223C798

	.text

	.text
	thumb_func_start ov59_022397E4
ov59_022397E4: ; 0x022397E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r1, #0x4a
	mov r6, #0
	lsl r1, r1, #2
	ldr r4, _0223989C ; =ov59_0223C798
	str r0, [sp, #0x14]
	add r5, r0, r1
	add r7, r6, #0
_022397F6:
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
	cmp r6, #0xb
	blt _022397F6
	mov r7, #0x6f
	lsl r7, r7, #2
	add r1, r7, #0
	ldr r0, [sp, #0x14]
	sub r1, #0x94
	add r0, r0, r1
	mov r4, #0
	mov r6, #6
	str r0, [sp, #0x18]
_02239826:
	add r0, r4, #0
	add r0, #0xb
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	lsr r3, r4, #0x1f
	str r3, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r5, [sp, #0x20]
	lsl r3, r4, #0x1f
	sub r3, r3, r5
	mov r5, #0x1f
	ror r3, r5
	ldr r5, [sp, #0x20]
	ldr r2, [sp, #0x18]
	add r5, r5, r3
	mov r3, #6
	mul r3, r5
	ldr r1, [sp, #0x1c]
	add r3, r3, #5
	lsl r3, r3, #0x18
	add r1, r2, r1
	ldr r0, [r0, #0x54]
	mov r2, #2
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r7, r7, #4
	add r6, r6, #2
	cmp r4, #7
	blt _02239826
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl YesNoPrompt_Create
	mov r2, #0x92
	ldr r1, [sp, #0x14]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0223989C: .word ov59_0223C798
	thumb_func_end ov59_022397E4

