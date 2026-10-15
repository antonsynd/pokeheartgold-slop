#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ED918
	.extern ov112_021E7464
	.extern ov112_021E7668
	.extern ov112_021E7670
	.extern ov112_021E768C
	.extern ov112_021E76A8
	.extern ov112_021E9888
	.extern ov112_021E98E8
	.extern ov112_021EA10C
	.extern ov112_021EA60C
	.extern ov112_021EA670
	.extern ov112_021EA7D0
	.extern ov112_021EC440
	.extern ov112_021ED314
	.extern ov112_021ED530
	.extern ov112_021ED5DC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ED918
ov112_021ED918: ; 0x021ED918
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl ov112_021E7670
	bl ov112_021E768C
	add r5, r0, #0
	beq _021ED930
	add r0, r4, #0
	bl ov112_021EA7D0
_021ED930:
	add r0, r5, #0
	bl ov112_021ED314
	add r0, r4, #0
	bl ov112_021EA60C
	bl ov112_021E76A8
	cmp r0, #0xf
	bhi _021ED9B4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED950: ; jump table
	.short _021ED9B4 - _021ED950 - 2 ; case 0
	.short _021ED9B4 - _021ED950 - 2 ; case 1
	.short _021ED970 - _021ED950 - 2 ; case 2
	.short _021ED9B4 - _021ED950 - 2 ; case 3
	.short _021ED97C - _021ED950 - 2 ; case 4
	.short _021ED97C - _021ED950 - 2 ; case 5
	.short _021ED9B4 - _021ED950 - 2 ; case 6
	.short _021ED97C - _021ED950 - 2 ; case 7
	.short _021ED97C - _021ED950 - 2 ; case 8
	.short _021ED97C - _021ED950 - 2 ; case 9
	.short _021ED9B4 - _021ED950 - 2 ; case 10
	.short _021ED97C - _021ED950 - 2 ; case 11
	.short _021ED97C - _021ED950 - 2 ; case 12
	.short _021ED97C - _021ED950 - 2 ; case 13
	.short _021ED9B4 - _021ED950 - 2 ; case 14
	.short _021ED980 - _021ED950 - 2 ; case 15
_021ED970:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _021ED9B4
	mov r0, #0x2a
	strh r0, [r4, #0x14]
	b _021ED9B4
_021ED97C:
	strh r0, [r4, #0x14]
	b _021ED9B4
_021ED980:
	ldr r0, _021EDA40 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	add r0, sp, #0xc
	add r1, sp, #0
	bl RTC_GetDateTime
	add r0, sp, #0xc
	add r1, sp, #0
	bl RTC_ConvertDateTimeToSecond
	add r0, r4, #0
	bl ov112_021ED530
	add r0, r4, #0
	bl ov112_021ED5DC
	add r0, r4, #0
	mov r1, #6
	bl ov112_021EA670
	add sp, #0x1c
	mov r0, #0x29
	pop {r4, r5, pc}
_021ED9B4:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _021ED9D2
	ldr r0, _021EDA40 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x3d
	str r0, [r4, #0xc]
	bl ov112_021E7464
	add sp, #0x1c
	mov r0, #0x20
	pop {r4, r5, pc}
_021ED9D2:
	bl ov112_021E7668
	cmp r0, #0
	bne _021EDA1E
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E98E8
	mov r0, #5
	bl ov112_021E9888
	cmp r0, #0
	beq _021ED9FC
	ldr r0, _021EDA44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021ED9FC
	mov r0, #2
	tst r0, r1
	beq _021EDA3A
_021ED9FC:
	bl ov112_021E7464
	mov r3, #0x21
	mov r1, #3
	strh r3, [r4, #0x14]
	mov r0, #0x42
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r2, r1, #0
	bl ov112_021EC440
	ldr r0, _021EDA48 ; =0x000005DD
	bl PlaySE
	add sp, #0x1c
	mov r0, #0x41
	pop {r4, r5, pc}
_021EDA1E:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _021EDA32
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	bl ov112_021EA10C
	mov r0, #1
	strh r0, [r4, #0x16]
_021EDA32:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E98E8
_021EDA3A:
	mov r0, #0x1d
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0
_021EDA40: .word 0x0001E538
_021EDA44: .word gSystem
_021EDA48: .word 0x000005DD
	thumb_func_end ov112_021ED918

