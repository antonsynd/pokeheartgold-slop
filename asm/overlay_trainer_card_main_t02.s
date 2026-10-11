#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E5F64

	.text

	.text
	thumb_func_start ov51_021E5F64
ov51_021E5F64: ; 0x021E5F64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x19
	bl FontID_Alloc
	ldr r2, _021E6014 ; =0x000002D7
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x19
	bl NewMsgDataFromNarc
	ldr r1, _021E6018 ; =0x000033C4
	str r0, [r5, r1]
	mov r0, #4
	mov r1, #0x19
	bl String_New
	ldr r1, _021E601C ; =0x000033C8
	str r0, [r5, r1]
	mov r0, #0x20
	mov r1, #0x19
	bl String_New
	ldr r1, _021E6020 ; =0x000033D0
	str r0, [r5, r1]
	mov r0, #0xa
	mov r1, #0x19
	bl String_New
	ldr r1, _021E6024 ; =0x000033D4
	str r0, [r5, r1]
	mov r0, #5
	mov r1, #0x19
	bl String_New
	ldr r2, _021E6028 ; =0x000033CC
	mov r1, #0xb
	str r0, [r5, r2]
	add r0, r2, #0
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl ReadMsgDataIntoString
	ldr r7, _021E602C ; =0x000033D8
	mov r6, #0
	add r4, r5, #0
_021E5FC4:
	ldr r0, _021E6018 ; =0x000033C4
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xe
	bl NewString_ReadMsgData
	str r0, [r4, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _021E5FC4
	ldr r7, _021E6030 ; =0x000033E4
	mov r4, #0
	add r6, r5, #0
_021E5FE0:
	ldr r0, _021E6018 ; =0x000033C4
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x11
	bl NewString_ReadMsgData
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #2
	blt _021E5FE0
	ldr r7, _021E6034 ; =0x000033EC
	mov r4, #0
	add r6, r5, #0
_021E5FFC:
	ldr r0, _021E6018 ; =0x000033C4
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl NewString_ReadMsgData
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0xe
	blt _021E5FFC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6014: .word 0x000002D7
_021E6018: .word 0x000033C4
_021E601C: .word 0x000033C8
_021E6020: .word 0x000033D0
_021E6024: .word 0x000033D4
_021E6028: .word 0x000033CC
_021E602C: .word 0x000033D8
_021E6030: .word 0x000033E4
_021E6034: .word 0x000033EC
	thumb_func_end ov51_021E5F64

