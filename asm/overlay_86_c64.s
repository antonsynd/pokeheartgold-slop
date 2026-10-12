	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7984
	.extern ov86_021E71C0
	.extern ov86_021E78B8
	.extern ov86_021E792C
	.extern ov86_021E7B68
	.extern ov86_021E7CF8
	.extern ov86_021E7E9C

	.text

	.text
	thumb_func_start ov86_021E7984
ov86_021E7984: ; 0x021E7984
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_NoHold
	add r5, r0, #0
	cmp r5, #8
	bhi _021E799C
	beq _021E79B6
	b _021E7A76
_021E799C:
	add r0, r5, #4
	cmp r0, #3
	bhi _021E7A76
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E79AE: ; jump table
	.short _021E7AB4 - _021E79AE - 2 ; case 0
	.short _021E79CA - _021E79AE - 2 ; case 1
	.short _021E79B6 - _021E79AE - 2 ; case 2
	.short _021E79D2 - _021E79AE - 2 ; case 3
_021E79B6:
	ldr r0, _021E7B3C ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E71C0
	mov r0, #2
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, pc}
_021E79CA:
	ldr r0, _021E7B40 ; =0x000005DC
	bl PlaySE
	b _021E7AB4
_021E79D2:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	cmp r0, #7
	bhi _021E7AB4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E79EC: ; jump table
	.short _021E79FC - _021E79EC - 2 ; case 0
	.short _021E7A38 - _021E79EC - 2 ; case 1
	.short _021E79FC - _021E79EC - 2 ; case 2
	.short _021E7A38 - _021E79EC - 2 ; case 3
	.short _021E79FC - _021E79EC - 2 ; case 4
	.short _021E7A38 - _021E79EC - 2 ; case 5
	.short _021E79FC - _021E79EC - 2 ; case 6
	.short _021E7A38 - _021E79EC - 2 ; case 7
_021E79FC:
	ldr r0, _021E7B44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021E7AB4
	ldr r1, _021E7B48 ; =0x0000025D
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021E7AB4
	sub r0, r1, #1
	ldrsb r0, [r4, r0]
	sub r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _021E7A24
	ldrsb r2, [r4, r1]
	sub r0, r1, #1
	strb r2, [r4, r0]
_021E7A24:
	ldr r0, _021E7B40 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E7B68
	add r0, r4, #0
	bl ov86_021E7CF8
	b _021E7AB4
_021E7A38:
	ldr r0, _021E7B44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021E7AB4
	ldr r1, _021E7B48 ; =0x0000025D
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021E7AB4
	sub r0, r1, #1
	ldrsb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrsb r2, [r4, r0]
	ldrsb r0, [r4, r1]
	cmp r2, r0
	ble _021E7A62
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
_021E7A62:
	ldr r0, _021E7B40 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E7B68
	add r0, r4, #0
	bl ov86_021E7CF8
	b _021E7AB4
_021E7A76:
	mov r1, #0x97
	lsl r1, r1, #2
	sub r2, r1, #4
	ldrh r2, [r4, r2]
	ldrsb r0, [r4, r1]
	lsl r2, r2, #3
	add r3, r4, r2
	add r2, r1, #0
	add r2, #8
	lsl r0, r0, #3
	ldr r2, [r3, r2]
	add r0, r5, r0
	cmp r0, r2
	blo _021E7A9A
	ldr r0, _021E7B4C ; =0x000005F2
	bl PlaySE
	b _021E7AB4
_021E7A9A:
	sub r0, r1, #2
	strh r5, [r4, r0]
	ldr r0, _021E7B3C ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov86_021E78B8
	mov r0, #7
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, pc}
_021E7AB4:
	ldr r0, _021E7B50 ; =ov86_021E7E9C
	bl TouchscreenHitbox_FindRectAtTouchNew
	cmp r0, #0
	beq _021E7AC4
	cmp r0, #1
	beq _021E7AFC
	b _021E7B36
_021E7AC4:
	ldr r1, _021E7B48 ; =0x0000025D
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021E7B36
	sub r0, r1, #1
	ldrsb r0, [r4, r0]
	sub r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _021E7AE2
	ldrsb r2, [r4, r1]
	sub r0, r1, #1
	strb r2, [r4, r0]
_021E7AE2:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0x34
	bl ov86_021E792C
	mov r0, #6
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, pc}
_021E7AFC:
	ldr r1, _021E7B48 ; =0x0000025D
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021E7B36
	sub r0, r1, #1
	ldrsb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r4, r0]
	ldrsb r2, [r4, r0]
	ldrsb r0, [r4, r1]
	cmp r2, r0
	ble _021E7B1C
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r4, r0]
_021E7B1C:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #0x34
	bl ov86_021E792C
	mov r0, #6
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, pc}
_021E7B36:
	mov r0, #5
	pop {r3, r4, r5, pc}
	nop
_021E7B3C: .word 0x000005DD
_021E7B40: .word 0x000005DC
_021E7B44: .word gSystem
_021E7B48: .word 0x0000025D
_021E7B4C: .word 0x000005F2
_021E7B50: .word ov86_021E7E9C
	thumb_func_end ov86_021E7984

