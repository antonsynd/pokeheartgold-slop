	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E5C94
	.public ov86_021E5CDC
	.public ov86_021E5D10
	.public ov86_021E5D30
	.extern ov86_021E7EC8
	.extern ov86_021E7F04
	.extern ov86_021E7F20
	.extern ov86_021E7F3C
	.extern ov86_021E7F58
	.extern ov86_021E7FBC

	.text

	.text
	thumb_func_start ov86_021E5C94
ov86_021E5C94: ; 0x021E5C94
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _021E5CA6
	cmp r0, #1
	beq _021E5CC6
	b _021E5CD4
_021E5CA6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x79
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	b _021E5CD4
_021E5CC6:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E5CD4
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5CD4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov86_021E5C94

	thumb_func_start ov86_021E5CDC
ov86_021E5CDC: ; 0x021E5CDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E5CEE
	bl PaletteData_PushTransparentBuffers
_021E5CEE:
	ldr r0, [r4, #0xc]
	bl DoScheduledBgGpuUpdates
	bl SpriteSystem_TransferOam
	ldr r3, _021E5D08 ; =0x027E0000
	ldr r1, _021E5D0C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021E5D08: .word 0x027E0000
_021E5D0C: .word 0x00003FF8
	thumb_func_end ov86_021E5CDC

	thumb_func_start ov86_021E5D10
ov86_021E5D10: ; 0x021E5D10
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5D2C ; =ov86_021E7FBC
	add r3, sp, #0
	mov r2, #5
_021E5D1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5D1A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5D2C: .word ov86_021E7FBC
	thumb_func_end ov86_021E5D10

	thumb_func_start ov86_021E5D30
ov86_021E5D30: ; 0x021E5D30
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _021E5DF8 ; =ov86_021E7EC8
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5DFC ; =ov86_021E7F04
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x79
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E00 ; =ov86_021E7F20
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r5, _021E5E04 ; =ov86_021E7F3C
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x79
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E08 ; =ov86_021E7F58
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021E5DF8: .word ov86_021E7EC8
_021E5DFC: .word ov86_021E7F04
_021E5E00: .word ov86_021E7F20
_021E5E04: .word ov86_021E7F3C
_021E5E08: .word ov86_021E7F58
	thumb_func_end ov86_021E5D30

