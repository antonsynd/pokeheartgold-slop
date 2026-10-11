#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EA864
	.extern ov112_021EA6D8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EA864
ov112_021EA864: ; 0x021EA864
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _021EA978 ; =0x0001EC80
	str r0, [sp, #4]
	mov r6, #0
	add r4, r0, r1
	add r5, r0, #0
_021EA872:
	mov r0, #2
	ldrsb r1, [r4, r0]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r0, #0xb4
	mul r0, r1
	mov r1, #5
	lsl r1, r1, #6
	bl _s32_div_f
	add r7, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021EA968
	ldrh r0, [r4, #0xc]
	bl GF_SinDeg
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xc]
	bl GF_CosDeg
	add r1, r7, #0
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xc]
	mov r1, #0x5a
	lsl r1, r1, #2
	add r0, #0xa
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	bl _s32_div_f
	add r0, r1, #0
	mov r1, #0x49
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	mov r3, #4
	add r0, r1, r0
	str r0, [sp]
	ldrsh r7, [r4, r3]
	mov r3, #8
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r3, r7, r3
	bl ov112_021EA6D8
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	sub r0, r1, r0
	strh r0, [r4, #6]
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	sub r0, r0, #1
	strh r0, [r4, #0xe]
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, #0x74
	cmp r1, r0
	blt _021EA914
	mov r0, #0xe
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _021EA914
	cmp r1, #0xa0
	ble _021EA92C
_021EA914:
	mov r0, #0
	strb r0, [r4]
	ldr r0, _021EA97C ; =0x0001E704
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021EA980 ; =0x0001E574
	mov r1, #0
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawFlag
_021EA92C:
	ldrh r0, [r4, #0xc]
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	cmp r1, #0
	blt _021EA954
	cmp r1, #0xb4
	bgt _021EA954
	ldr r0, _021EA97C ; =0x0001E704
	mov r1, #1
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawPriority
	ldr r0, _021EA980 ; =0x0001E574
	mov r1, #1
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawPriority
	b _021EA968
_021EA954:
	ldr r0, _021EA97C ; =0x0001E704
	mov r1, #3
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawPriority
	ldr r0, _021EA980 ; =0x0001E574
	mov r1, #3
	ldr r0, [r5, r0]
	bl ManagedSprite_SetDrawPriority
_021EA968:
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #0x64
	bge _021EA974
	b _021EA872
_021EA974:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA978: .word 0x0001EC80
_021EA97C: .word 0x0001E704
_021EA980: .word 0x0001E574
	thumb_func_end ov112_021EA864

