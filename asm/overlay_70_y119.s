#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B4D4
	.public ov70_0223B55C
	.public ov70_0223B6EC
	.extern ov70_02238F9C
	.extern ov70_0223B7CC
	.extern ov70_0223B8E0
	.extern ov70_0223B9C8
	.extern ov70_0223BAE0
	.extern ov70_0223BC7C
	.extern ov70_0223C2EC
	.extern ov70_0223CB1C
	.extern ov70_0223CC04
	.extern ov70_0223CCA4
	.extern ov70_0223F1D8
	.extern ov70_0223F244
	.extern ov70_0223F2BC
	.extern ov70_0223F370
	.extern ov70_0223F864
	.extern ov70_02242014
	.extern ov70_022464FE
	.extern ov70_02246500
	.extern ov70_02246528

	.text

	.text
	thumb_func_start ov70_0223B4D4
ov70_0223B4D4: ; 0x0223B4D4
	push {r3, r4, r5, lr}
	ldr r3, _0223B558 ; =0x00000F14
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #0
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #1
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	mov r1, #3
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	add r2, r1, #0
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #4
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	mov r2, #3
	ldr r5, [r4, r3]
	add r3, r2, #0
	sub r3, #0x23
	ldr r0, [r4, #4]
	mov r1, #5
	sub r3, r3, r5
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #6
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	ldr r3, _0223B558 ; =0x00000F14
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r1, #7
	mov r2, #3
	neg r3, r3
	bl BgSetPosTextAndCommit
	pop {r3, r4, r5, pc}
	nop
_0223B558: .word 0x00000F14
	thumb_func_end ov70_0223B4D4

	thumb_func_start ov70_0223B55C
ov70_0223B55C: ; 0x0223B55C
	push {r3, r4, lr}
	sub sp, #0x3c
	add r4, r0, #0
	bl ov70_0223BC7C
	ldr r0, [r4, #4]
	bl ov70_0223B7CC
	add r0, r4, #0
	bl ov70_0223B8E0
	add r0, r4, #0
	bl ov70_0223BAE0
	add r0, r4, #0
	bl ov70_0223B9C8
	ldr r0, [r4, #4]
	ldr r3, _0223B6AC ; =0x00000F58
	str r0, [sp, #0xc]
	add r0, r4, r3
	str r0, [sp, #0x10]
	ldr r0, _0223B6B0 ; =0x00001168
	add r1, r4, r0
	str r1, [sp, #0x14]
	mov r1, #0xdd
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	sub r1, r1, #4
	str r2, [sp, #0x18]
	add r2, r3, #0
	sub r2, #0x54
	ldr r2, [r4, r2]
	sub r3, #0x50
	str r2, [sp, #0x1c]
	ldr r2, [r4, r3]
	add r0, #0x5c
	str r2, [sp, #0x20]
	ldr r1, [r4, r1]
	mov r2, #0xba
	lsl r2, r2, #4
	str r1, [sp, #0x24]
	ldr r1, [r4, r2]
	str r1, [sp, #0x28]
	add r1, r2, #4
	ldr r1, [r4, r1]
	add r2, #0x10
	str r1, [sp, #0x2c]
	ldr r1, [r4, r2]
	mov r2, #1
	str r1, [sp, #0x30]
	ldr r1, [r4]
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x34]
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x38]
	add r0, sp, #0xc
	bl ov70_02242014
	ldr r1, _0223B6B4 ; =0x000011A8
	mov r2, #0xba
	str r0, [r4, r1]
	ldr r0, _0223B6B8 ; =0x00001058
	lsl r2, r2, #4
	sub r1, #0x30
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_0223CB1C
	ldr r3, _0223B6BC ; =0x000011DE
	mov r2, #0xba
	ldr r1, _0223B6C0 ; =0x000010D8
	lsl r2, r2, #4
	ldrh r3, [r4, r3]
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl ov70_0223CC04
	mov r3, #0
	ldr r0, _0223B6C4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	ldr r2, _0223B6C8 ; =0x00000BA4
	ldr r0, _0223B6CC ; =0x00001068
	ldr r1, [r4, r2]
	sub r2, #0x1a
	ldrsh r2, [r4, r2]
	add r0, r4, r0
	bl ov70_0223F1D8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B6C4 ; =0x00010200
	mov r2, #0xba
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	sub r2, #0x14
	ldr r0, _0223B6D0 ; =0x00001088
	ldrsb r2, [r4, r2]
	add r0, r4, r0
	mov r3, #1
	bl ov70_0223F2BC
	ldr r1, _0223B6D4 ; =0x00000B8D
	mov r2, #1
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov70_0223F864
	add r2, r0, #0
	mov r3, #0
	ldr r0, _0223B6C4 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #1
	mov r1, #0xba
	str r0, [sp, #8]
	ldr r0, _0223B6D8 ; =0x000010A8
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov70_0223F370
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223B6C4 ; =0x00010200
	mov r2, #0xbb
	str r0, [sp, #8]
	lsl r2, r2, #4
	ldr r3, _0223B6DC ; =0x000012CC
	ldr r0, _0223B6E0 ; =0x00001188
	ldr r1, [r4, r2]
	sub r2, #0x10
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r4, r0
	bl ov70_0223F244
	ldr r1, _0223B6E4 ; =ov70_0223CCA4
	ldr r0, _0223B6E8 ; =0x00001208
	str r1, [r4, r0]
	ldr r0, [r4, #0x24]
	cmp r0, #0xd
	bne _0223B6A2
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
_0223B6A2:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0x3c
	pop {r3, r4, pc}
	.balign 4, 0
_0223B6AC: .word 0x00000F58
_0223B6B0: .word 0x00001168
_0223B6B4: .word 0x000011A8
_0223B6B8: .word 0x00001058
_0223B6BC: .word 0x000011DE
_0223B6C0: .word 0x000010D8
_0223B6C4: .word 0x00010200
_0223B6C8: .word 0x00000BA4
_0223B6CC: .word 0x00001068
_0223B6D0: .word 0x00001088
_0223B6D4: .word 0x00000B8D
_0223B6D8: .word 0x000010A8
_0223B6DC: .word 0x000012CC
_0223B6E0: .word 0x00001188
_0223B6E4: .word ov70_0223CCA4
_0223B6E8: .word 0x00001208
	thumb_func_end ov70_0223B55C

	thumb_func_start ov70_0223B6EC
ov70_0223B6EC: ; 0x0223B6EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223B768 ; =ov70_02246528
	ldr r1, [r1, r2]
	blx r1
	mov r7, #0x6a
	str r0, [sp]
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0223B704:
	ldr r3, _0223B76C ; =0x0000120E
	ldr r1, _0223B770 ; =0x0000120C
	ldr r2, _0223B774 ; =0x00000F14
	ldr r0, _0223B778 ; =0x00000EE4
	ldrsh r3, [r4, r3]
	ldr r2, [r5, r2]
	ldrsh r1, [r4, r1]
	ldr r0, [r4, r0]
	add r2, r2, r3
	bl ov70_02238F9C
	ldr r2, _0223B774 ; =0x00000F14
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0x37
	add r2, r2, r7
	bl ov70_02238F9C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blt _0223B704
	add r0, r5, #0
	bl ov70_0223C2EC
	add r4, r0, #0
	add r0, r5, #0
	bl ov70_0223C2EC
	add r2, r0, #0
	ldr r0, _0223B77C ; =0x00000DCC
	mov r3, #6
	add r6, r4, #0
	mul r6, r3
	mul r3, r2
	ldr r2, _0223B780 ; =ov70_02246500
	ldr r1, _0223B784 ; =ov70_022464FE
	ldrh r3, [r2, r3]
	ldr r2, _0223B774 ; =0x00000F14
	ldrh r1, [r1, r6]
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	sub r2, r3, r2
	bl ov70_02238F9C
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B768: .word ov70_02246528
_0223B76C: .word 0x0000120E
_0223B770: .word 0x0000120C
_0223B774: .word 0x00000F14
_0223B778: .word 0x00000EE4
_0223B77C: .word 0x00000DCC
_0223B780: .word ov70_02246500
_0223B784: .word ov70_022464FE
	thumb_func_end ov70_0223B6EC

