	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222C148
	.extern ov43_0222AB20
	.extern ov43_0222AD00
	.extern ov43_0222C550
	.extern ov43_0222C620
	.extern ov43_0222C630
	.extern ov43_0222ED9C

	.text

	.text
	thumb_func_start ov43_0222C148
ov43_0222C148: ; 0x0222C148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	str r3, [sp, #0x18]
	bl sub_0202C6F4
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl ov43_0222C620
	str r0, [sp, #0x20]
	add r7, r5, #0
	ldr r1, [sp, #0x20]
	add r7, #0x18
	ldrb r1, [r7, r1]
	ldr r0, [sp, #0x1c]
	mov r2, #8
	bl sub_0202C090
	str r0, [sp, #0x24]
	add r0, sp, #0x28
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r1, _0222C220 ; =ov43_0222ED9C
	add r0, sp, #0x28
	ldrh r2, [r1, #4]
	strh r2, [r0]
	ldrh r2, [r1, #6]
	strh r2, [r0, #2]
	ldrh r2, [r1, #8]
	strh r2, [r0, #4]
	ldrh r2, [r1, #0xa]
	strh r2, [r0, #6]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, [sp, #0x24]
	cmp r0, #2
	bne _0222C1AC
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x34]
	b _0222C1B4
_0222C1AC:
	add r0, r6, #0
	add r0, #0xe4
	ldr r0, [r0]
	str r0, [sp, #0x34]
_0222C1B4:
	ldr r0, [r4]
	mov r1, #4
	str r0, [sp, #0x38]
	add r0, sp, #0x28
	strb r1, [r0, #0x14]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, _0222C224 ; =ov43_0222C630
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r2, [r5]
	ldr r0, [r4, #0x5c]
	lsl r2, r2, #0x18
	add r1, sp, #0x28
	lsr r2, r2, #0x18
	mov r3, #0xd
	bl TouchscreenListMenu_CreateWithCallback
	add r1, r6, #0
	add r1, #0xec
	str r0, [r1]
	ldr r2, [sp, #0x20]
	ldr r1, [r5, #4]
	ldrb r2, [r7, r2]
	ldr r3, [sp, #0x18]
	add r0, r4, #0
	bl ov43_0222AB20
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xc
	bl ov43_0222C550
	add r0, r4, #0
	mov r1, #0
	bl ov43_0222AD00
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #8
	mov r2, #0
	mov r3, #0x3d
	bl StartBrightnessTransition
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C220: .word ov43_0222ED9C
_0222C224: .word ov43_0222C630
	thumb_func_end ov43_0222C148

