#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7870
	.extern ov73_021E6830
	.extern ov73_021E746C
	.extern ov73_021E781C

	.text

	.text
	thumb_func_start ov73_021E7870
ov73_021E7870: ; 0x021E7870
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	bl ov73_021E746C
	add r5, r0, #0
	ldr r0, _021E7950 ; =0x00004A1C
	ldr r1, [r4, r0]
	cmp r5, r1
	ble _021E789A
	mov r2, #1
	add r0, sp, #0
	strb r2, [r0]
	mov r0, #0x75
	add r1, sp, #0
	bl sub_02037030
	mov r1, #1
	ldr r0, _021E7954 ; =0x00004A20
	b _021E789E
_021E789A:
	mov r1, #0
	add r0, r0, #4
_021E789E:
	str r1, [r4, r0]
	ldr r0, _021E7958 ; =0x00004A18
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021E78AE
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E78AE:
	cmp r5, #5
	bhi _021E7942
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E78BE: ; jump table
	.short _021E7942 - _021E78BE - 2 ; case 0
	.short _021E78CA - _021E78BE - 2 ; case 1
	.short _021E78FC - _021E78BE - 2 ; case 2
	.short _021E78FC - _021E78BE - 2 ; case 3
	.short _021E78FC - _021E78BE - 2 ; case 4
	.short _021E7934 - _021E78BE - 2 ; case 5
_021E78CA:
	bl sub_02037454
	cmp r0, #1
	bgt _021E78DA
	bl sub_02033250
	cmp r0, #1
	bls _021E78E0
_021E78DA:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E78E0:
	mov r0, #0xc6
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, #0x12
	bl ov73_021E781C
	add r0, r4, #0
	bl ov73_021E6830
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021E78FC:
	mov r0, #2
	bl sub_0205A904
	ldr r0, _021E7958 ; =0x00004A18
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021E7942
	add r0, #0x11
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021E7918
	cmp r0, #1
	beq _021E7922
	b _021E792A
_021E7918:
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E781C
	b _021E792A
_021E7922:
	add r0, r4, #0
	mov r1, #0
	bl ov73_021E781C
_021E792A:
	bl sub_02037454
	ldr r1, _021E7950 ; =0x00004A1C
	str r0, [r4, r1]
	b _021E7942
_021E7934:
	mov r0, #9
	bl sub_0205A904
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E781C
_021E7942:
	bl ov73_021E746C
	ldr r1, _021E7958 ; =0x00004A18
	str r0, [r4, r1]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E7950: .word 0x00004A1C
_021E7954: .word 0x00004A20
_021E7958: .word 0x00004A18
	thumb_func_end ov73_021E7870

