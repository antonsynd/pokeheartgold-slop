#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EED08
	.extern ov112_021E9290
	.extern ov112_021E95A0
	.extern ov112_021EAA10
	.extern ov112_021ED0C8
	.extern ov112_021EE7A8
	.extern ov112_021EE920
	.extern ov112_021EEA7C
	.extern ov112_021EEAF0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EED08
ov112_021EED08: ; 0x021EED08
	push {r4, lr}
	ldr r1, _021EEDE0 ; =0x0001E430
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, r1]
	ldr r1, [r4, #0x10]
	cmp r1, #1
	bne _021EED8E
	bl ov112_021EE7A8
	add r0, r4, #0
	mov r1, #1
	bl ov112_021EEAF0
	add r0, r4, #0
	bl ov112_021EEA7C
	add r0, r4, #0
	bl ov112_021EE920
	ldr r0, _021EEDE4 ; =0x000010E7
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021EED46
	ldr r0, _021EEDE8 ; =0x0001E440
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0
	bl sub_020326A4
_021EED46:
	ldr r0, _021EEDE0 ; =0x0001E430
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EED76
	ldr r2, _021EEDEC ; =0x0001D7AC
	mov r3, #0
	add r1, r4, r2
	sub r2, #0x10
	add r2, r4, r2
	bl ov112_021E9290
	add r0, r4, #0
	bl ov112_021ED0C8
	add r0, r4, #0
	bl ov112_021EAA10
	ldr r0, _021EEDF0 ; =0x0001F2C2
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, _021EEDF4 ; =0x000004A2
	bl PlayFanfare
	b _021EED82
_021EED76:
	add r0, r4, #0
	bl ov112_021EAA10
	ldr r0, _021EEDF8 ; =0x0001F2D6
	mov r1, #0x1f
	strh r1, [r4, r0]
_021EED82:
	add r0, r4, #0
	bl ov112_021E95A0
	mov r0, #0
	str r0, [r4, #8]
	b _021EEDD2
_021EED8E:
	cmp r1, #2
	bne _021EEDA4
	bl ov112_021EEA7C
	add r0, r4, #0
	mov r1, #0
	bl ov112_021EEAF0
	mov r0, #5
	str r0, [r4, #8]
	b _021EEDD2
_021EEDA4:
	cmp r1, #4
	bne _021EEDD2
	bl ov112_021EE7A8
	ldr r0, _021EEDE0 ; =0x0001E430
	ldr r2, _021EEDEC ; =0x0001D7AC
	ldr r0, [r4, r0]
	add r1, r4, r2
	sub r2, #0x10
	add r2, r4, r2
	mov r3, #0
	bl ov112_021E9290
	add r0, r4, #0
	bl ov112_021ED0C8
	mov r2, #0
	ldr r0, _021EEDE8 ; =0x0001E440
	str r2, [r4, #8]
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020326A4
_021EEDD2:
	ldr r1, _021EEDE4 ; =0x000010E7
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EEDE0: .word 0x0001E430
_021EEDE4: .word 0x000010E7
_021EEDE8: .word 0x0001E440
_021EEDEC: .word 0x0001D7AC
_021EEDF0: .word 0x0001F2C2
_021EEDF4: .word 0x000004A2
_021EEDF8: .word 0x0001F2D6
	thumb_func_end ov112_021EED08

