	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260D14

	.text

	thumb_func_start ov91_02260D14
ov91_02260D14: ; 0x02260D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r4, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r2, sp, #0
	add r0, r4, #0
	add r1, r4, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x1c]
	str r0, [sp]
	ldr r0, _02260D7C ; =0x0000076C
	str r3, [sp, #0x2c]
	add r0, r7, r0
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r7, r4, #0
_02260D50:
	add r0, sp, #0
	bl Sprite_CreateAffine
	str r0, [r5, #4]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #4]
	mov r1, #1
	bl Sprite_SetAffineOverwriteMode
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl Sprite_SetPaletteOverride
	str r7, [r5]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #8
	blt _02260D50
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260D7C: .word 0x0000076C
	thumb_func_end ov91_02260D14

