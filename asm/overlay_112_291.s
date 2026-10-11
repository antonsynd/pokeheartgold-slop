#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF5AC
	.extern ov112_021E77E4
	.extern ov112_021F31D8
	.extern ov112_021FF124
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF5AC
ov112_021EF5AC: ; 0x021EF5AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021EF61C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF5C2: ; jump table
	.short _021EF5CA - _021EF5C2 - 2 ; case 0
	.short _021EF5EE - _021EF5C2 - 2 ; case 1
	.short _021EF602 - _021EF5C2 - 2 ; case 2
	.short _021EF618 - _021EF5C2 - 2 ; case 3
_021EF5CA:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021EF61C
	add r0, r4, #0
	bl ov112_021E77E4
	ldr r0, _021EF620 ; =0x00009DFC
	add r0, r4, r0
	bl ov112_021F31D8
	cmp r0, #0
	beq _021EF5E8
	mov r0, #3
	pop {r4, pc}
_021EF5E8:
	mov r0, #1
	str r0, [r4, #8]
	b _021EF61C
_021EF5EE:
	ldr r1, _021EF624 ; =0x0001D750
	ldr r0, _021EF628 ; =ov112_021FF124
	add r1, r4, r1
	mov r2, #0x9a
	bl OverlayManager_New
	str r0, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #8]
	b _021EF61C
_021EF602:
	ldr r0, [r4, #0x1c]
	bl OverlayManager_Run
	cmp r0, #0
	beq _021EF61C
	ldr r0, [r4, #0x1c]
	bl OverlayManager_Delete
	mov r0, #3
	str r0, [r4, #8]
	b _021EF61C
_021EF618:
	mov r0, #3
	pop {r4, pc}
_021EF61C:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021EF620: .word 0x00009DFC
_021EF624: .word 0x0001D750
_021EF628: .word ov112_021FF124
	thumb_func_end ov112_021EF5AC

