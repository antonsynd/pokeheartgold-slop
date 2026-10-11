	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E6B1C

	.text

	.text
	thumb_func_start ov113_021E6B1C
ov113_021E6B1C: ; 0x021E6B1C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	beq _021E6B2C
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _021E6B3A
_021E6B2C:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	b _021E6B46
_021E6B3A:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
_021E6B46:
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	beq _021E6B54
	ldrb r1, [r4, #0x1a]
	sub r0, r0, #1
	cmp r1, r0
	bne _021E6B60
_021E6B54:
	add r4, #0xc0
	ldr r0, [r4]
	mov r1, #7
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_021E6B60:
	add r4, #0xc0
	ldr r0, [r4]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
	thumb_func_end ov113_021E6B1C

