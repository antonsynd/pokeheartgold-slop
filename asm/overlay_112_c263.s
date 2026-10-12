#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE044
	.extern ov112_021EAAE4
	.extern ov112_021ED610
	.extern ov112_021ED640
	.extern ov112_021EDFE8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE044
ov112_021EE044: ; 0x021EE044
	push {r4, lr}
	ldr r1, _021EE0E0 ; =0x0001F2C0
	add r4, r0, #0
	add r1, r4, r1
	bl ov112_021EAAE4
	ldr r0, _021EE0E4 ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EE0DC
	bl IsFanfarePlaying
	cmp r0, #0
	bne _021EE0DC
	add r0, r4, #0
	bl ov112_021ED610
	cmp r0, #0
	bne _021EE088
	ldr r1, _021EE0E8 ; =0x00009D44
	mov r0, #0
	add r1, r4, r1
	mov r2, #0x10
	bl MIi_CpuClearFast
	ldr r1, _021EE0EC ; =0x000010E7
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021EE088:
	add r0, r4, #0
	bl ov112_021ED640
	cmp r0, #0
	bne _021EE0AC
	mov r1, #0xad
	lsl r1, r1, #8
	mov r2, #0xbf
	mov r0, #0
	add r1, r4, r1
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	ldr r1, _021EE0F0 ; =0x0000AABC
	mov r0, #0x20
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021EE0AC:
	add r0, r4, #0
	bl ov112_021EDFE8
	cmp r0, #0
	bne _021EE0D0
	ldr r0, _021EE0F0 ; =0x0000AABC
	ldrb r0, [r4, r0]
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _021EE0D0
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bne _021EE0D0
	ldr r0, _021EE0EC ; =0x000010E7
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021EE0D8
_021EE0D0:
	mov r0, #6
	str r0, [r4, #4]
	mov r0, #0x42
	pop {r4, pc}
_021EE0D8:
	mov r0, #0x27
	pop {r4, pc}
_021EE0DC:
	mov r0, #0x26
	pop {r4, pc}
	.balign 4, 0
_021EE0E0: .word 0x0001F2C0
_021EE0E4: .word 0x0001E524
_021EE0E8: .word 0x00009D44
_021EE0EC: .word 0x000010E7
_021EE0F0: .word 0x0000AABC
	thumb_func_end ov112_021EE044

