#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CA64
	.public ov65_0221D5FC
	.public ov65_0221D648
	.public ov65_0221D674
	.public ov65_0221F748
	.public ov65_0221FB4C
	.public ov65_0221FEA4
	.public ov65_0221FEA8

	.text

	thumb_func_start ov65_0221D648
ov65_0221D648: ; 0x0221D648
	push {r4, lr}
	ldrh r0, [r0]
	add r4, r3, #0
	cmp r0, #0x1d
	beq _0221D656
	cmp r0, #0x20
	bne _0221D66E
_0221D656:
	add r0, r1, #0
	add r1, r2, #0
	bl Party_GetMonByIndex
	mov r1, #0x4d
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0221D66E
	mov r0, #2
	pop {r4, pc}
_0221D66E:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov65_0221D648

	thumb_func_start ov65_0221D674
ov65_0221D674: ; 0x0221D674
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x50]
	bl Party_GetMonByIndex
	mov r1, #2
	bl sub_0207083C
	str r0, [sp, #0x10]
	ldr r0, _0221D8AC ; =0x0000040C
	mov r1, #1
	add r6, r4, r0
	lsl r0, r5, #2
	str r0, [sp, #0x14]
	ldr r0, [r6, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0xc
	add r3, r5, #0
	mul r3, r0
	ldr r1, _0221D8B0 ; =ov65_0221FEA4
	ldr r0, [sp, #0x14]
	ldr r2, _0221D8B4 ; =ov65_0221FEA8
	ldr r1, [r1, r3]
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x10]
	ldr r0, [r6, r0]
	add r2, r2, r3
	add r2, #0xc0
	bl ov65_0221F748
	cmp r5, #0
	bne _0221D6D4
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _0221D8B8 ; =0x000006A6
	ldr r0, [r6, r0]
	ldrh r1, [r2, r1]
	bl Sprite_SetFlipMode
_0221D6D4:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	lsl r2, r2, #4
	add r3, r4, r2
	mov r2, #0x6a
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	add r1, r5, #2
	bl ov65_0221CA64
	add r0, r5, #2
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0221D8AC ; =0x0000040C
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #6
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r7, r0
	mov r3, #9
	bl ov65_0221D5FC
	mov r0, #6
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	lsl r0, r0, #4
	str r0, [sp, #0x34]
	ldr r0, _0221D8BC ; =0x0000069C
	ldr r3, [sp, #0x34]
	mov ip, r0
	add r3, r4, r3
	str r3, [sp, #0x30]
	mov r3, ip
	add r1, r4, r0
	ldr r0, [sp, #0x34]
	ldr r6, [sp, #0x30]
	add r3, #8
	add r0, r1, r0
	ldrh r3, [r6, r3]
	ldr r1, [sp, #8]
	bl ov65_0221D648
	ldr r1, _0221D8C0 ; =0x000006A1
	add r2, r4, r1
	ldr r1, [sp, #0x34]
	str r2, [sp, #0x18]
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _0221D74C
	mov r0, #2
_0221D74C:
	cmp r0, #0
	beq _0221D76A
	cmp r0, #1
	beq _0221D78E
	cmp r0, #2
	bne _0221D7B0
	add r0, r5, #4
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0221D8AC ; =0x0000040C
	ldr r0, [r1, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0221D7B0
_0221D76A:
	ldr r0, _0221D8AC ; =0x0000040C
	add r0, r4, r0
	str r0, [sp, #0x1c]
	add r0, r5, #4
	lsl r0, r0, #2
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r0, [r1, r0]
	mov r1, #7
	bl Sprite_SetAnimCtrlSeq
	b _0221D7B0
_0221D78E:
	ldr r0, _0221D8AC ; =0x0000040C
	add r0, r4, r0
	str r0, [sp, #0x24]
	add r0, r5, #4
	lsl r0, r0, #2
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r0, [r1, r0]
	mov r1, #6
	bl Sprite_SetAnimCtrlSeq
_0221D7B0:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0221D836
	mov r0, #0xa
	mov r1, #0x1a
	bl String_New
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x1c
	lsl r0, r0, #4
	str r0, [sp, #0x2c]
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x29
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	add r0, r7, r0
	mov r2, #9
	mov r3, #0xff
	bl ov65_0221FB4C
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl Party_GetMonByIndex
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r2, #3
	mov r3, #0
	bl String16_FormatInteger
	mov r0, #0x1e
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r3, #0
	add r0, r7, r0
	add r1, r6, #0
	mov r2, #9
	str r3, [sp, #4]
	bl ov65_0221FB4C
	add r0, r6, #0
	bl String_Delete
	b _0221D842
_0221D836:
	add r0, r5, #0
	add r0, #0x1c
	lsl r0, r0, #4
	add r0, r7, r0
	bl ClearWindowTilemapAndCopyToVram
_0221D842:
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	add r0, r5, #0
	mov r1, #0x67
	add r0, #0x1e
	lsl r0, r0, #4
	str r3, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r7, r0
	mov r2, #7
	bl ov65_0221FB4C
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r5, #0x20
	lsl r0, r0, #0x10
	lsl r4, r5, #4
	lsr r6, r0, #0x10
	add r0, r7, r4
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x14
	mov r1, #0x1a
	bl String_New
	add r1, r6, #0
	mov r2, #0x1a
	add r5, r0, #0
	bl GetItemNameIntoString
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	add r0, r7, r4
	add r1, r5, #0
	mov r2, #9
	str r3, [sp, #4]
	bl ov65_0221FB4C
	add r0, r5, #0
	bl String_Delete
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D8AC: .word 0x0000040C
_0221D8B0: .word ov65_0221FEA4
_0221D8B4: .word ov65_0221FEA8
_0221D8B8: .word 0x000006A6
_0221D8BC: .word 0x0000069C
_0221D8C0: .word 0x000006A1
	thumb_func_end ov65_0221D674

