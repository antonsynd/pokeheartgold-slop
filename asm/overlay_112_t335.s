#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F01CC
	.extern ov112_021E7CA4
	.extern ov112_021E9F5C
	.extern ov112_021E9FA4
	.extern ov112_021E9FD8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F01CC
ov112_021F01CC: ; 0x021F01CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r4, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r4, #0
	add r3, r4, #0
	bl FillBgTilemapRect
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xf
	bl ov112_021E7CA4
	ldr r2, _021F02F4 ; =0x0001E49C
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #1
	add r3, r4, #0
	bl ov112_021E9FD8
	ldr r0, _021F02F8 ; =0x0001E440
	ldr r0, [r5, r0]
	bl sub_02032718
	add r2, r0, #0
	ldr r0, _021F02FC ; =0x0001E448
	lsl r2, r2, #0x18
	ldr r0, [r5, r0]
	mov r1, #2
	lsr r2, r2, #0x18
	bl BufferPokewalkerCourseName
	ldr r0, _021F0300 ; =0x000010F0
	ldr r1, [r5, r0]
	ldr r0, _021F0304 ; =0x0001D758
	ldr r0, [r5, r0]
	cmp r1, r0
	bls _021F022C
	sub r4, r1, r0
_021F022C:
	ldr r0, _021F02F8 ; =0x0001E440
	add r1, sp, #0x14
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	bl sub_02032674
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021F02FC ; =0x0001E448
	mov r1, #5
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #7
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _021F0308 ; =0x00009D7A
	ldr r0, _021F02FC ; =0x0001E448
	ldrh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #5
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021F02FC ; =0x0001E448
	ldr r2, [sp, #0x14]
	ldr r0, [r5, r0]
	mov r1, #6
	mov r3, #7
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021F02FC ; =0x0001E448
	mov r1, #7
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	add r3, r1, #0
	bl BufferIntegerAsString
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r2, _021F030C ; =0x0001E4B4
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #5
	mov r3, #0
	bl ov112_021E9FA4
	mov r3, #0xc1
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x3c
	lsl r3, r3, #0xa
	bl ov112_021E9F5C
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r2, _021F0310 ; =0x0001E4BC
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #7
	mov r3, #0
	bl ov112_021E9FA4
	mov r3, #0xc1
	add r0, r5, #0
	mov r1, #8
	mov r2, #0x3e
	lsl r3, r3, #0xa
	bl ov112_021E9F5C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x9a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x21
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021F02F4: .word 0x0001E49C
_021F02F8: .word 0x0001E440
_021F02FC: .word 0x0001E448
_021F0300: .word 0x000010F0
_021F0304: .word 0x0001D758
_021F0308: .word 0x00009D7A
_021F030C: .word 0x0001E4B4
_021F0310: .word 0x0001E4BC
	thumb_func_end ov112_021F01CC

