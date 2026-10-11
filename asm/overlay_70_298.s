#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244CCC

	.text

	thumb_func_start ov70_02244CCC
ov70_02244CCC: ; 0x02244CCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244CFC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02244CE8
	mov r0, #2
	tst r0, r1
	bne _02244CE8
	ldr r0, _02244D00 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _02244CF6
_02244CE8:
	ldr r0, _02244D04 ; =0x00000F48
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E5D4
	mov r0, #0
	str r0, [r4, #0x2c]
_02244CF6:
	mov r0, #3
	pop {r4, pc}
	nop
_02244CFC: .word gSystem
_02244D00: .word gSystem + 0x40
_02244D04: .word 0x00000F48
	thumb_func_end ov70_02244CCC

