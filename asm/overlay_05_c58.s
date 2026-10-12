	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221DB94
	.extern ov05_0221EA88
	.extern ov05_0221EB38
	.extern ov05_0221EB8C
	.extern ov05_0221EBC4

	.text

	.text
	thumb_func_start ov05_0221DB94
ov05_0221DB94: ; 0x0221DB94
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _0221DC24 ; =ov05_0221EA88
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _0221DC28 ; =ov05_0221EB8C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0221DC2C ; =ov05_0221EB38
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0221DC30 ; =ov05_0221EBC4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r4, #0xc]
	mov r3, #0
	bl InitBgFromTemplate
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_0221DC24: .word ov05_0221EA88
_0221DC28: .word ov05_0221EB8C
_0221DC2C: .word ov05_0221EB38
_0221DC30: .word ov05_0221EBC4
	thumb_func_end ov05_0221DB94

