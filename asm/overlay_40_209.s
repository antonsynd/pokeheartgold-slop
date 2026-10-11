	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_022307DC
	.public ov40_02230944
	.public ov40_0223E730
	.public ov40_0223E848
	.public ov40_0223E870
	.public ov40_022420B4
	.public ov40_02245650

	.text

	thumb_func_start ov40_0223E870
ov40_0223E870: ; 0x0223E870
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bhi _0223E97A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E88C: ; jump table
	.short _0223E896 - _0223E88C - 2 ; case 0
	.short _0223E8A6 - _0223E88C - 2 ; case 1
	.short _0223E8E6 - _0223E88C - 2 ; case 2
	.short _0223E90E - _0223E88C - 2 ; case 3
	.short _0223E918 - _0223E88C - 2 ; case 4
_0223E896:
	mov r1, #0x3c
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E994
_0223E8A6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E8CC
	add r0, r4, #0
	bl ov40_0223E730
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E8CC:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E994
_0223E8E6:
	ldr r0, _0223E998 ; =0x0000060C
	ldr r0, [r5, r0]
	bl TouchHitboxController_IsTriggered
	ldr r0, _0223E99C ; =ov40_02245650
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _0223E900
	ldr r0, _0223E9A0 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223E994
_0223E900:
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E994
_0223E90E:
	bl ov40_0223E848
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E918:
	ldr r0, _0223E9A0 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223E938
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E994
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E994
_0223E938:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E960
	add r0, r4, #0
	mov r1, #0
	bl ov40_022420B4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E960:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E994
_0223E97A:
	ldr r0, _0223E9A0 ; =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223E98C
	add r0, r4, #0
	mov r1, #9
	bl ov40_0222BF80
	b _0223E994
_0223E98C:
	add r0, r4, #0
	mov r1, #0xb
	bl ov40_0222BF80
_0223E994:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223E998: .word 0x0000060C
_0223E99C: .word ov40_02245650
_0223E9A0: .word 0x000004D8
	thumb_func_end ov40_0223E870

