#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9610
	.extern ov112_021F4138
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9610
ov112_021E9610: ; 0x021E9610
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	str r1, [sp]
	bl Save_Pokedex_Get
	bl Pokedex_GetNatDexFlag
	cmp r0, #0
	beq _021E9628
	mov r5, #0x14
	b _021E962A
_021E9628:
	mov r5, #8
_021E962A:
	mov r4, #0
	cmp r5, #0
	ble _021E965C
	ldr r7, _021E9664 ; =0x0001E440
_021E9632:
	ldr r0, [r6, r7]
	add r1, r4, #0
	bl Pokewalker_CourseIsUnlocked
	cmp r0, #0
	bne _021E9656
	mov r0, #0xc0
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021E9668 ; =ov112_021F4138
	ldr r1, [r0, r1]
	ldr r0, [sp]
	cmp r1, r0
	bls _021E9652
	sub r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_021E9652:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E9656:
	add r4, r4, #1
	cmp r4, r5
	blt _021E9632
_021E965C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9664: .word 0x0001E440
_021E9668: .word ov112_021F4138
	thumb_func_end ov112_021E9610

