	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDC00

	.text

	thumb_func_start ov103_021EDC00
ov103_021EDC00: ; 0x021EDC00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r0, [r0]
	bl Save_Bag_Get
	add r4, r0, #0
	ldrb r0, [r5, #0x1f]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl Mail_GetType
	bl MailToItemId
	strh r0, [r5, #0x22]
	ldrh r1, [r5, #0x22]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0x9d
	bl Bag_AddItem
	cmp r0, #1
	bne _021EDC46
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #0x80
	add r5, #0x21
	bic r1, r0
	strb r1, [r5]
	pop {r3, r4, r5, pc}
_021EDC46:
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #0x80
	add r5, #0x21
	orr r0, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDC00

