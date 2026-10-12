#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9A78
	.extern ov112_021FEC80
	.extern ov112_021FF5D0
	.extern ov112_021FF5D8
	.extern ov112_021FF5F0
	.extern ov112_021FF608
	.extern ov112_021FF624
	.extern ov112_021FF640
	.extern ov112_021FF660
	.extern ov112_021FF684
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9A78
ov112_021E9A78: ; 0x021E9A78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	cmp r1, #8
	blt _021E9A86
	bl GF_AssertFail
_021E9A86:
	ldr r0, [sp]
	cmp r0, #7
	bls _021E9A8E
	b _021E9BC8
_021E9A8E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9A9A: ; jump table
	.short _021E9AAA - _021E9A9A - 2 ; case 0
	.short _021E9ACE - _021E9A9A - 2 ; case 1
	.short _021E9AF2 - _021E9A9A - 2 ; case 2
	.short _021E9B16 - _021E9A9A - 2 ; case 3
	.short _021E9B3A - _021E9A9A - 2 ; case 4
	.short _021E9B5E - _021E9A9A - 2 ; case 5
	.short _021E9B82 - _021E9A9A - 2 ; case 6
	.short _021E9BA6 - _021E9A9A - 2 ; case 7
_021E9AAA:
	ldr r0, _021E9BD8 ; =0x0001EBA8
	ldr r6, _021E9BDC ; =ov112_021FF608
	mov r4, #0
	add r7, r5, r0
_021E9AB2:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #7
	blo _021E9AB2
	ldr r1, _021E9BE0 ; =0x0001EC4B
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9ACE:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9BE8 ; =ov112_021FF5D8
	mov r4, #0
	add r7, r5, r0
_021E9AD6:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #6
	blo _021E9AD6
	ldr r1, _021E9BEC ; =0x0001EC4A
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9AF2:
	ldr r0, _021E9BD8 ; =0x0001EBA8
	ldr r6, _021E9BF0 ; =ov112_021FF5D0
	mov r4, #0
	add r7, r5, r0
_021E9AFA:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #2
	blo _021E9AFA
	ldr r1, _021E9BE0 ; =0x0001EC4B
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9B16:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9BF4 ; =ov112_021FF640
	mov r4, #0
	add r7, r5, r0
_021E9B1E:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #8
	blo _021E9B1E
	ldr r1, _021E9BEC ; =0x0001EC4A
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9B3A:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9BF8 ; =ov112_021FF660
	mov r4, #0
	add r7, r5, r0
_021E9B42:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #9
	blo _021E9B42
	ldr r1, _021E9BEC ; =0x0001EC4A
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9B5E:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9BFC ; =ov112_021FF624
	mov r4, #0
	add r7, r5, r0
_021E9B66:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #7
	blo _021E9B66
	ldr r1, _021E9BEC ; =0x0001EC4A
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9B82:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9C00 ; =ov112_021FF684
	mov r4, #0
	add r7, r5, r0
_021E9B8A:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #0x10
	blo _021E9B8A
	ldr r1, _021E9BEC ; =0x0001EC4A
	ldr r0, [sp]
	strb r0, [r5, r1]
	b _021E9BC8
_021E9BA6:
	ldr r0, _021E9BE4 ; =0x0001EA68
	ldr r6, _021E9C04 ; =ov112_021FF5F0
	mov r4, #0
	add r7, r5, r0
_021E9BAE:
	ldr r0, [r5, #0x18]
	ldr r2, [r6]
	add r1, r7, #0
	bl AddWindow
	add r4, r4, #1
	add r6, r6, #4
	add r7, #0x10
	cmp r4, #6
	blo _021E9BAE
	ldr r1, _021E9BE0 ; =0x0001EC4B
	ldr r0, [sp]
	strb r0, [r5, r1]
_021E9BC8:
	ldr r1, _021E9C08 ; =ov112_021FEC80
	ldr r0, [sp]
	ldrb r0, [r1, r0]
	add r1, r5, r0
	ldr r0, _021E9C0C ; =0x0001EC48
	strb r4, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9BD8: .word 0x0001EBA8
_021E9BDC: .word ov112_021FF608
_021E9BE0: .word 0x0001EC4B
_021E9BE4: .word 0x0001EA68
_021E9BE8: .word ov112_021FF5D8
_021E9BEC: .word 0x0001EC4A
_021E9BF0: .word ov112_021FF5D0
_021E9BF4: .word ov112_021FF640
_021E9BF8: .word ov112_021FF660
_021E9BFC: .word ov112_021FF624
_021E9C00: .word ov112_021FF684
_021E9C04: .word ov112_021FF5F0
_021E9C08: .word ov112_021FEC80
_021E9C0C: .word 0x0001EC48
	thumb_func_end ov112_021E9A78

