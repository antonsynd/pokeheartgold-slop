#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022426F4
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_02245D66
	.extern ov70_02245D67
	.extern ov70_02245DB0

	.text

	.text
	thumb_func_start ov70_022426F4
ov70_022426F4: ; 0x022426F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022427B0 ; =gSystem
	ldr r4, [r5, #0x48]
	ldr r1, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r1
	beq _0224271C
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _02242716
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242738
_02242716:
	mov r0, #3
	str r0, [r5, #0x48]
	b _02242738
_0224271C:
	mov r0, #0x80
	tst r0, r1
	beq _02242738
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #3
	beq _02242734
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242738
_02242734:
	mov r0, #0
	str r0, [r5, #0x48]
_02242738:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _02242764
	ldr r1, _022427B8 ; =ov70_02245D66
	lsl r3, r0, #1
	ldr r2, _022427BC ; =ov70_02245D67
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #3
	ldr r0, [r5, #0xc]
	bne _0224275E
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242764
_0224275E:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_02242764:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02242164
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02242784
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, _022427C0 ; =ov70_02245DB0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02242784:
	ldr r1, _022427B0 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0224279E
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	lsl r1, r0, #2
	ldr r0, _022427C0 ; =ov70_02245DB0
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_0224279E:
	mov r1, #2
	tst r1, r2
	beq _022427AE
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_022427AE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022427B0: .word gSystem
_022427B4: .word 0x000005DC
_022427B8: .word ov70_02245D66
_022427BC: .word ov70_02245D67
_022427C0: .word ov70_02245DB0
	thumb_func_end ov70_022426F4

