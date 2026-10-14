	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7D30
	.extern ov99_021E9F80
	.extern ov99_021EA0BC
	.extern ov99_021EA348

	.text

	.text
	thumb_func_start ov99_021E7D30
ov99_021E7D30: ; 0x021E7D30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl BgConfig_Alloc
	add r3, sp, #0
	ldr r4, _021E7D98 ; =ov99_021E9F80
	str r0, [r5]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E7D9C ; =ov99_021EA0BC
	add r3, sp, #0x10
	mov r2, #0x18
_021E7D58:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E7D58
	ldr r0, [r4]
	ldr r4, _021E7DA0 ; =ov99_021EA348
	str r0, [r3]
	mov r7, #0
	add r6, sp, #0x10
_021E7D6A:
	ldrb r1, [r4]
	ldr r0, [r5]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5]
	bl BgClearTilemapBufferAndCommit
	ldrb r0, [r4]
	ldr r3, [r5, #0xc]
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #7
	blt _021E7D6A
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7D98: .word ov99_021E9F80
_021E7D9C: .word ov99_021EA0BC
_021E7DA0: .word ov99_021EA348
	thumb_func_end ov99_021E7D30

