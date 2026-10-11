#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223BE84
	.public ov70_0223BF00
	.extern ov70_02238D84
	.extern ov70_0223BD80
	.extern ov70_0223BD90
	.extern ov70_0223C2EC
	.extern ov70_0223C304
	.extern ov70_0223C420
	.extern ov70_0223CAC4
	.extern ov70_0223CC68
	.extern ov70_02241234

	.text

	.text
	thumb_func_start ov70_0223BE84
ov70_0223BE84: ; 0x0223BE84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov70_0223BD80
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223BEA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0223C420
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0223BD90
	b _0223BEEE
_0223BEA8:
	add r0, r5, #0
	bl ov70_0223C304
	ldr r0, _0223BEF4 ; =gSystem
	mov r2, #1
	ldr r1, [r0, #0x48]
	add r0, r1, #0
	tst r0, r2
	beq _0223BECA
	add r0, r5, #0
	bl ov70_0223C2EC
	add r1, r0, #0
	add r0, r5, #0
	bl ov70_0223BD90
	b _0223BEEE
_0223BECA:
	mov r0, #2
	tst r0, r1
	beq _0223BEEE
	ldr r0, _0223BEF8 ; =0x00000F0F
	mov r1, #0xf
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r5, #0
	mov r1, #0x15
	mov r2, #0x17
	bl ov70_02238D84
	ldr r0, _0223BEFC ; =0x000005DC
	bl PlaySE
_0223BEEE:
	mov r0, #3
	pop {r3, r4, r5, pc}
	nop
_0223BEF4: .word gSystem
_0223BEF8: .word 0x00000F0F
_0223BEFC: .word 0x000005DC
	thumb_func_end ov70_0223BE84

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

