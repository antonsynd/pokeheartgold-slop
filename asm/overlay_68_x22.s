	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6234

	.text

	.text
	thumb_func_start ov68_021E6234
ov68_021E6234: ; 0x021E6234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _021E6250
	cmp r0, #1
	beq _021E6254
	cmp r0, #2
	beq _021E627E
	b _021E62AA
_021E6250:
	mov r3, #0
	b _021E62AA
_021E6254:
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r5, r1]
	add r0, r7, #0
	mov r2, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r6, r0, #0x18
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	bl GetWindowWidth
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	b _021E62AA
_021E627E:
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r5, r1]
	add r0, r7, #0
	mov r2, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x18
	add r1, r5, #0
	lsr r6, r0, #0x18
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	bl GetWindowWidth
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x18
	sub r1, r0, r6
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0x17
	lsr r3, r0, #0x18
_021E62AA:
	add r0, sp, #0x18
	ldrb r0, [r0, #0x14]
	add r1, r5, #0
	mov r2, #0xff
	str r0, [sp]
	str r2, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, #8
	lsl r0, r4, #4
	add r0, r1, r0
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl AddTextPrinterParameterizedWithColor
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov68_021E6234

