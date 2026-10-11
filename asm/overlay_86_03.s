	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E5BA0
	.extern _021E7E98
	.extern ov86_021E7094
	.extern ov86_021E71C0
	.extern ov86_021E71FC
	.extern ov86_021E7258
	.extern ov86_021E7710
	.extern ov86_021E7984
	.extern ov86_021E7B54

	.text

	.text
	thumb_func_start ov86_021E5BA0
ov86_021E5BA0: ; 0x021E5BA0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #0xa
	bhi _021E5C82
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5BB6: ; jump table
	.short _021E5BCC - _021E5BB6 - 2 ; case 0
	.short _021E5BE0 - _021E5BB6 - 2 ; case 1
	.short _021E5C0A - _021E5BB6 - 2 ; case 2
	.short _021E5C16 - _021E5BB6 - 2 ; case 3
	.short _021E5C1E - _021E5BB6 - 2 ; case 4
	.short _021E5C2A - _021E5BB6 - 2 ; case 5
	.short _021E5C32 - _021E5BB6 - 2 ; case 6
	.short _021E5C3A - _021E5BB6 - 2 ; case 7
	.short _021E5C46 - _021E5BB6 - 2 ; case 8
	.short _021E5C70 - _021E5BB6 - 2 ; case 9
	.short _021E5C7E - _021E5BB6 - 2 ; case 10
_021E5BCC:
	bl ov86_021E71FC
	cmp r0, #1
	bne _021E5BDA
	mov r0, #3
	strb r0, [r4, #4]
	b _021E5C82
_021E5BDA:
	mov r0, #1
	strb r0, [r4, #4]
	b _021E5C82
_021E5BE0:
	ldr r0, _021E5C88 ; =_021E7E98
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	beq _021E5BF4
	ldr r0, _021E5C8C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021E5C82
_021E5BF4:
	ldr r0, _021E5C90 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E71C0
	mov r0, #0xa
	strb r0, [r4, #5]
	mov r0, #9
	strb r0, [r4, #4]
	b _021E5C82
_021E5C0A:
	mov r1, #1
	bl ov86_021E7258
	mov r0, #3
	strb r0, [r4, #4]
	b _021E5C82
_021E5C16:
	bl ov86_021E7710
	strb r0, [r4, #4]
	b _021E5C82
_021E5C1E:
	mov r1, #2
	bl ov86_021E7258
	mov r0, #5
	strb r0, [r4, #4]
	b _021E5C82
_021E5C2A:
	bl ov86_021E7984
	strb r0, [r4, #4]
	b _021E5C82
_021E5C32:
	bl ov86_021E7B54
	strb r0, [r4, #4]
	b _021E5C82
_021E5C3A:
	mov r1, #0
	bl ov86_021E7258
	mov r0, #8
	strb r0, [r4, #4]
	b _021E5C82
_021E5C46:
	ldr r0, _021E5C88 ; =_021E7E98
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #1
	beq _021E5C5A
	ldr r0, _021E5C8C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021E5C82
_021E5C5A:
	ldr r0, _021E5C90 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E71C0
	mov r0, #4
	strb r0, [r4, #5]
	mov r0, #9
	strb r0, [r4, #4]
	b _021E5C82
_021E5C70:
	bl ov86_021E7094
	cmp r0, #0
	bne _021E5C82
	ldrb r0, [r4, #5]
	strb r0, [r4, #4]
	b _021E5C82
_021E5C7E:
	mov r0, #1
	pop {r4, pc}
_021E5C82:
	mov r0, #0
	pop {r4, pc}
	nop
_021E5C88: .word _021E7E98
_021E5C8C: .word gSystem
_021E5C90: .word 0x000005DD
	thumb_func_end ov86_021E5BA0

