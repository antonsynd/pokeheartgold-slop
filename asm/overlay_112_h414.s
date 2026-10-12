#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0EFC
	.public ov112_021F0F48
	.extern ov112_021FF2DC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0EFC
ov112_021F0EFC: ; 0x021F0EFC
	push {r3, lr}
	ldr r1, _021F0F3C ; =0x0000013D
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r0, [r0, r1]
	sub r0, r0, #1
	cmp r2, r0
	bge _021F0F38
	ldr r2, _021F0F40 ; =ov112_021FF2DC
	add r1, sp, #0
	ldrb r3, [r2, #7]
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #8]
	strb r3, [r1, #1]
	ldrb r3, [r2, #9]
	ldrb r2, [r2, #0xa]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0F34
	ldr r0, _021F0F44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021F0F38
_021F0F34:
	mov r0, #1
	pop {r3, pc}
_021F0F38:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F0F3C: .word 0x0000013D
_021F0F40: .word ov112_021FF2DC
_021F0F44: .word gSystem
	thumb_func_end ov112_021F0EFC

	thumb_func_start ov112_021F0F48
ov112_021F0F48: ; 0x021F0F48
	cmp r1, #0
	beq _021F0F56
	add r0, #0x85
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_021F0F56:
	add r0, #0x86
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov112_021F0F48

