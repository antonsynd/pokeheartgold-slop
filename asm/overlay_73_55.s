#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7CD8
	.public ov73_021E7D54
	.public ov73_021E7D74

	.text

	thumb_func_start ov73_021E7D74
ov73_021E7D74: ; 0x021E7D74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r7, r2, #0
	str r0, [sp, #0x48]
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0x10
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	bl MI_CpuFill8
	mov r4, #0
	add r6, r4, #0
	cmp r7, #0
	ble _021E7E18
	str r5, [sp, #0x14]
_021E7D9E:
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	cmp r0, #0
	beq _021E7E0C
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x10]
	b _021E7E06
_021E7DAE:
	add r0, r4, #1
	add r1, r7, #0
	bl _s32_div_f
	add r4, r1, #0
_021E7DB8:
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E7DAE
	cmp r4, r6
	beq _021E7DAE
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _021E7DAE
	add r1, r0, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	ldr r0, [sp, #8]
	cmp r4, r0
	beq _021E7DFA
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	add r1, r5, #0
	bl ov73_021E7D54
	add r3, r0, #0
	beq _021E7DFA
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r3, r2]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #4]
	add r2, r3, r2
	ldr r3, [sp, #0x48]
	bl ov73_021E7CD8
_021E7DFA:
	ldr r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_021E7E06:
	ldr r0, [sp, #0x18]
	cmp r0, #4
	blt _021E7DB8
_021E7E0C:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x14]
	cmp r6, r7
	blt _021E7D9E
_021E7E18:
	mov r0, #0x17
	bl SaveSubstruct_UpdateCRC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov73_021E7D74

