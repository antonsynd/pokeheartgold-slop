#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223BF00
	.extern ov70_02238D84
	.extern ov70_0223CAC4
	.extern ov70_0223CC68
	.extern ov70_02241234

	.text

	.text
	thumb_func_start ov70_0223BF00
ov70_0223BF00: ; 0x0223BF00
	push {r3, r4, lr}
	sub sp, #4
	ldr r3, _0223BF94 ; =0x00000B8A
	add r4, r0, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bne _0223BF2E
	ldr r1, _0223BF98 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0xc
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223BF9C ; =0x000005F3
	bl PlaySE
	b _0223BF8C
_0223BF2E:
	ldr r2, _0223BFA0 ; =0x000012CC
	add r1, r3, #6
	add r0, r4, r3
	add r3, #0xe
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, r4, r1
	bl ov70_0223CC68
	cmp r0, #0
	beq _0223BF66
	ldr r0, _0223BF98 ; =0x00000F0F
	mov r1, #0x21
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov70_02238D84
	ldr r0, _0223BF9C ; =0x000005F3
	bl PlaySE
	b _0223BF8C
_0223BF66:
	ldr r0, _0223BFA4 ; =0x000005FE
	bl PlaySE
	ldr r0, _0223BF98 ; =0x00000F0F
	mov r1, #0xd
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x10
	bl ov70_02238D84
	add r0, r4, #0
	bl ov70_02241234
_0223BF8C:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223BF94: .word 0x00000B8A
_0223BF98: .word 0x00000F0F
_0223BF9C: .word 0x000005F3
_0223BFA0: .word 0x000012CC
_0223BFA4: .word 0x000005FE
	thumb_func_end ov70_0223BF00

