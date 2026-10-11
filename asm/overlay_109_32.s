	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E6D84
	.extern ov109_021E78F4

	.text

	.text
	thumb_func_start ov109_021E6D84
ov109_021E6D84: ; 0x021E6D84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _021E6DB8 ; =ov109_021E78F4
	mov r6, #0
	add r5, #0x50
_021E6D90:
	ldr r0, [r7, #0x14]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #3
	blt _021E6D90
	ldr r0, [r7]
	bl YesNoPrompt_Create
	add r7, #0x8c
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6DB8: .word ov109_021E78F4
	thumb_func_end ov109_021E6D84

