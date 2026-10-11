#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_02238358

	.text

	.text
	thumb_func_start ov12_02238358
ov12_02238358: ; 0x02238358
	push {r3, r4, r5, r6, r7, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r2, [r4, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223839E
	ldr r1, _02238430 ; =0x0000240C
	mov r2, #0x10
	ldr r3, [r4, r1]
	tst r2, r3
	bne _0223839E
	sub r1, #0x10
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02238380
	ldr r1, [r4, #0x30]
	bl BattleContext_Main
_02238380:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223842A
	add r5, r4, #0
_0223838A:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223838A
	b _0223842A
_0223839E:
	ldr r0, _02238434 ; =0x000023FC
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _022383BA
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl BattleContext_Main
	ldr r1, _02238438 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_022621C4
_022383BA:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _022383E0
	add r5, r4, #0
	add r7, r6, #0
_022383C6:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_022621C4
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _022383C6
_022383E0:
	ldr r0, _02238438 ; =0x000023FE
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223842A
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02238404
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl BattleContext_Main
	ldr r1, _02238438 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_022621C4
_02238404:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223842A
	add r5, r4, #0
	add r7, r6, #0
_02238410:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_022621C4
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238410
_0223842A:
	ldr r0, _02238438 ; =0x000023FE
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238430: .word 0x0000240C
_02238434: .word 0x000023FC
_02238438: .word 0x000023FE
	thumb_func_end ov12_02238358

