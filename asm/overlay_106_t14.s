#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5E0C
	.extern ov106_021E5EE4
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

