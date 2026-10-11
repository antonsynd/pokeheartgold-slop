#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5F84
	.public ov106_021E601C
	.public ov106_021E6064
	.extern ov106_021E5E0C
	.extern ov106_021E5E5C
	.extern ov106_021E6DD8

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

	thumb_func_start ov106_021E601C
ov106_021E601C: ; 0x021E601C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	bl GX_ResetBankForBG
	ldr r6, _021E6060 ; =ov106_021E6DD8
	add r3, sp, #0
	mov r2, #5
_021E6046:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6046
	ldr r0, [r6]
	str r0, [r3]
	add r0, sp, #0
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	bl ov106_021E5E0C
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E6060: .word ov106_021E6DD8
	thumb_func_end ov106_021E601C

	thumb_func_start ov106_021E6064
ov106_021E6064: ; 0x021E6064
	push {r3, lr}
	mov r1, #1
	mov r2, #0
	add r3, r1, #0
	bl ov106_021E5E5C
	mov r0, #4
	bl GX_SetBankForBG
	mov r0, #0xe
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	pop {r3, pc}
	thumb_func_end ov106_021E6064

