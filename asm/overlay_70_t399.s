#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244F68
	.extern ov70_02238C14

	.text

	.text
	thumb_func_start ov70_02244F68
ov70_02244F68: ; 0x02244F68
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xbf
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02244F9A
	mov r0, #0
	str r0, [sp]
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xa
	lsl r2, r2, #2
	mov r3, #8
	bl ov70_02238C14
	ldr r1, _02244FA0 ; =0x000011C8
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02244F9A:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02244FA0: .word 0x000011C8
	thumb_func_end ov70_02244F68

