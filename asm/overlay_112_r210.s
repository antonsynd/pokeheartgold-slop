#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED330
	.public ov112_021ED35C
	.extern ov112_021E7464
	.extern ov112_021E7668
	.extern ov112_021E7670
	.extern ov112_021E768C
	.extern ov112_021E76A8
	.extern ov112_021E9888
	.extern ov112_021E98E8
	.extern ov112_021EA10C
	.extern ov112_021EA60C
	.extern ov112_021EA688
	.extern ov112_021EA76C
	.extern ov112_021EAA10
	.extern ov112_021EAA98
	.extern ov112_021EC440
	.extern ov112_021ED314
	.extern ov112_021EDAF4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED330
ov112_021ED330: ; 0x021ED330
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov112_021E7668
	cmp r0, #0
	ldr r0, _021ED358 ; =0x0001D760
	beq _021ED34E
	ldrh r1, [r5, r0]
	cmp r1, r4
	bge _021ED34A
	strh r4, [r5, r0]
	b _021ED352
_021ED34A:
	add r4, r1, #0
	b _021ED352
_021ED34E:
	mov r1, #0
	strh r1, [r5, r0]
_021ED352:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021ED358: .word 0x0001D760
	thumb_func_end ov112_021ED330

	thumb_func_start ov112_021ED35C
ov112_021ED35C: ; 0x021ED35C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov112_021E7670
	bl ov112_021E768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov112_021ED330
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	bl MTRandom
	mov r1, #0xff
	bl _u32_div_f
	cmp r5, r1
	bls _021ED388
	add r0, r4, #0
	bl ov112_021EA76C
_021ED388:
	add r0, r4, #0
	bl ov112_021EA60C
	add r0, r5, #0
	bl ov112_021ED314
	add r0, r4, #0
	add r1, r5, #0
	bl ov112_021EDAF4
	cmp r5, #0xc8
	bls _021ED3BC
	ldr r1, _021ED4BC ; =0x0001F2D4
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _021ED3C8
	sub r1, #0x14
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl ov112_021EAA98
	ldr r0, _021ED4BC ; =0x0001F2D4
	mov r1, #1
	strh r1, [r4, r0]
	b _021ED3C8
_021ED3BC:
	add r0, r4, #0
	bl ov112_021EAA10
	ldr r0, _021ED4BC ; =0x0001F2D4
	mov r1, #0
	strh r1, [r4, r0]
_021ED3C8:
	bl ov112_021E76A8
	cmp r0, #0xf
	bhi _021ED436
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED3DC: ; jump table
	.short _021ED436 - _021ED3DC - 2 ; case 0
	.short _021ED436 - _021ED3DC - 2 ; case 1
	.short _021ED3FC - _021ED3DC - 2 ; case 2
	.short _021ED436 - _021ED3DC - 2 ; case 3
	.short _021ED408 - _021ED3DC - 2 ; case 4
	.short _021ED436 - _021ED3DC - 2 ; case 5
	.short _021ED436 - _021ED3DC - 2 ; case 6
	.short _021ED408 - _021ED3DC - 2 ; case 7
	.short _021ED408 - _021ED3DC - 2 ; case 8
	.short _021ED408 - _021ED3DC - 2 ; case 9
	.short _021ED436 - _021ED3DC - 2 ; case 10
	.short _021ED408 - _021ED3DC - 2 ; case 11
	.short _021ED408 - _021ED3DC - 2 ; case 12
	.short _021ED408 - _021ED3DC - 2 ; case 13
	.short _021ED436 - _021ED3DC - 2 ; case 14
	.short _021ED40C - _021ED3DC - 2 ; case 15
_021ED3FC:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _021ED436
	mov r0, #0x2a
	strh r0, [r4, #0x14]
	b _021ED436
_021ED408:
	strh r0, [r4, #0x14]
	b _021ED436
_021ED40C:
	ldr r0, _021ED4C0 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021ED4C4 ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_02032644
	add r0, r4, #0
	mov r1, #8
	bl ov112_021EA688
	ldr r1, _021ED4C8 ; =0x0001F2C0
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov112_021EAA98
	mov r0, #0x23
	pop {r3, r4, r5, pc}
_021ED436:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021ED452
	ldr r0, _021ED4C0 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x3a
	str r0, [r4, #0xc]
	bl ov112_021E7464
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_021ED452:
	bl ov112_021E7668
	cmp r0, #0
	bne _021ED49A
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E98E8
	mov r0, #5
	bl ov112_021E9888
	cmp r0, #0
	beq _021ED47C
	ldr r0, _021ED4CC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021ED47C
	mov r0, #2
	tst r0, r1
	beq _021ED4B6
_021ED47C:
	mov r0, #0x21
	strh r0, [r4, #0x14]
	bl ov112_021E7464
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x21
	bl ov112_021EC440
	ldr r0, _021ED4D0 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021ED49A:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _021ED4AE
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	bl ov112_021EA10C
	mov r0, #1
	strh r0, [r4, #0x16]
_021ED4AE:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E98E8
_021ED4B6:
	mov r0, #0x19
	pop {r3, r4, r5, pc}
	nop
_021ED4BC: .word 0x0001F2D4
_021ED4C0: .word 0x0001E538
_021ED4C4: .word 0x0001E440
_021ED4C8: .word 0x0001F2C0
_021ED4CC: .word gSystem
_021ED4D0: .word 0x000005DD
	thumb_func_end ov112_021ED35C

