	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E7450
	.extern ov95_021E7410
	.extern ov95_021E7820

	.text

	.text
	thumb_func_start ov95_021E7450
ov95_021E7450: ; 0x021E7450
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E7508 ; =ov95_021E7820
	mov r4, #0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r6, r0, #0
	sub r0, r4, #1
	cmp r6, r0
	beq _021E7488
	ldr r0, _021E750C ; =0x000005DC
	bl PlaySE
	cmp r6, #0
	beq _021E7474
	cmp r6, #1
	beq _021E747A
	b _021E7482
_021E7474:
	mov r4, #1
	strb r4, [r5, #0x19]
	b _021E74EC
_021E747A:
	mov r0, #2
	strb r0, [r5, #0x19]
	mov r4, #1
	b _021E74EC
_021E7482:
	bl GF_AssertFail
	b _021E74EC
_021E7488:
	ldr r0, _021E7510 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021E74AA
	ldrb r0, [r5, #0x19]
	cmp r0, #1
	beq _021E74EC
	mov r0, #1
	strb r0, [r5, #0x19]
	add r0, r5, #0
	bl ov95_021E7410
	ldr r0, _021E750C ; =0x000005DC
	bl PlaySE
	b _021E74EC
_021E74AA:
	mov r1, #0x80
	tst r1, r0
	beq _021E74C8
	ldrb r0, [r5, #0x19]
	cmp r0, #2
	beq _021E74EC
	mov r0, #2
	strb r0, [r5, #0x19]
	add r0, r5, #0
	bl ov95_021E7410
	ldr r0, _021E750C ; =0x000005DC
	bl PlaySE
	b _021E74EC
_021E74C8:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _021E74E2
	ldrb r0, [r5, #0x19]
	cmp r0, #0
	bne _021E74DE
	bl GF_AssertFail
	mov r0, #2
	strb r0, [r5, #0x19]
_021E74DE:
	mov r4, #1
	b _021E74EC
_021E74E2:
	mov r2, #2
	tst r0, r2
	beq _021E74EC
	strb r2, [r5, #0x19]
	add r4, r1, #0
_021E74EC:
	cmp r4, #0
	beq _021E7504
	add r0, r5, #0
	bl ov95_021E7410
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl ManagedSprite_SetAnim
	ldr r0, _021E750C ; =0x000005DC
	bl PlaySE
_021E7504:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E7508: .word ov95_021E7820
_021E750C: .word 0x000005DC
_021E7510: .word gSystem
	thumb_func_end ov95_021E7450

