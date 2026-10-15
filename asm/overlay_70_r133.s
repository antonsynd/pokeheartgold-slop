#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223AFFC
	.extern ov70_02238D84
	.extern ov70_0223AFA8
	.extern ov70_0223B364
	.extern ov70_02241164
	.extern ov70_02245498
	.extern ov70_022454A4
	.extern ov70_022454A5

	.text

	.text
	thumb_func_start ov70_0223AFFC
ov70_0223AFFC: ; 0x0223AFFC
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0223B114 ; =gSystem
	mov r2, #1
	ldr r1, [r1, #0x48]
	add r4, r0, #0
	add r3, r1, #0
	tst r3, r2
	beq _0223B02C
	ldr r1, _0223B118 ; =0x00000F0F
	mov r3, #0
	str r1, [sp]
	mov r1, #0x10
	bl ov70_0223B364
	add r0, r4, #0
	mov r1, #3
	mov r2, #4
	bl ov70_02238D84
	ldr r0, _0223B11C ; =0x000005DC
	bl PlaySE
	b _0223B10C
_0223B02C:
	mov r3, #2
	tst r3, r1
	beq _0223B054
	mov r0, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223B11C ; =0x000005DC
	bl PlaySE
	b _0223B10C
_0223B054:
	mov r2, #0x20
	tst r2, r1
	beq _0223B07A
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r5, [r4, r2]
	ldr r1, _0223B120 ; =ov70_022454A4
	lsl r3, r5, #1
	ldrb r1, [r1, r3]
	cmp r5, r1
	beq _0223B10C
	sub r2, r2, #4
	ldr r3, [r4, r2]
	add r2, r1, #1
	cmp r3, r2
	blt _0223B10C
	bl ov70_0223AFA8
	b _0223B10C
_0223B07A:
	mov r2, #0x10
	tst r1, r2
	beq _0223B0A0
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r5, [r4, r2]
	ldr r1, _0223B124 ; =ov70_022454A5
	lsl r3, r5, #1
	ldrb r1, [r1, r3]
	cmp r5, r1
	beq _0223B10C
	sub r2, r2, #4
	ldr r3, [r4, r2]
	add r2, r1, #1
	cmp r3, r2
	blt _0223B10C
	bl ov70_0223AFA8
	b _0223B10C
_0223B0A0:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02241164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223B0BA
	add r0, r4, #0
	bl ov70_0223AFA8
_0223B0BA:
	ldr r0, _0223B128 ; =ov70_02245498
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	bne _0223B0E6
	ldr r0, _0223B118 ; =0x00000F0F
	mov r1, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0223B364
	add r0, r4, #0
	mov r1, #3
	mov r2, #4
	bl ov70_02238D84
	ldr r0, _0223B11C ; =0x000005DC
	bl PlaySE
	b _0223B10C
_0223B0E6:
	cmp r0, #1
	bne _0223B10C
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223B11C ; =0x000005DC
	bl PlaySE
_0223B10C:
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B114: .word gSystem
_0223B118: .word 0x00000F0F
_0223B11C: .word 0x000005DC
_0223B120: .word ov70_022454A4
_0223B124: .word ov70_022454A5
_0223B128: .word ov70_02245498
	thumb_func_end ov70_0223AFFC

