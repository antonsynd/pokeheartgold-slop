#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223C304
	.extern ov70_02238F9C
	.extern ov70_0223C2EC
	.extern ov70_022464FE
	.extern ov70_02246500
	.extern ov70_02246502

	.text

	.text
	thumb_func_start ov70_0223C304
ov70_0223C304: ; 0x0223C304
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223C404 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0223C346
	ldr r0, _0223C408 ; =0x000011C4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223C32E
	ldr r0, [r1, #0x28]
	cmp r0, #0
	ble _0223C3BE
	sub r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
	b _0223C3BE
_0223C32E:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	ble _0223C3BE
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
	ldr r0, _0223C408 ; =0x000011C4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x2c]
	sub r0, r0, #1
	str r0, [r1, #0x2c]
	b _0223C3BE
_0223C346:
	mov r1, #0x80
	tst r1, r0
	beq _0223C380
	ldr r0, _0223C408 ; =0x000011C4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0223C368
	ldr r0, [r1, #0x28]
	cmp r0, #3
	bge _0223C3BE
	add r0, r0, #1
	str r0, [r1, #0x28]
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
	b _0223C3BE
_0223C368:
	ldr r0, [r1, #0x2c]
	cmp r0, #2
	bge _0223C3BE
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
	ldr r0, _0223C408 ; =0x000011C4
	ldr r1, [r5, r0]
	ldr r0, [r1, #0x2c]
	add r0, r0, #1
	str r0, [r1, #0x2c]
	b _0223C3BE
_0223C380:
	mov r1, #0x10
	tst r1, r0
	beq _0223C3A0
	ldr r0, _0223C408 ; =0x000011C4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #1
	beq _0223C396
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
_0223C396:
	ldr r0, _0223C408 ; =0x000011C4
	mov r1, #1
	ldr r0, [r5, r0]
	str r1, [r0, #0x24]
	b _0223C3BE
_0223C3A0:
	mov r1, #0x20
	tst r0, r1
	beq _0223C3BE
	ldr r0, _0223C408 ; =0x000011C4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0223C3B6
	ldr r0, _0223C40C ; =0x000005DC
	bl PlaySE
_0223C3B6:
	ldr r0, _0223C408 ; =0x000011C4
	mov r1, #0
	ldr r0, [r5, r0]
	str r1, [r0, #0x24]
_0223C3BE:
	add r0, r5, #0
	bl ov70_0223C2EC
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0223C2EC
	add r2, r0, #0
	ldr r0, _0223C410 ; =0x00000DCC
	mov r3, #6
	add r6, r4, #0
	mul r6, r3
	ldr r1, _0223C414 ; =ov70_022464FE
	mul r3, r2
	ldr r2, _0223C418 ; =ov70_02246500
	ldrh r1, [r1, r6]
	ldrh r2, [r2, r3]
	ldr r0, [r5, r0]
	bl ov70_02238F9C
	add r0, r5, #0
	bl ov70_0223C2EC
	add r3, r0, #0
	ldr r0, _0223C410 ; =0x00000DCC
	mov r1, #6
	add r2, r3, #0
	mul r2, r1
	ldr r1, _0223C41C ; =ov70_02246502
	ldr r0, [r5, r0]
	ldrh r1, [r1, r2]
	bl Sprite_SetAnimCtrlSeq
	pop {r4, r5, r6, pc}
	nop
_0223C404: .word gSystem
_0223C408: .word 0x000011C4
_0223C40C: .word 0x000005DC
_0223C410: .word 0x00000DCC
_0223C414: .word ov70_022464FE
_0223C418: .word ov70_02246500
_0223C41C: .word ov70_02246502
	thumb_func_end ov70_0223C304

