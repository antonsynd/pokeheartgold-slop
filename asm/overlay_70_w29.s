#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F24

	.text

	.text
	thumb_func_start ov70_02238F24
ov70_02238F24: ; 0x02238F24
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02238F5C ; =0x000011FA
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _02238F58
	ldr r0, [r4]
	sub r1, r1, #1
	ldr r0, [r0, #0xc]
	bl PCStorage_CountMonsAndEggsInBox
	ldr r1, _02238F60 ; =0x000011F8
	ldrh r2, [r4, r1]
	add r0, r2, r0
	strh r0, [r4, r1]
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0x13
	bne _02238F58
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
_02238F58:
	pop {r4, pc}
	nop
_02238F5C: .word 0x000011FA
_02238F60: .word 0x000011F8
	thumb_func_end ov70_02238F24

