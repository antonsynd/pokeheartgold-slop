	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B47C
	.extern ov71_02247398
	.extern ov71_022473BC
	.extern ov71_022473C4
	.extern ov71_02247704
	.extern ov71_0224B910
	.extern ov71_0224B960
	.extern ov71_0224B9CC

	.text

	.text
	thumb_func_start ov71_0224B47C
ov71_0224B47C: ; 0x0224B47C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224B576
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224B496: ; jump table
	.short _0224B4A0 - _0224B496 - 2 ; case 0
	.short _0224B4AE - _0224B496 - 2 ; case 1
	.short _0224B4DC - _0224B496 - 2 ; case 2
	.short _0224B504 - _0224B496 - 2 ; case 3
	.short _0224B566 - _0224B496 - 2 ; case 4
_0224B4A0:
	add r1, r4, #0
	add r1, #0x80
	bl ov71_0224B9CC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0224B4AE:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #0
	bne _0224B576
	ldr r0, [r4, #0x44]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x78]
	mov r1, #0
	bl ov71_02247704
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224B576
_0224B4DC:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _0224B576
	ldr r0, [r4, #0x14]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0xc
	bl ov71_0224B910
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0224B576
_0224B504:
	bl ov71_0224B960
	cmp r0, #0
	beq _0224B576
	ldr r0, [r4]
	bl ov71_02247398
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _0224B55A
	ldr r0, [r4]
	bl ov71_022473BC
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	add r1, sp, #0
	mov r3, #1
	bl sub_020729A4
	ldr r0, [r4]
	bl ov71_022473BC
	add r6, r0, #0
	ldr r0, [r4]
	bl ov71_022473C4
	add r2, r0, #0
	add r1, sp, #0
	lsl r2, r2, #0x18
	ldrb r1, [r1]
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl sub_020062E0
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Pokepic_StartAnim
_0224B55A:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224B576
_0224B566:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x1e
	ble _0224B576
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224B576:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov71_0224B47C

