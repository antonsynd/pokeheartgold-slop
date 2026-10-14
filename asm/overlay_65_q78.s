#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F120
	.extern ov65_0221DE24
	.extern ov65_0221F0C4
	.extern ov65_0221F0D8
	.extern ov65_0221F258
	.extern ov65_0221F354
	.extern ov65_0221F79C
	.extern ov65_0221F7E0
	.extern ov65_0221FB90
	.extern ov65_0221FC54

	.text

	.text
	thumb_func_start ov65_0221F120
ov65_0221F120: ; 0x0221F120
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221F240 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221F238
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F152: ; jump table
	.short _0221F238 - _0221F152 - 2 ; case 0
	.short _0221F15C - _0221F152 - 2 ; case 1
	.short _0221F1F6 - _0221F152 - 2 ; case 2
	.short _0221F15C - _0221F152 - 2 ; case 3
	.short _0221F1F6 - _0221F152 - 2 ; case 4
_0221F15C:
	add r0, r4, #0
	bl ov65_0221F79C
	cmp r0, #0
	beq _0221F1E4
	add r0, r4, #0
	bl ov65_0221F7E0
	cmp r0, #0
	beq _0221F17A
	cmp r0, #1
	beq _0221F1AC
	cmp r0, #2
	beq _0221F1C8
	b _0221F238
_0221F17A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0221F244 ; =0x000006A8
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0221F1A4
	add r0, r4, #0
	bl ov65_0221F0C4
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x14
	bl ov65_0221F0D8
	ldr r1, _0221F248 ; =ov65_0221F354
	ldr r0, _0221F24C ; =0x00002220
	str r1, [r4, r0]
	b _0221F238
_0221F1A4:
	ldr r1, _0221F250 ; =ov65_0221F258
	ldr r0, _0221F24C ; =0x00002220
	str r1, [r4, r0]
	b _0221F238
_0221F1AC:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x25
	bl ov65_0221F0D8
	ldr r1, _0221F248 ; =ov65_0221F354
	ldr r0, _0221F24C ; =0x00002220
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov65_0221DE24
	b _0221F238
_0221F1C8:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0x26
	bl ov65_0221F0D8
	ldr r1, _0221F248 ; =ov65_0221F354
	ldr r0, _0221F24C ; =0x00002220
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov65_0221DE24
	b _0221F238
_0221F1E4:
	ldr r1, _0221F248 ; =ov65_0221F354
	ldr r0, _0221F24C ; =0x00002220
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov65_0221DE24
	b _0221F238
_0221F1F6:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221F254 ; =0x000005B4
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0x14
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221F248 ; =ov65_0221F354
	ldr r0, _0221F24C ; =0x00002220
	mov r2, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0x18
	bl ov65_0221DE24
_0221F238:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0221F240: .word 0x00000664
_0221F244: .word 0x000006A8
_0221F248: .word ov65_0221F354
_0221F24C: .word 0x00002220
_0221F250: .word ov65_0221F258
_0221F254: .word 0x000005B4
	thumb_func_end ov65_0221F120

