	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225E060
	.extern ov31_0225EF48

	.text

	.text
	thumb_func_start ov31_0225E060
ov31_0225E060: ; 0x0225E060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r6, r0, #0
	add r4, r2, #0
	bl GetBgTilemapBuffer
	str r0, [sp, #0x14]
	cmp r4, #6
	beq _0225E0DA
	ldr r1, _0225E0E0 ; =ov31_0225EF48
	lsl r0, r4, #5
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	mov r7, #0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0225E086:
	ldrb r0, [r5]
	cmp r0, #1
	bne _0225E0B2
	ldrb r0, [r5, #4]
	add r1, r4, #0
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	ldrb r0, [r5, #6]
	str r0, [sp, #8]
	ldrb r3, [r5, #2]
	ldrb r2, [r5, #1]
	add r0, r6, #0
	lsl r3, r3, #5
	add r2, r2, r3
	lsl r3, r2, #1
	ldr r2, [sp, #0x14]
	add r2, r2, r3
	ldrb r3, [r5, #3]
	bl LoadRectToBgTilemapRect
	b _0225E0D2
_0225E0B2:
	cmp r0, #2
	bne _0225E0D2
	ldrb r0, [r5, #4]
	add r1, r4, #0
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r5, #5]
	str r0, [sp, #4]
	ldrb r0, [r5, #6]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #3]
	add r0, r6, #0
	bl FillBgTilemapRect
_0225E0D2:
	add r7, r7, #1
	add r5, #8
	cmp r7, #4
	blt _0225E086
_0225E0DA:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E0E0: .word ov31_0225EF48
	thumb_func_end ov31_0225E060

