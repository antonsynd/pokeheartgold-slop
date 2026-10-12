#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E9750
	.public ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EA584
	.extern ov112_021FF514
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E9750
ov112_021E9750: ; 0x021E9750
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E9870 ; =0x0001F2E2
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021E9840
	mov r0, #0
	bl ov112_021E9888
	cmp r0, #0
	beq _021E9774
	cmp r0, #1
	beq _021E9794
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E97B6
	b _021E986C
_021E9774:
	ldr r0, _021E9874 ; =0x0001EC50
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov112_021EA51C
	add r0, r4, #0
	bl ov112_021EA584
	ldr r0, _021E9878 ; =0x000005DD
	bl PlaySE
	ldr r0, _021E9870 ; =0x0001F2E2
	mov r1, #1
	strh r1, [r4, r0]
	b _021E986C
_021E9794:
	ldr r0, _021E9874 ; =0x0001EC50
	mov r1, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov112_021EA51C
	add r0, r4, #0
	bl ov112_021EA584
	ldr r0, _021E9878 ; =0x000005DD
	bl PlaySE
	ldr r0, _021E9870 ; =0x0001F2E2
	mov r1, #1
	strh r1, [r4, r0]
	b _021E986C
_021E97B6:
	ldr r0, _021E987C ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021E97DE
	ldr r0, _021E9874 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E97CE
	ldr r0, _021E9880 ; =0x000005DC
	bl PlaySE
_021E97CE:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021EA51C
	ldr r0, _021E9874 ; =0x0001EC50
	mov r1, #0
	str r1, [r4, r0]
	b _021E986C
_021E97DE:
	mov r1, #0x80
	tst r1, r0
	beq _021E9802
	ldr r0, _021E9874 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _021E97F2
	ldr r0, _021E9880 ; =0x000005DC
	bl PlaySE
_021E97F2:
	add r0, r4, #0
	mov r1, #1
	bl ov112_021EA51C
	ldr r0, _021E9874 ; =0x0001EC50
	mov r1, #1
	str r1, [r4, r0]
	b _021E986C
_021E9802:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _021E981C
	ldr r0, _021E9870 ; =0x0001F2E2
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov112_021EA584
	ldr r0, _021E9878 ; =0x000005DD
	bl PlaySE
	b _021E986C
_021E981C:
	mov r2, #2
	tst r0, r2
	beq _021E986C
	add r0, r4, #0
	bl ov112_021EA51C
	add r0, r4, #0
	bl ov112_021EA584
	ldr r0, _021E9874 ; =0x0001EC50
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021E9870 ; =0x0001F2E2
	strh r1, [r4, r0]
	ldr r0, _021E9880 ; =0x000005DC
	bl PlaySE
	b _021E986C
_021E9840:
	cmp r0, #1
	bne _021E9858
	ldr r0, _021E9884 ; =0x0001E530
	ldr r0, [r4, r0]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021E986C
	ldr r0, _021E9870 ; =0x0001F2E2
	mov r1, #2
	strh r1, [r4, r0]
	b _021E986C
_021E9858:
	cmp r0, #2
	bne _021E986C
	ldr r0, _021E9874 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E9868
	mov r0, #1
	pop {r4, pc}
_021E9868:
	mov r0, #0
	pop {r4, pc}
_021E986C:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021E9870: .word 0x0001F2E2
_021E9874: .word 0x0001EC50
_021E9878: .word 0x000005DD
_021E987C: .word gSystem
_021E9880: .word 0x000005DC
_021E9884: .word 0x0001E530
	thumb_func_end ov112_021E9750

	thumb_func_start ov112_021E9888
ov112_021E9888: ; 0x021E9888
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #6
	blt _021E9894
	bl GF_AssertFail
_021E9894:
	ldr r0, _021E98A0 ; =ov112_021FF514
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r4, pc}
	.balign 4, 0
_021E98A0: .word ov112_021FF514
	thumb_func_end ov112_021E9888

