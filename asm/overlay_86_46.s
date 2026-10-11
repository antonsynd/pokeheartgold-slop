	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7598
	.extern ov86_021E6024
	.extern ov86_021E81DC

	.text

	.text
	thumb_func_start ov86_021E7598
ov86_021E7598: ; 0x021E7598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	mov r4, #0
_021E75A0:
	ldr r0, _021E75E4 ; =ov86_021E81DC
	mov r1, #7
	ldrb r6, [r0, r4]
	add r0, r6, #0
	bl _s32_div_f
	add r5, r1, #0
	add r0, r6, #0
	mov r1, #7
	bl _s32_div_f
	lsl r0, r0, #5
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021E75E8 ; =0x000F0100
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #2
	lsl r3, r5, #5
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #4
	add r2, #0x38
	add r3, #0x18
	bl ov86_021E6024
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x1a
	blo _021E75A0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E75E4: .word ov86_021E81DC
_021E75E8: .word 0x000F0100
	thumb_func_end ov86_021E7598

