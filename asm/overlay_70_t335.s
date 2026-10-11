#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022428C0
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_022427C4
	.extern ov70_02242860
	.extern ov70_02245D80
	.extern ov70_02245D81

	.text

	.text
	thumb_func_start ov70_022428C0
ov70_022428C0: ; 0x022428C0
	push {r3, r4, r5, lr}
	ldr r1, _02242990 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _022428E8
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _022428E2
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242922
_022428E2:
	mov r0, #4
	str r0, [r5, #0x48]
	b _02242922
_022428E8:
	mov r1, #0x80
	tst r1, r2
	beq _02242906
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #4
	beq _02242900
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242922
_02242900:
	mov r0, #0
	str r0, [r5, #0x48]
	b _02242922
_02242906:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242916
	sub r1, #0x21
	bl ov70_022427C4
	b _02242922
_02242916:
	mov r1, #0x10
	tst r1, r2
	beq _02242922
	mov r1, #1
	bl ov70_022427C4
_02242922:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _0224294E
	ldr r1, _02242998 ; =ov70_02245D80
	lsl r3, r0, #1
	ldr r2, _0224299C ; =ov70_02245D81
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #4
	ldr r0, [r5, #0xc]
	bne _02242948
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _0224294E
_02242948:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_0224294E:
	add r0, r5, #0
	mov r1, #2
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242968
	add r0, r5, #0
	bl ov70_02242860
	pop {r3, r4, r5, pc}
_02242968:
	ldr r1, _02242990 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0224297C
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_02242860
	pop {r3, r4, r5, pc}
_0224297C:
	mov r1, #2
	tst r1, r2
	beq _0224298C
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_0224298C:
	pop {r3, r4, r5, pc}
	nop
_02242990: .word gSystem
_02242994: .word 0x000005DC
_02242998: .word ov70_02245D80
_0224299C: .word ov70_02245D81
	thumb_func_end ov70_022428C0

