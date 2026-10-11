	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221EF34
ov10_0221EF34: ; 0x0221EF34
	cmp r1, #3
	bhi _0221EF52
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0221EF44: ; jump table
	.short _0221EF52 - _0221EF44 - 2 ; case 0
	.short _0221EF4C - _0221EF44 - 2 ; case 1
	.short _0221EF68 - _0221EF44 - 2 ; case 2
	.short _0221EF5A - _0221EF44 - 2 ; case 3
_0221EF4C:
	ldr r1, _0221EF78 ; =0x000003CF
	ldrb r0, [r0, r1]
	bx lr
_0221EF52:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
_0221EF5A:
	ldr r1, _0221EF78 ; =0x000003CF
	ldrb r1, [r0, r1]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0221EF68:
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r1, [r0, r1]
	mov r0, #2
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	.balign 4, 0
_0221EF78: .word 0x000003CF
	thumb_func_end ov10_0221EF34

