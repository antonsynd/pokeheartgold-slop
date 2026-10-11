#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238E50
	.public ov70_022447A0

	.text

	thumb_func_start ov70_022447A0
ov70_022447A0: ; 0x022447A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244800 ; =0x000011B0
	mov r1, #0x3d
	ldr r0, [r4, r0]
	bl Handle2dMenuInput_DeleteOnFinish
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022447FC
	sub r1, r1, #1
	cmp r0, r1
	bne _022447DE
	bl ov00_021EC5B4
	cmp r0, #0
	bne _022447CA
	mov r0, #0
	str r0, [r4, #0x2c]
	b _022447FC
_022447CA:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	bl ov70_02238E50
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _022447FC
_022447DE:
	bl ov00_021EC5B4
	cmp r0, #0
	beq _022447EA
	bl ov00_021EC8D8
_022447EA:
	bl sub_0203946C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #0xb
	str r0, [r4, #0x2c]
_022447FC:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_02244800: .word 0x000011B0
	thumb_func_end ov70_022447A0

