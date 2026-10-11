	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7860
	.extern ov86_021E781C
	.extern ov86_021E7EA8
	.extern ov86_021E7F94
	.extern ov86_021E7FE4

	.text

	.text
	thumb_func_start ov86_021E7860
ov86_021E7860: ; 0x021E7860
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E7898 ; =0x0000025A
	ldr r1, _021E789C ; =ov86_021E7FE4
	ldrh r4, [r5, r0]
	mov r0, #1
	ldr r2, _021E78A0 ; =ov86_021E7EA8
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x79
	str r0, [sp, #8]
	ldr r0, _021E78A4 ; =ov86_021E7F94
	add r3, r5, #0
	bl GridInputHandler_Create
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov86_021E781C
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E7898: .word 0x0000025A
_021E789C: .word ov86_021E7FE4
_021E78A0: .word ov86_021E7EA8
_021E78A4: .word ov86_021E7F94
	thumb_func_end ov86_021E7860

