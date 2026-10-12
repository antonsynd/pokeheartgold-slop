#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EFD4C
	.public ov112_021EFDA8
	.extern ov112_021E7CA4
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021E9FA4
	.extern ov112_021E9FD8
	.extern ov112_021EFD24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EFD4C
ov112_021EFD4C: ; 0x021EFD4C
	push {r4, r5}
	mov r1, #0
	ldr r2, _021EFD98 ; =0x00009DAC
	add r4, r1, #0
	add r5, r0, #0
_021EFD56:
	ldrh r3, [r5, r2]
	cmp r3, #0
	beq _021EFD5E
	add r1, r1, #1
_021EFD5E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021EFD56
	ldr r2, _021EFD9C ; =0x00009DB8
	mov r5, #0
	add r4, r0, #0
_021EFD6C:
	ldrh r3, [r4, r2]
	cmp r3, #0
	beq _021EFD74
	add r1, r1, #1
_021EFD74:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xa
	blt _021EFD6C
	ldr r2, _021EFDA0 ; =0x0000AABC
	ldrb r2, [r0, r2]
	lsl r2, r2, #0x19
	lsr r2, r2, #0x1f
	beq _021EFD90
	ldr r2, _021EFDA4 ; =0x0000B002
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _021EFD90
	add r1, r1, #1
_021EFD90:
	add r0, r1, #0
	pop {r4, r5}
	bx lr
	nop
_021EFD98: .word 0x00009DAC
_021EFD9C: .word 0x00009DB8
_021EFDA0: .word 0x0000AABC
_021EFDA4: .word 0x0000B002
	thumb_func_end ov112_021EFD4C

	thumb_func_start ov112_021EFDA8
ov112_021EFDA8: ; 0x021EFDA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r0, #0
	mov r1, #5
	bl ov112_021E9C10
	add r0, r7, #0
	mov r1, #6
	bl ov112_021E9A78
	add r0, r7, #0
	bl ov112_021EFD4C
	cmp r0, #0
	bne _021EFDCC
	add sp, #0x2c
	mov r0, #0x24
	pop {r4, r5, r6, r7, pc}
_021EFDCC:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add r0, r7, #0
	mov r1, #2
	mov r2, #0xf
	bl ov112_021E7CA4
	ldr r2, _021EFEB8 ; =0x0001E4A4
	add r0, r7, #0
	ldr r2, [r7, r2]
	mov r1, #1
	mov r3, #0
	bl ov112_021E9FD8
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #0x1c
	bl MIi_CpuClearFast
	ldr r6, _021EFEBC ; =0x00009DAC
	mov r4, #0
	add r5, r7, #0
_021EFE0E:
	ldrh r1, [r5, r6]
	add r0, sp, #0x10
	bl ov112_021EFD24
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021EFE0E
	ldr r6, _021EFEC0 ; =0x00009DB8
	mov r5, #0
	add r4, r7, #0
_021EFE24:
	ldrh r1, [r4, r6]
	add r0, sp, #0x10
	bl ov112_021EFD24
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xa
	blt _021EFE24
	ldr r0, _021EFEC4 ; =0x0000AABC
	ldrb r0, [r7, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021EFE60
	ldr r1, _021EFEC8 ; =0x0000B002
	add r0, sp, #0x10
	ldrh r1, [r7, r1]
	bl ov112_021EFD24
	ldr r1, _021EFEC4 ; =0x0000AABC
	ldr r2, _021EFECC ; =0x000006C8
	mov r0, #0
	add r1, r7, r1
	bl MIi_CpuClearFast
	ldr r1, _021EFED0 ; =0x00009D70
	ldr r2, _021EFED4 ; =0x00000D4C
	mov r0, #0
	add r1, r7, r1
	bl MIi_CpuClearFast
_021EFE60:
	mov r0, #0x13
	mov r1, #0x9a
	bl String_New
	add r6, r0, #0
	mov r5, #0
	add r4, sp, #0x10
_021EFE6E:
	ldrh r1, [r4]
	cmp r1, #0
	beq _021EFE96
	add r0, r6, #0
	mov r2, #0x9a
	bl GetItemNameIntoString
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #2
	add r2, r6, #0
	mov r3, #0
	bl ov112_021E9FA4
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0xe
	blt _021EFE6E
_021EFE96:
	add r0, r6, #0
	bl String_Delete
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
	mov r0, #0x12
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EFEB8: .word 0x0001E4A4
_021EFEBC: .word 0x00009DAC
_021EFEC0: .word 0x00009DB8
_021EFEC4: .word 0x0000AABC
_021EFEC8: .word 0x0000B002
_021EFECC: .word 0x000006C8
_021EFED0: .word 0x00009D70
_021EFED4: .word 0x00000D4C
	thumb_func_end ov112_021EFDA8

