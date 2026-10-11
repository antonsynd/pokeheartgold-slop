#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5E0C
	.public ov106_021E5E5C
	.public ov106_021E5EE4
	.extern ov106_021E5F24
	.extern ov106_021E5F84

	.text

	.text
	thumb_func_start ov106_021E5E0C
ov106_021E5E0C: ; 0x021E5E0C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E5E54 ; =ov106_021E5EE4
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl CreateSysTaskAndEnvironment
	add r6, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021E5E28:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021E5E28
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl GX_GetBankForLCDC
	str r0, [r4]
	add r0, r4, #4
	bl ov106_021E5F84
	ldr r0, _021E5E58 ; =ov106_021E5F24
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5E54: .word ov106_021E5EE4
_021E5E58: .word ov106_021E5F24
	thumb_func_end ov106_021E5E0C

	thumb_func_start ov106_021E5E5C
ov106_021E5E5C: ; 0x021E5E5C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl GX_SetGraphicsMode
	ldr r0, [r4]
	bl GX_SetBankForLCDC
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021E5E88
	bge _021E5EAC
	cmp r0, #6
	bgt _021E5EC8
	cmp r0, #2
	blt _021E5EC8
	beq _021E5E8E
	cmp r0, #6
	beq _021E5E9E
	b _021E5EC8
_021E5E88:
	cmp r0, #0xe
	beq _021E5EBA
	b _021E5EC8
_021E5E8E:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5ECE
_021E5E9E:
	mov r2, #2
	ldr r1, _021E5ED8 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5ECE
_021E5EAC:
	mov r2, #2
	ldr r1, _021E5EDC ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5ECE
_021E5EBA:
	mov r2, #2
	ldr r1, _021E5EE0 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E5ECE
_021E5EC8:
	mov r0, #0
	bl GX_SetBankForLCDC
_021E5ECE:
	ldr r0, [r4, #0x34]
	bl DestroySysTaskAndEnvironment
	pop {r4, pc}
	nop
_021E5ED8: .word 0x06820000
_021E5EDC: .word 0x06840000
_021E5EE0: .word 0x06860000
	thumb_func_end ov106_021E5E5C

	thumb_func_start ov106_021E5EE4
ov106_021E5EE4: ; 0x021E5EE4
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021E5F1C
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021E5F20 ; =0x04000064
	str r1, [r0]
_021E5F1C:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021E5F20: .word 0x04000064
	thumb_func_end ov106_021E5EE4

