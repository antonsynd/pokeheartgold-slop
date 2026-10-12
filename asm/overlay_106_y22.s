#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5F84

	.text

	.text
	thumb_func_start ov106_021E5F84
ov106_021E5F84: ; 0x021E5F84
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bgt _021E5FA0
	bge _021E5FC4
	cmp r0, #6
	bgt _021E5FDE
	cmp r0, #2
	blt _021E5FDE
	beq _021E5FA6
	cmp r0, #6
	beq _021E5FB6
	b _021E5FDE
_021E5FA0:
	cmp r0, #0xe
	beq _021E5FD2
	b _021E5FDE
_021E5FA6:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5FDE
_021E5FB6:
	mov r2, #2
	ldr r1, _021E600C ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5FDE
_021E5FC4:
	mov r2, #2
	ldr r1, _021E6010 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5FDE
_021E5FD2:
	mov r2, #2
	ldr r1, _021E6014 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
_021E5FDE:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021E6018 ; =0x04000064
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E600C: .word 0x06820000
_021E6010: .word 0x06840000
_021E6014: .word 0x06860000
_021E6018: .word 0x04000064
	thumb_func_end ov106_021E5F84

