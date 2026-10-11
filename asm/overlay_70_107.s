#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_0223BD90
	.public ov70_0223CAC4
	.public ov70_0223EDE4

	.text

	thumb_func_start ov70_0223BD90
ov70_0223BD90: ; 0x0223BD90
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #6
	bhi _0223BE70
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223BDA6: ; jump table
	.short _0223BDB4 - _0223BDA6 - 2 ; case 0
	.short _0223BDC2 - _0223BDA6 - 2 ; case 1
	.short _0223BDFE - _0223BDA6 - 2 ; case 2
	.short _0223BE0C - _0223BDA6 - 2 ; case 3
	.short _0223BE1A - _0223BDA6 - 2 ; case 4
	.short _0223BE4A - _0223BDA6 - 2 ; case 5
	.short _0223BE52 - _0223BDA6 - 2 ; case 6
_0223BDB4:
	mov r0, #3
	str r0, [r4, #0x2c]
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BDC2:
	ldr r0, _0223BE78 ; =0x00000B8A
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _0223BDF0
	mov r1, #0x12
	bl GetMonBaseStat
	ldr r1, _0223BE7C ; =0x000011C4
	ldr r2, [r4, r1]
	str r0, [r2, #0x20]
	ldr r1, [r4, r1]
	ldr r0, _0223BE78 ; =0x00000B8A
	ldr r1, [r1, #0x20]
	add r0, r4, r0
	bl ov70_0223EDE4
	cmp r0, #0
	beq _0223BDF0
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BDF0:
	mov r0, #6
	str r0, [r4, #0x2c]
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BDFE:
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BE0C:
	mov r0, #0xc
	str r0, [r4, #0x2c]
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BE1A:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BE70
	mov r0, #0x1d
	str r0, [r4, #0x2c]
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
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
	add sp, #0xc
	pop {r3, r4, pc}
_0223BE4A:
	mov r0, #0xf
	add sp, #0xc
	str r0, [r4, #0x2c]
	pop {r3, r4, pc}
_0223BE52:
	ldr r1, _0223BE80 ; =0x00000F0F
	mov r2, #1
	str r1, [sp]
	mov r1, #0xf
	mov r3, #0
	bl ov70_0223CAC4
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #0x17
	bl ov70_02238D84
	ldr r0, _0223BE74 ; =0x000005DC
	bl PlaySE
_0223BE70:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223BE74: .word 0x000005DC
_0223BE78: .word 0x00000B8A
_0223BE7C: .word 0x000011C4
_0223BE80: .word 0x00000F0F
	thumb_func_end ov70_0223BD90

