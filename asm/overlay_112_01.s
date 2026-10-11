#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5964
	.extern _021FF500
	.extern _021FF9E0
	.extern ov112_021E594C
	.extern ov112_021FFA18
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5964
ov112_021E5964: ; 0x021E5964
	push {r3, lr}
	bl CARD_SpiWaitInit
	mov r0, #0x32
	bl CARD_SetSpiWriteWaitCycles
	mov r0, #0x32
	bl CARD_SetSpiReadWaitCycles
	ldr r0, _021E599C ; =ov112_021FFA18
	bl CARD_SpiWaitReadRange
	bl ov112_021E594C
	ldr r0, _021E59A0 ; =_021FF500
	mov r1, #0xff
	strb r1, [r0]
	strb r1, [r0, #1]
	bl OS_GetTick
	ldr r1, _021E59A4 ; =_021FF9E0
	str r0, [r1, #0x20]
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x1c]
	pop {r3, pc}
	nop
_021E599C: .word ov112_021FFA18
_021E59A0: .word _021FF500
_021E59A4: .word _021FF9E0
	thumb_func_end ov112_021E5964

