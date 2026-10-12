	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8544
	.public ov99_021E856C
	.public ov99_021E8590
	.extern ov99_021E94CC
	.extern ov99_021EA374
	.extern ov99_021EA4F4
	.extern ov99_021EA59C

	.text

	.text
	thumb_func_start ov99_021E8544
ov99_021E8544: ; 0x021E8544
	push {r3, lr}
	add r3, r0, #0
	add r2, r1, #0
	mov r1, #0xac
	ldr r0, [r3]
	ldrsb r1, [r3, r1]
	add r3, #0xb0
	ldr r3, [r3]
	bl ov99_021E94CC
	ldr r1, _021E8568 ; =0x0000FFFF
	cmp r0, r1
	bne _021E8562
	mov r0, #1
	pop {r3, pc}
_021E8562:
	mov r0, #0
	pop {r3, pc}
	nop
_021E8568: .word 0x0000FFFF
	thumb_func_end ov99_021E8544

	thumb_func_start ov99_021E856C
ov99_021E856C: ; 0x021E856C
	push {r4, lr}
	add r4, r0, #0
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E8588 ; =0x027E0000
	ldr r1, _021E858C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E8588: .word 0x027E0000
_021E858C: .word 0x00003FF8
	thumb_func_end ov99_021E856C

	thumb_func_start ov99_021E8590
ov99_021E8590: ; 0x021E8590
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl BgConfig_Alloc
	add r3, sp, #0
	ldr r4, _021E8600 ; =ov99_021EA374
	str r0, [r5, #4]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E8604 ; =ov99_021EA4F4
	add r3, sp, #0x10
	mov r2, #0x15
_021E85B8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E85B8
	ldr r4, _021E8608 ; =ov99_021EA59C
	mov r7, #0
	add r6, sp, #0x10
_021E85C6:
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5, #4]
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r4]
	ldr r3, [r5, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #6
	blt _021E85C6
	ldr r1, [r5, #0xc]
	mov r0, #0xb1
	bl NARC_New
	str r0, [r5, #8]
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E8600: .word ov99_021EA374
_021E8604: .word ov99_021EA4F4
_021E8608: .word ov99_021EA59C
	thumb_func_end ov99_021E8590

