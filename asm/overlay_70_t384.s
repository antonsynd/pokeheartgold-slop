#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022448C0
	.extern ov70_02238F80

	.text

	.text
	thumb_func_start ov70_022448C0
ov70_022448C0: ; 0x022448C0
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov00_021EC60C
	bl ov00_021EC5B4
	cmp r0, #0
	beq _0224493E
	bl ov00_021EC724
	cmp r0, #8
	bhi _0224491E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022448E6: ; jump table
	.short _0224491E - _022448E6 - 2 ; case 0
	.short _0224491E - _022448E6 - 2 ; case 1
	.short _0224491E - _022448E6 - 2 ; case 2
	.short _0224491E - _022448E6 - 2 ; case 3
	.short _02244934 - _022448E6 - 2 ; case 4
	.short _0224491E - _022448E6 - 2 ; case 5
	.short _0224491E - _022448E6 - 2 ; case 6
	.short _022448F8 - _022448E6 - 2 ; case 7
	.short _0224491E - _022448E6 - 2 ; case 8
_022448F8:
	add r0, sp, #8
	add r1, sp, #4
	bl ov00_021EC11C
	str r0, [r4, #0x40]
	ldr r0, [sp, #8]
	str r0, [r4, #0x44]
	ldr r0, [sp, #4]
	str r0, [r4, #0x48]
	bl ov00_021EC210
	bl ov00_021EC8D8
	add r0, r4, #0
	bl ov70_02238F80
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _0224493E
_0224491E:
	add r0, sp, #0
	bl ov00_021EC0FC
	add r0, r4, #0
	bl ov70_02238F80
	mov r0, #0x15
	str r0, [r4, #0x2c]
	sub r0, #0x17
	str r0, [r4, #0x3c]
	b _0224493E
_02244934:
	add r0, sp, #0xc
	bl ov00_021EC9E0
	mov r0, #4
	str r0, [r4, #0x2c]
_0224493E:
	mov r0, #3
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov70_022448C0

