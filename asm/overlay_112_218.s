#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDAF4
	.public ov112_021EDB24
	.public ov112_021EDCB0
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
	.extern ov112_021ED330
	.extern ov112_021ED590
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDAF4
ov112_021EDAF4: ; 0x021EDAF4
	push {r3, lr}
	cmp r1, #0
	bne _021EDB06
	ldr r1, _021EDB20 ; =0x0001E550
	ldr r0, [r0, r1]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	pop {r3, pc}
_021EDB06:
	cmp r1, #0x1e
	ble _021EDB1E
	ldr r2, _021EDB20 ; =0x0001E550
	sub r1, #0x1e
	ldr r0, [r0, r2]
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	lsl r1, r2, #0xe
	lsr r1, r1, #0x10
	bl ManagedSprite_SetAnimationFrame
_021EDB1E:
	pop {r3, pc}
	.balign 4, 0
_021EDB20: .word 0x0001E550
	thumb_func_end ov112_021EDAF4

	thumb_func_start ov112_021EDB24
ov112_021EDB24: ; 0x021EDB24
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov112_021E7670
	bl ov112_021E768C
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov112_021ED330
	add r5, r0, #0
	beq _021EDB46
	add r0, r4, #0
	bl ov112_021EA76C
_021EDB46:
	add r0, r4, #0
	bl ov112_021EA60C
	add r0, r5, #0
	bl ov112_021ED314
	add r0, r4, #0
	add r1, r5, #0
	bl ov112_021EDAF4
	cmp r5, #0xc8
	bls _021EDB7A
	ldr r1, _021EDC94 ; =0x0001F2D4
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _021EDB86
	sub r1, #0x14
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl ov112_021EAA98
	ldr r0, _021EDC94 ; =0x0001F2D4
	mov r1, #1
	strh r1, [r4, r0]
	b _021EDB86
_021EDB7A:
	add r0, r4, #0
	bl ov112_021EAA10
	ldr r0, _021EDC94 ; =0x0001F2D4
	mov r1, #0
	strh r1, [r4, r0]
_021EDB86:
	bl ov112_021E76A8
	cmp r0, #0xf
	bhi _021EDC0A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EDB9A: ; jump table
	.short _021EDC0A - _021EDB9A - 2 ; case 0
	.short _021EDC0A - _021EDB9A - 2 ; case 1
	.short _021EDBBA - _021EDB9A - 2 ; case 2
	.short _021EDC0A - _021EDB9A - 2 ; case 3
	.short _021EDBC6 - _021EDB9A - 2 ; case 4
	.short _021EDBC6 - _021EDB9A - 2 ; case 5
	.short _021EDC0A - _021EDB9A - 2 ; case 6
	.short _021EDBC6 - _021EDB9A - 2 ; case 7
	.short _021EDBC6 - _021EDB9A - 2 ; case 8
	.short _021EDBC6 - _021EDB9A - 2 ; case 9
	.short _021EDC0A - _021EDB9A - 2 ; case 10
	.short _021EDBC6 - _021EDB9A - 2 ; case 11
	.short _021EDBC6 - _021EDB9A - 2 ; case 12
	.short _021EDBC6 - _021EDB9A - 2 ; case 13
	.short _021EDC0A - _021EDB9A - 2 ; case 14
	.short _021EDBCA - _021EDB9A - 2 ; case 15
