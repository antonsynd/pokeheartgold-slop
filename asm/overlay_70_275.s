#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_02238E44
	.public ov70_02238F64
	.public ov70_02244038
	.public ov70_02244124
	.public ov70_022441A4
	.public ov70_022442B4
	.public ov70_0224458C
	.public ov70_02244670
	.public ov70_02244FA4
	.public ov70_02245124
	.public ov70_02246780

	.text

	thumb_func_start ov70_02244038
ov70_02244038: ; 0x02244038
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov70_02244670
	ldr r2, _02244114 ; =0x04000304
	ldr r0, _02244118 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #4]
	bl ov70_022441A4
	add r0, r4, #0
	bl ov70_022442B4
	add r0, r4, #0
	bl ov70_0224458C
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	bl ov00_021EC5B4
	cmp r0, #0
	bne _022440FA
	ldr r1, [r4]
	ldr r0, [r1, #0x3c]
	cmp r0, #0
	beq _022440EE
	ldr r0, [r1, #0x20]
	bl sub_02039418
	ldr r0, _0224411C ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, _02244120 ; =0x00000BA8
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r3, r2, #0
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov70_02238D84
	add r0, r4, #0
	bl ov70_02238F64
	b _0224410C
_022440EE:
	mov r0, #4
	bl Sys_ClearSleepDisableFlag
	mov r0, #0
	str r0, [r4, #0x2c]
	b _0224410C
_022440FA:
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl sub_02039418
	add r0, r4, #0
	bl ov70_02245124
	mov r0, #0x11
	str r0, [r4, #0x2c]
_0224410C:
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02244114: .word 0x04000304
_02244118: .word 0xFFFF7FFF
_0224411C: .word 0x00000F0F
_02244120: .word 0x00000BA8
	thumb_func_end ov70_02244038

	thumb_func_start ov70_02244124
ov70_02244124: ; 0x02244124
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_02238E44
	bl sub_0203A930
	ldr r4, [r5, #0x2c]
	ldr r1, _02244150 ; =ov70_02246780
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x2c]
	cmp r4, r1
	beq _0224414E
	mov r1, #0x16
	mov r2, #0
	lsl r1, r1, #8
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_0224414E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244150: .word ov70_02246780
	thumb_func_end ov70_02244124

