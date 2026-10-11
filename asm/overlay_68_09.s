	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E5E48
	.extern ov68_021E7DFC

	.text

	.text
	thumb_func_start ov68_021E5E48
ov68_021E5E48: ; 0x021E5E48
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #4
	mov r1, #0x42
	bl FontID_Alloc
	add r5, r7, #0
	ldr r4, _021E5E90 ; =ov68_021E7DFC
	mov r6, #0
	add r5, #8
_021E5E5C:
	ldr r0, [r7, #4]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0xf
	blo _021E5E5C
	add r0, r7, #0
	add r0, #0x88
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x42
	bl YesNoPrompt_Create
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5E90: .word ov68_021E7DFC
	thumb_func_end ov68_021E5E48

