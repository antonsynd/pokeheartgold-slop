	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE0AC
	.public ov103_021EE0F8
	.public ov103_021EEAC8

	.text

	thumb_func_start ov103_021EEAC8
ov103_021EEAC8: ; 0x021EEAC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x9e
	ldr r2, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r4, r1, #0
	bl GridInputHandler_GetDpadBox
	add r3, r0, #0
	ldrb r2, [r3]
	ldrb r3, [r3, #1]
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ov103_021EE0F8
	cmp r4, #0xa
	ldr r0, [r5, #0xc]
	bne _021EEAF8
	mov r1, #2
	mov r2, #4
	bl ov103_021EE0AC
	pop {r3, r4, r5, pc}
_021EEAF8:
	mov r1, #2
	mov r2, #5
	bl ov103_021EE0AC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EEAC8

