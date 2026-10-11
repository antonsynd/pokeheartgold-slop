#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E73C8
	.extern ov112_021E5964
	.extern ov112_021E5D38
	.extern ov112_021E5D44
	.extern ov112_021E5D50
	.extern ov112_021E5D5C
	.extern ov112_021E6A6C
	.extern ov112_021E6BDC
	.extern ov112_021E6F60
	.extern ov112_021E7398
	.extern ov112_021FFAA4
	.extern ov112_021FFAC0
	.extern ov112_021FFB08
	.extern ov112_021FFB20
	.extern ov112_021FFBD8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E73C8
ov112_021E73C8: ; 0x021E73C8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021E7440 ; =ov112_021FFAA4
	mov r1, #1
	str r1, [r0, #0x18]
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x44]
	add r6, r2, #0
	str r1, [r0, #0x48]
	bl ov112_021E5964
	mov r0, #1
	bl ov112_021E5D5C
	ldr r0, _021E7444 ; =ov112_021E6A6C
	bl ov112_021E5D38
	ldr r0, _021E7448 ; =ov112_021E6F60
	bl ov112_021E5D44
	ldr r0, _021E744C ; =ov112_021E6BDC
	bl ov112_021E5D50
	bl CARD_SpiWaitGetStatus
	bl CARD_SpiWaitGetStatus
	cmp r0, #0xaa
	bne _021E7414
	mov r0, #0
	bl CARD_SetSpiWriteWaitCycles
	mov r0, #0
	bl CARD_SetSpiReadWaitCycles
_021E7414:
	ldr r0, _021E7450 ; =ov112_021FFB08
	bl OS_InitMutex
	ldr r0, _021E7454 ; =ov112_021FFB20
	ldr r1, _021E7458 ; =ov112_021FFAC0
	mov r2, #1
	bl OS_InitMessageQueue
	str r4, [sp]
	ldr r0, _021E745C ; =ov112_021FFBD8
	ldr r1, _021E7460 ; =ov112_021E7398
	mov r2, #0
	add r3, r5, r4
	str r6, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021E745C ; =ov112_021FFBD8
	bl OS_WakeupThreadDirect
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021E7440: .word ov112_021FFAA4
_021E7444: .word ov112_021E6A6C
_021E7448: .word ov112_021E6F60
_021E744C: .word ov112_021E6BDC
_021E7450: .word ov112_021FFB08
_021E7454: .word ov112_021FFB20
_021E7458: .word ov112_021FFAC0
_021E745C: .word ov112_021FFBD8
_021E7460: .word ov112_021E7398
	thumb_func_end ov112_021E73C8

