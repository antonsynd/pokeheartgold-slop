	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E6FC4
	.extern ov95_021E7860

	.text

	.text
	thumb_func_start ov95_021E6FC4
ov95_021E6FC4: ; 0x021E6FC4
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r5, _021E701C ; =ov95_021E7860
	add r4, r0, #0
	add r3, sp, #0
	mov r2, #0xa
_021E6FD0:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6FD0
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x1c
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x38
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	add sp, #0x54
	pop {r4, r5, pc}
	.balign 4, 0
_021E701C: .word ov95_021E7860
	thumb_func_end ov95_021E6FC4

