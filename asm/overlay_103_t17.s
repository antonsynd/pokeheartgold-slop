	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ECF68
	.extern _021EEB34
	.extern ov103_021ED2B8

	.text

	.text
	thumb_func_start ov103_021ECF68
ov103_021ECF68: ; 0x021ECF68
	push {r3, r4, lr}
	sub sp, #0x24
	ldr r2, _021ECFF8 ; =_021EEB34
	add r1, sp, #0xc
	ldrh r3, [r2]
	add r4, r0, #0
	strh r3, [r1]
	ldrh r3, [r2, #2]
	strh r3, [r1, #2]
	ldrh r3, [r2, #4]
	strh r3, [r1, #4]
	ldrh r3, [r2, #6]
	strh r3, [r1, #6]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	strh r3, [r1, #8]
	strh r2, [r1, #0xa]
	mov r1, #0x92
	ldr r2, [r4, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	str r1, [sp, #0x18]
	ldr r1, [r4, #0xc]
	ldr r1, [r1]
	str r1, [sp, #0x1c]
	bl ov103_021ED2B8
	add r1, sp, #0xc
	strb r0, [r1, #0x14]
	ldrb r0, [r1, #0x14]
	cmp r0, #4
	bne _021ECFD0
	mov r0, #5
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #9
	ldr r1, [r4, #0xc]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	mov r3, #0x12
	bl TouchscreenListMenu_Create
	mov r1, #0x91
	ldr r2, [r4, #0xc]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x24
	pop {r3, r4, pc}
_021ECFD0:
	mov r0, #0xb
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	mov r0, #9
	ldr r1, [r4, #0xc]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	add r1, sp, #0xc
	mov r3, #0x12
	bl TouchscreenListMenu_Create
	ldr r2, [r4, #0xc]
	mov r1, #0x91
	lsl r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x24
	pop {r3, r4, pc}
	nop
_021ECFF8: .word _021EEB34
	thumb_func_end ov103_021ECF68

