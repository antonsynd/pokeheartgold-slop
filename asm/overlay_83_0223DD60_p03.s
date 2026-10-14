	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223E008
	.extern ov83_0223E10C
	.extern ov83_02241368

    .text

	.text
	thumb_func_start ov83_0223E008
ov83_0223E008: ; 0x0223E008
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0223E104
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E020: ; jump table
	.short _0223E02A - _0223E020 - 2 ; case 0
	.short _0223E046 - _0223E020 - 2 ; case 1
	.short _0223E06E - _0223E020 - 2 ; case 2
	.short _0223E0B4 - _0223E020 - 2 ; case 3
	.short _0223E0F6 - _0223E020 - 2 ; case 4
_0223E02A:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E03E
	bl sub_02037BEC
	mov r0, #0xd7
	bl sub_02037AC0
_0223E03E:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E046:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E066
	mov r0, #0xd7
	bl sub_02037B38
	cmp r0, #1
	bne _0223E104
	bl sub_02037BEC
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E066:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E06E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E08E
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl ov83_02241368
	cmp r0, #1
	bne _0223E104
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E08E:
	add r0, r4, #0
	bl ov83_0223E10C
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0B4:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _0223E0EE
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _0223E104
	mov r0, #0
	strb r0, [r4, #0xf]
	add r0, r4, #0
	bl ov83_0223E10C
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0EE:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E104
_0223E0F6:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223E104
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223E104:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0223E008

