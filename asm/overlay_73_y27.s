#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6AAC
	.extern ov73_021E66F0
	.extern ov73_021E670C
	.extern ov73_021E6830
	.extern ov73_021E71E4
	.extern ov73_021E746C
	.extern ov73_021E781C

	.text

	.text
	thumb_func_start ov73_021E6AAC
ov73_021E6AAC: ; 0x021E6AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl ov73_021E746C
	ldr r1, _021E6B5C ; =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6AC8
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021E6AE4
_021E6AC8:
	ldr r0, _021E6B60 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E6AD8
	ldr r0, _021E6B64 ; =0x000005F2
	bl PlaySE
_021E6AD8:
	add r0, r5, #0
	bl ov73_021E66F0
	add sp, #4
	add r0, r4, #0
	pop {r3, r4, r5, r6, pc}
_021E6AE4:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	add r6, r0, #0
	beq _021E6B4E
	add r0, r5, #0
	bl ov73_021E6830
	cmp r6, #2
	bne _021E6B1C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_02037030
	add r0, r5, #0
	mov r1, #1
	bl ov73_021E781C
	add r0, r5, #0
	mov r1, #0
	bl ov73_021E670C
	b _021E6B4E
_021E6B1C:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov73_021E71E4
	add r0, r5, #0
	mov r1, #0
	mov r2, #2
	bl ov73_021E71E4
	bl sub_0203769C
	cmp r0, #0
	bne _021E6B4A
	mov r0, #0xc6
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl ov73_021E746C
	ldr r1, _021E6B68 ; =0x00004A2A
	strb r0, [r5, r1]
	b _021E6B4E
_021E6B4A:
	bl GF_AssertFail
_021E6B4E:
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6B5C: .word 0x00004A1C
_021E6B60: .word gSystem
_021E6B64: .word 0x000005F2
_021E6B68: .word 0x00004A2A
	thumb_func_end ov73_021E6AAC

