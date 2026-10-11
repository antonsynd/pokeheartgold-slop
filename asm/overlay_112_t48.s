#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9148
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9148
ov112_021E9148: ; 0x021E9148
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	mov r3, #0x9a
	bl NewMsgDataFromNarc
	str r0, [sp, #0x20]
	mov r0, #5
	mov r1, #0x9a
	bl FontID_Alloc
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x10]
	mov r7, #0
_021E9170:
	ldr r1, [sp, #0x14]
	ldr r0, _021E927C ; =0x0001E450
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x80
	ldrh r1, [r1]
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9280 ; =0x00030100
	mov r1, #5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	add r7, r7, #1
	add r4, r4, #6
	add r5, #0x10
	cmp r7, #0xa
	blt _021E9170
	mov r5, #0
	mov r6, #1
	mov r7, #0xff
_021E91B4:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldrb r2, [r1, r5]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r3
	ldrh r1, [r1, #8]
	bl NewString_ReadMsgData
	add r4, r0, #0
	str r6, [sp]
	ldr r0, _021E9280 ; =0x00030100
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0xa
	lsl r1, r0, #4
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	add r0, r0, r1
	mov r1, #5
	mov r3, #2
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r5, r5, #1
	cmp r5, #3
	blt _021E91B4
	ldr r1, _021E9284 ; =0x0001E44C
	ldr r0, [sp, #0x14]
	ldr r2, _021E9288 ; =0x0001D798
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x14]
	ldr r1, [r1, r2]
	add r1, #0x5b
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9280 ; =0x00030100
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	add r0, #0xd0
	mov r1, #5
	mov r3, #2
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #0xc
	mov r1, #0x9a
	bl String_New
	add r4, r0, #0
	ldr r1, _021E928C ; =0x0001E430
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	ldr r0, [r0, r1]
	mov r1, #0x77
	bl GetBoxMonData
	mov r0, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9280 ; =0x00030100
	mov r1, #5
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	add r0, #0xe0
	mov r3, #2
	str r0, [sp, #0x10]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	mov r0, #5
	bl FontID_Release
	ldr r0, [sp, #0x20]
	bl DestroyMsgData
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E927C: .word 0x0001E450
_021E9280: .word 0x00030100
_021E9284: .word 0x0001E44C
_021E9288: .word 0x0001D798
_021E928C: .word 0x0001E430
	thumb_func_end ov112_021E9148

