	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5F50
	.public ov111_021E5FD4
	.extern _021E6B74
	.extern ov111_021E6B7C
	.extern ov111_021E6CA4

	.text

	.text
	thumb_func_start ov111_021E5F50
ov111_021E5F50: ; 0x021E5F50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r5, r0, #0
	ldr r0, [r5]
	bl BgConfig_Alloc
	add r3, sp, #4
	ldr r4, _021E5FC8 ; =ov111_021E6B7C
	str r0, [r5, #8]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E5FCC ; =ov111_021E6CA4
	add r3, sp, #0x14
	mov r2, #0x11
_021E5F78:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5F78
	ldr r0, [r4]
	ldr r4, _021E5FD0 ; =_021E6B74
	str r0, [r3]
	mov r7, #0
	add r6, sp, #0x14
_021E5F8A:
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, #8]
	mov r2, #0
	mov r3, #1
	bl BG_FillCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #5
	blt _021E5F8A
	ldr r1, [r5]
	mov r0, #0xad
	bl NARC_New
	str r0, [r5, #0x1c]
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5FC8: .word ov111_021E6B7C
_021E5FCC: .word ov111_021E6CA4
_021E5FD0: .word _021E6B74
	thumb_func_end ov111_021E5F50

	thumb_func_start ov111_021E5FD4
ov111_021E5FD4: ; 0x021E5FD4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	bl NARC_Delete
	ldr r5, _021E5FFC ; =_021E6B74
	mov r4, #0
_021E5FE2:
	ldrb r1, [r5]
	ldr r0, [r6, #8]
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #5
	blt _021E5FE2
	ldr r0, [r6, #8]
	bl Heap_Free
	pop {r4, r5, r6, pc}
	nop
_021E5FFC: .word _021E6B74
	thumb_func_end ov111_021E5FD4

