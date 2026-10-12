#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E97A8
	.extern ov73_021E83EC
	.extern ov73_021EA0F0
	.extern ov73_021EA134

	.text

	.text
	thumb_func_start ov73_021E97A8
ov73_021E97A8: ; 0x021E97A8
	push {r4, lr}
	ldr r2, _021E986C ; =gSystem
	mov r1, #0x40
	ldr r3, [r2, #0x4c]
	add r4, r0, #0
	tst r1, r3
	beq _021E97EE
	add r0, #0x94
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0xa
	ble _021E97D4
	add r0, r4, #0
	mov r1, #1
	add r0, #0x94
	str r1, [r0]
_021E97D4:
	ldr r0, _021E9870 ; =0x00000DE8
	ldr r1, _021E9874 ; =0x00000BEC
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x94
	ldr r2, [r4]
	mov r3, #2
	bl ov73_021EA0F0
	ldr r0, _021E9878 ; =0x000005DC
	bl PlaySE
	b _021E9866
_021E97EE:
	mov r1, #0x80
	tst r1, r3
	beq _021E982C
	add r0, #0x94
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bge _021E9812
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x94
	str r1, [r0]
_021E9812:
	ldr r0, _021E9870 ; =0x00000DE8
	ldr r1, _021E9874 ; =0x00000BEC
	add r0, r4, r0
	ldr r1, [r4, r1]
	add r4, #0x94
	ldr r2, [r4]
	mov r3, #2
	bl ov73_021EA0F0
	ldr r0, _021E9878 ; =0x000005DC
	bl PlaySE
	b _021E9866
_021E982C:
	ldr r2, [r2, #0x48]
	mov r1, #1
	tst r1, r2
	beq _021E984E
	mov r1, #0
	add r2, r1, #0
	bl ov73_021EA134
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x20
	bl ov73_021E83EC
	ldr r0, _021E9878 ; =0x000005DC
	bl PlaySE
	b _021E9866
_021E984E:
	mov r1, #2
	tst r1, r2
	beq _021E9866
	mov r1, #0
	add r2, r1, #0
	bl ov73_021EA134
	mov r0, #0x17
	str r0, [r4, #0x1c]
	ldr r0, _021E9878 ; =0x000005DC
	bl PlaySE
_021E9866:
	mov r0, #3
	pop {r4, pc}
	nop
_021E986C: .word gSystem
_021E9870: .word 0x00000DE8
_021E9874: .word 0x00000BEC
_021E9878: .word 0x000005DC
	thumb_func_end ov73_021E97A8

