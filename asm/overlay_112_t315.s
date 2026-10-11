#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EFAD4
	.public ov112_021EFB14
	.extern ov112_021E7CA4
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021E9F5C
	.extern ov112_021E9FD8
	.extern ov112_021EA670
	.extern ov112_021EA688
	.extern ov112_021EA6B8
	.extern ov112_021EAB78
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EFAD4
ov112_021EFAD4: ; 0x021EFAD4
	push {r4, r5}
	mov r2, #0
	ldr r3, _021EFB10 ; =0x000001ED
	add r5, r2, #0
_021EFADC:
	ldrh r4, [r0, #0xc]
	cmp r4, #0
	beq _021EFAE8
	cmp r4, r3
	bhi _021EFAE8
	add r2, r2, #1
_021EFAE8:
	add r5, r5, #1
	add r0, #0x10
	cmp r5, #3
	blt _021EFADC
	ldrb r0, [r1]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021EFB0A
	mov r0, #0x91
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _021EFB0A
	sub r0, #0x57
	cmp r1, r0
	bhi _021EFB0A
	add r2, r2, #1
_021EFB0A:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
_021EFB10: .word 0x000001ED
	thumb_func_end ov112_021EFAD4

	thumb_func_start ov112_021EFB14
ov112_021EFB14: ; 0x021EFB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #4
	bl ov112_021E9C10
	add r0, r5, #0
	mov r1, #5
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, _021EFC84 ; =0x00009D70
	ldr r1, _021EFC88 ; =0x0000AABC
	add r0, r5, r0
	add r1, r5, r1
	bl ov112_021EFAD4
	cmp r0, #0
	bne _021EFB60
	add r0, r5, #0
	mov r1, #9
	bl ov112_021EA688
	add sp, #0x10
	mov r0, #0x11
	pop {r3, r4, r5, r6, r7, pc}
_021EFB60:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xf
	bl ov112_021E7CA4
	ldr r2, _021EFC8C ; =0x0001E4A0
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #1
	mov r3, #0
	bl ov112_021E9FD8
	ldr r2, _021EFC8C ; =0x0001E4A0
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #1
	mov r3, #0
	bl ov112_021E9FD8
	mov r4, #0
_021EFB88:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #9
	bl ov112_021EA688
	add r4, r4, #1
	cmp r4, #4
	blt _021EFB88
	add r0, r5, #0
	mov r1, #9
	mov r2, #0x28
	mov r3, #0x40
	bl ov112_021EA6B8
	add r0, r5, #0
	mov r1, #0xa
	mov r2, #0x90
	mov r3, #0x40
	bl ov112_021EA6B8
	add r0, r5, #0
	mov r1, #0xb
	mov r2, #0x28
	mov r3, #0x60
	bl ov112_021EA6B8
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0x90
	mov r3, #0x60
	bl ov112_021EA6B8
	ldr r0, _021EFC90 ; =0x00009D89
	mov r4, #0
	add r6, r5, #0
	add r7, r5, r0
_021EFBD0:
	ldr r0, _021EFC94 ; =0x00009D7C
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _021EFC14
	add r1, r4, #0
	add r0, r5, #0
	add r1, #9
	bl ov112_021EA670
	ldr r2, _021EFC94 ; =0x00009D7C
	ldr r0, _021EFC98 ; =0x0001E448
	add r1, r4, #0
	ldrh r2, [r6, r2]
	ldr r0, [r5, r0]
	add r1, #8
	bl BufferSpeciesName
	add r2, r4, #0
	mov r3, #0xc1
	add r0, r5, #0
	add r1, r4, #3
	add r2, #0x43
	lsl r3, r3, #0xa
	bl ov112_021E9F5C
	ldr r2, _021EFC94 ; =0x00009D7C
	ldrb r3, [r7]
	ldrh r2, [r6, r2]
	add r0, r5, #0
	lsl r3, r3, #0x1b
	add r1, r4, #0
	lsr r3, r3, #0x1b
	bl ov112_021EAB78
_021EFC14:
	add r4, r4, #1
	add r6, #0x10
	add r7, #0x10
	cmp r4, #3
	blt _021EFBD0
	ldr r0, _021EFC88 ; =0x0000AABC
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021EFC66
	mov r0, #0xad
	lsl r0, r0, #8
	add r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021EFC66
	add r0, r5, #0
	mov r1, #0xc
	bl ov112_021EA670
	ldr r0, _021EFC98 ; =0x0001E448
	ldrh r2, [r4]
	ldr r0, [r5, r0]
	mov r1, #0xb
	bl BufferSpeciesName
	mov r3, #0xc1
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x46
	lsl r3, r3, #0xa
	bl ov112_021E9F5C
	ldrb r3, [r4, #0xd]
	ldrh r2, [r4]
	add r0, r5, #0
	lsl r3, r3, #0x1b
	mov r1, #3
	lsr r3, r3, #0x1b
	bl ov112_021EAB78
_021EFC66:
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
	mov r0, #0xd
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFC84: .word 0x00009D70
_021EFC88: .word 0x0000AABC
_021EFC8C: .word 0x0001E4A0
_021EFC90: .word 0x00009D89
_021EFC94: .word 0x00009D7C
_021EFC98: .word 0x0001E448
	thumb_func_end ov112_021EFB14

