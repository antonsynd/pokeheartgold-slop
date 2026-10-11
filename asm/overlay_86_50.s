	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E7688
	.public ov86_021E7710
	.public ov86_021E77BC
	.public ov86_021E781C
	.extern ov86_021E705C
	.extern ov86_021E707C
	.extern ov86_021E71C0
	.extern ov86_021E723C
	.extern ov86_021E81DC

	.text

	.text
	thumb_func_start ov86_021E7688
ov86_021E7688: ; 0x021E7688
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x93
	add r5, r0, #0
	lsl r1, r1, #2
	ldrb r2, [r5, r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	ldrb r2, [r5, r1]
	mov r0, #0xfe
	bic r2, r0
	mov r0, #4
	orr r0, r2
	strb r0, [r5, r1]
	add r0, r1, #1
	ldrb r2, [r5, r0]
	mov r0, #0xf
	bic r2, r0
	mov r0, #2
	orr r2, r0
	add r0, r1, #1
	strb r2, [r5, r0]
	ldrb r2, [r5, r0]
	mov r0, #0xf0
	bic r2, r0
	add r0, r1, #1
	strb r2, [r5, r0]
	ldr r0, _021E7708 ; =ov86_021E81DC
	mov r1, #7
	ldrb r4, [r0, r4]
	add r0, r4, #0
	bl _u32_div_f
	lsl r0, r1, #5
	add r0, #0x18
	lsr r1, r0, #3
	mov r0, #0x25
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r0, r4, #0
	mov r1, #7
	bl _u32_div_f
	lsl r0, r0, #5
	add r0, #0x28
	lsr r1, r0, #3
	ldr r0, _021E770C ; =0x00000251
	add r1, #0x20
	strb r1, [r5, r0]
	mov r2, #2
	add r1, r0, #1
	strb r2, [r5, r1]
	add r1, r0, #2
	strb r2, [r5, r1]
	sub r1, r0, #3
	mov r2, #0
	strb r2, [r5, r1]
	sub r0, r0, #2
	strb r2, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_021E7708: .word ov86_021E81DC
_021E770C: .word 0x00000251
	thumb_func_end ov86_021E7688

	thumb_func_start ov86_021E7710
ov86_021E7710: ; 0x021E7710
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_NoHold
	add r5, r0, #0
	cmp r5, #0x1a
	bhi _021E7728
	beq _021E7742
	b _021E7764
_021E7728:
	add r0, r5, #4
	cmp r0, #3
	bhi _021E7764
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E773A: ; jump table
	.short _021E77AA - _021E773A - 2 ; case 0
	.short _021E775C - _021E773A - 2 ; case 1
	.short _021E7742 - _021E773A - 2 ; case 2
	.short _021E77AA - _021E773A - 2 ; case 3
_021E7742:
	ldr r0, _021E77B0 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov86_021E71C0
	add r0, r4, #0
	bl ov86_021E723C
	mov r0, #0xa
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021E775C:
	ldr r0, _021E77B4 ; =0x000005DC
	bl PlaySE
	b _021E77AA
_021E7764:
	mov r0, #0x99
	lsl r0, r0, #2
	add r6, r4, r0
	lsl r7, r5, #3
	ldr r0, [r6, r7]
	cmp r0, #0
	bne _021E777A
	ldr r0, _021E77B8 ; =0x000005F2
	bl PlaySE
	b _021E77AA
_021E777A:
	ldr r0, _021E77B0 ; =0x000005DD
	bl PlaySE
	mov r1, #0x96
	lsl r1, r1, #2
	strh r5, [r4, r1]
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
	add r0, r1, #4
	strb r2, [r4, r0]
	ldr r0, [r6, r7]
	sub r0, r0, #1
	lsr r2, r0, #3
	add r0, r1, #5
	strb r2, [r4, r0]
	ldrh r1, [r4, r1]
	add r0, r4, #0
	bl ov86_021E7688
	mov r0, #4
	strb r0, [r4, #5]
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021E77AA:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E77B0: .word 0x000005DD
_021E77B4: .word 0x000005DC
_021E77B8: .word 0x000005F2
	thumb_func_end ov86_021E7710

	thumb_func_start ov86_021E77BC
ov86_021E77BC: ; 0x021E77BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	mov r7, #1
_021E77C8:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E77FA
	add r0, r5, #0
	add r1, r6, #0
	bl ov86_021E7688
	ldr r0, _021E7810 ; =0x00000252
	mov r2, #0x25
	ldrb r0, [r5, r0]
	ldr r3, _021E7814 ; =0x00000251
	lsl r2, r2, #4
	str r0, [sp]
	ldr r0, _021E7818 ; =0x00000253
	mov r1, #2
	ldrb r0, [r5, r0]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldrb r2, [r5, r2]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0xc]
	bl BgTilemapRectChangePalette
_021E77FA:
	add r6, r6, #1
	add r4, #8
	cmp r6, #0x1a
	blo _021E77C8
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E7810: .word 0x00000252
_021E7814: .word 0x00000251
_021E7818: .word 0x00000253
	thumb_func_end ov86_021E77BC

	thumb_func_start ov86_021E781C
ov86_021E781C: ; 0x021E781C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	add r3, sp, #0
	ldrb r2, [r3, #1]
	ldrb r3, [r3]
	add r0, r5, #0
	mov r1, #1
	bl ov86_021E707C
	cmp r4, #8
	bne _021E7854
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov86_021E705C
	pop {r3, r4, r5, pc}
_021E7854:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	bl ov86_021E705C
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_021E781C

