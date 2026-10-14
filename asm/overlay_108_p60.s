	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E7ADC

	.text

	.text
	thumb_func_start ov108_021E7ADC
ov108_021E7ADC: ; 0x021E7ADC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x10]
	mov r0, #0
	mov r5, #1
	str r0, [sp, #0x1c]
_021E7AE8:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl _s32_div_f
	lsl r1, r0, #3
	add r0, r0, r1
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #3
	add r0, r1, r0
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021E7B12:
	ldr r0, [sp, #0x14]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_021E7B1A:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	lsl r2, r5, #0x10
	str r0, [sp, #0xc]
	mov r0, #0xd
	add r3, r7, r4
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #5
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	add r5, r5, #1
	bl FillBgTilemapRect
	add r4, r4, #1
	cmp r4, #8
	blt _021E7B1A
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #8
	blt _021E7B12
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _021E7AE8
	mov r1, #0xd
	ldr r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov108_021E7ADC

