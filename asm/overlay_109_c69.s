	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E75C8
	.extern ov109_021E7474
	.extern ov109_021E789C

	.text

	.text
	thumb_func_start ov109_021E75C8
ov109_021E75C8: ; 0x021E75C8
	push {r3, r4, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _021E763C ; =ov109_021E789C
	add r2, sp, #0xc
	ldrh r3, [r0]
	add r1, sp, #0xc
	strh r3, [r2]
	ldrh r3, [r0, #2]
	strh r3, [r2, #2]
	ldrh r3, [r0, #4]
	strh r3, [r2, #4]
	ldrh r3, [r0, #6]
	strh r3, [r2, #6]
	ldrh r3, [r0, #8]
	ldrh r0, [r0, #0xa]
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r3, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x1c]
	mov r0, #4
	strb r0, [r2, #0x14]
	mov r0, #0xb
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0xc]
	add r0, #0x80
	lsl r2, r2, #0x18
	ldr r0, [r0]
	lsr r2, r2, #0x18
	bl TouchscreenListMenu_Create
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	mov r3, #0
	bl ov109_021E7474
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_021E763C: .word ov109_021E789C
	thumb_func_end ov109_021E75C8

