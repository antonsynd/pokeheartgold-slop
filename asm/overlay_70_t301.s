#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240D00
	.extern ov70_0223E76C

	.text

	.text
	thumb_func_start ov70_02240D00
ov70_02240D00: ; 0x02240D00
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov70_0223E76C
	cmp r0, #0
	beq _02240D1E
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _02240D1E
	mov r0, #2
	pop {r4, pc}
_02240D1E:
	ldr r0, _02240D40 ; =0x000011F8
	ldrh r1, [r4, r0]
	mov r0, #0x87
	lsl r0, r0, #2
	cmp r1, r0
	bne _02240D3A
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _02240D3A
	mov r0, #1
	pop {r4, pc}
_02240D3A:
	mov r0, #0
	pop {r4, pc}
	nop
_02240D40: .word 0x000011F8
	thumb_func_end ov70_02240D00

