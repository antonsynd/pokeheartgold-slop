	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED0C0
	.extern ov103_021EE468

	.text

	.text
	thumb_func_start ov103_021ED0C0
ov103_021ED0C0: ; 0x021ED0C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x1c]
	mov r0, #0xa
	mov r4, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0xb3
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, r2
	str r0, [sp]
	lsl r0, r2, #0x10
	lsr r7, r0, #0x10
	add r6, r4, #0
_021ED0E2:
	ldr r0, [sp]
	ldrb r3, [r0, r6]
	cmp r3, #0xff
	bne _021ED0F6
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_0201980C
	b _021ED10A
_021ED0F6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov103_021EE468
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_020197F4
_021ED10A:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xa
	blo _021ED0E2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov103_021ED0C0