_021EDBBA:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _021EDC0A
	mov r0, #0x2a
	strh r0, [r4, #0x14]
	b _021EDC0A
_021EDBC6:
	strh r0, [r4, #0x14]
	b _021EDC0A
_021EDBCA:
	ldr r0, _021EDC98 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	ldr r0, _021EDC9C ; =0x0001E440
	ldr r2, _021EDCA0 ; =0x0001D758
	ldr r0, [r4, r0]
	add r1, r4, r2
	add r2, r2, #4
	add r2, r4, r2
	bl sub_02032674
	add r0, r4, #0
	bl ov112_021ED590
	ldr r0, _021EDC9C ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_02032644
	add r0, r4, #0
	mov r1, #8
	bl ov112_021EA688
	ldr r1, _021EDCA4 ; =0x0001F2C0
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov112_021EAA98
	mov r0, #0x23
	pop {r3, r4, r5, pc}
_021EDC0A:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021EDC26
	ldr r0, _021EDC98 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x3b
	str r0, [r4, #0xc]
	bl ov112_021E7464
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_021EDC26:
	bl ov112_021E7668
	cmp r0, #0
	bne _021EDC72
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E98E8
	mov r0, #5
	bl ov112_021E9888
	cmp r0, #0
	beq _021EDC50
	ldr r0, _021EDCA8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021EDC50
	mov r0, #2
	tst r0, r1
	beq _021EDC8E
_021EDC50:
	mov r0, #0x21
	strh r0, [r4, #0x14]
	mov r0, #0x42
	str r0, [r4, #0xc]
	bl ov112_021E7464
	mov r1, #3
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x21
	bl ov112_021EC440
	ldr r0, _021EDCAC ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r3, r4, r5, pc}
_021EDC72:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _021EDC86
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	bl ov112_021EA10C
	mov r0, #1
	strh r0, [r4, #0x16]
_021EDC86:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E98E8
_021EDC8E:
	mov r0, #0x1f
	pop {r3, r4, r5, pc}
	nop
_021EDC94: .word 0x0001F2D4
_021EDC98: .word 0x0001E538
_021EDC9C: .word 0x0001E440
_021EDCA0: .word 0x0001D758
_021EDCA4: .word 0x0001F2C0
_021EDCA8: .word gSystem
_021EDCAC: .word 0x000005DD
	thumb_func_end ov112_021EDB24

	thumb_func_start ov112_021EDCB0
ov112_021EDCB0: ; 0x021EDCB0
	cmp r0, #0x21
	bgt _021EDCE4
	bge _021EDD06
	cmp r0, #0xe
	bhi _021EDD06
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EDCC6: ; jump table
	.short _021EDD06 - _021EDCC6 - 2 ; case 0
	.short _021EDD06 - _021EDCC6 - 2 ; case 1
	.short _021EDD06 - _021EDCC6 - 2 ; case 2
	.short _021EDCFC - _021EDCC6 - 2 ; case 3
	.short _021EDCE8 - _021EDCC6 - 2 ; case 4
	.short _021EDCEC - _021EDCC6 - 2 ; case 5
	.short _021EDCF4 - _021EDCC6 - 2 ; case 6
	.short _021EDCF0 - _021EDCC6 - 2 ; case 7
	.short _021EDCF8 - _021EDCC6 - 2 ; case 8
	.short _021EDCF8 - _021EDCC6 - 2 ; case 9
	.short _021EDD06 - _021EDCC6 - 2 ; case 10
	.short _021EDCFC - _021EDCC6 - 2 ; case 11
	.short _021EDCFC - _021EDCC6 - 2 ; case 12
	.short _021EDD00 - _021EDCC6 - 2 ; case 13
	.short _021EDD04 - _021EDCC6 - 2 ; case 14
_021EDCE4:
	cmp r0, #0x2a
	bx lr
_021EDCE8:
	mov r0, #0x22
	bx lr
_021EDCEC:
	mov r0, #0x24
	bx lr
_021EDCF0:
	mov r0, #0x25
	bx lr
_021EDCF4:
	mov r0, #0x2b
	bx lr
_021EDCF8:
	mov r0, #0x26
	bx lr
_021EDCFC:
	mov r0, #0x27
	bx lr
_021EDD00:
	mov r0, #0x23
	bx lr
_021EDD04:
	mov r0, #0x2a
_021EDD06:
	bx lr
	thumb_func_end ov112_021EDCB0

