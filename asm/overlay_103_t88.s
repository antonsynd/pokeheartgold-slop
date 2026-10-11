	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE824
	.extern ov103_021EE784
	.extern ov103_021EE7DC

	.text

	.text
	thumb_func_start ov103_021EE824
ov103_021EE824: ; 0x021EE824
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	bl ov103_021EE784
	mov r0, #0x8a
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #9
	bl NewString_ReadMsgData
	mov r1, #0x8b
	ldr r2, [r5, #0xc]
	lsl r1, r1, #2
	add r4, r0, #0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl ov103_021EE7DC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EE824

