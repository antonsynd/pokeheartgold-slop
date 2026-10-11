#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240240
	.extern ov70_02237F38
	.extern ov70_02237F58
	.extern ov70_02238D84
	.extern ov70_02238F80
	.extern ov70_022404D4
	.extern ov70_02240A7C
	.extern ov70_02240D00
	.extern ov70_02244FA4

	.text

	.text
	thumb_func_start ov70_02240240
ov70_02240240: ; 0x02240240
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	bne _0224024E
	b _022403D0
_0224024E:
	bl ov70_02237F58
	ldr r1, _022403EC ; =0x00001604
	mov r2, #0
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xf
	cmp r1, #0x10
	bhi _022402B0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224026C: ; jump table
	.short _022403BE - _0224026C - 2 ; case 0
	.short _022403BE - _0224026C - 2 ; case 1
	.short _022403C6 - _0224026C - 2 ; case 2
	.short _022403BE - _0224026C - 2 ; case 3
	.short _022403E6 - _0224026C - 2 ; case 4
	.short _022403E6 - _0224026C - 2 ; case 5
	.short _022403E6 - _0224026C - 2 ; case 6
	.short _022403E6 - _0224026C - 2 ; case 7
	.short _022403E6 - _0224026C - 2 ; case 8
	.short _022403E6 - _0224026C - 2 ; case 9
	.short _022403E6 - _0224026C - 2 ; case 10
	.short _02240372 - _0224026C - 2 ; case 11
	.short _0224030A - _0224026C - 2 ; case 12
	.short _022403BE - _0224026C - 2 ; case 13
	.short _022403E6 - _0224026C - 2 ; case 14
	.short _0224028E - _0224026C - 2 ; case 15
	.short _02240294 - _0224026C - 2 ; case 16
_0224028E:
	mov r0, #0x1a
	str r0, [r4, #0x2c]
	b _022403E6
_02240294:
	mov r1, #0x4f
	mov r0, #1
	lsl r1, r1, #2
	strh r0, [r4, #0x36]
	add r0, r4, #0
	add r1, r4, r1
	bl ov70_02240D00
	cmp r0, #0
	beq _022402FE
	cmp r0, #1
	beq _022402B2
	cmp r0, #2
	beq _022402D8
_022402B0:
	b _022403E6
_022402B2:
	add r0, r4, #0
	bl ov70_02238F80
	ldr r0, _022403F0 ; =0x00000F0F
	mov r1, #0xba
	str r0, [sp]
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x1d
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov70_02238D84
	b _022403E6
_022402D8:
	add r0, r4, #0
	bl ov70_02238F80
	ldr r0, _022403F0 ; =0x00000F0F
	mov r1, #0xba
	str r0, [sp]
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x23
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #0x1c
	bl ov70_02238D84
	b _022403E6
_022402FE:
	mov r0, #0x12
	str r0, [r4, #0x2c]
	ldr r0, _022403F4 ; =0x000011FC
	mov r1, #1
	str r1, [r4, r0]
	b _022403E6
_0224030A:
	strh r2, [r4, #0x36]
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0202DB54
	cmp r0, #0
	beq _0224036A
	mov r0, #0x3d
	bl AllocMonZeroed
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_0202DB64
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _022403F8 ; =0x00000B9C
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0x22
	str r0, [r4, #0x2c]
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0202DBA0
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0
	bl ov70_02240A7C
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl sub_0202DB5C
	add r0, r5, #0
	bl Heap_Free
	b _022403E6
_0224036A:
	add r0, r4, #0
	bl ov70_022404D4
	b _022403E6
_02240372:
	strh r2, [r4, #0x36]
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0202DB54
	cmp r0, #0
	beq _022403E6
	mov r0, #0x3d
	bl AllocMonZeroed
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	ldr r0, [r0]
	bl sub_0202DB64
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, _022403F8 ; =0x00000B9C
	mov r1, #0
	ldr r0, [r4, r0]
	bl BufferBoxMonNickname
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #0x22
	str r0, [r4, #0x2c]
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl sub_0202DB5C
	add r0, r5, #0
	bl Heap_Free
	b _022403E6
_022403BE:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	b _022403E6
_022403C6:
	mov r0, #3
	mov r1, #1
	bl ShowCommunicationError
_022403CE:
	b _022403CE
_022403D0:
	ldr r0, _022403EC ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022403E6
	bl sub_020399EC
_022403E6:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_022403EC: .word 0x00001604
_022403F0: .word 0x00000F0F
_022403F4: .word 0x000011FC
_022403F8: .word 0x00000B9C
	thumb_func_end ov70_02240240

