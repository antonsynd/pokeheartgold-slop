	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0226078C
	.public ov91_022607C4
	.public ov91_022608A8

	.text

	thumb_func_start ov91_0226078C
ov91_0226078C: ; 0x0226078C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x79
	lsl r0, r0, #4
	str r1, [sp]
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_0226079C:
	ldr r0, _022607C0 ; =0x00000888
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022607AE
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl ov91_022608A8
_022607AE:
	mov r0, #0x42
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, r0
	cmp r6, #0x60
	blt _0226079C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022607C0: .word 0x00000888
	thumb_func_end ov91_0226078C

	thumb_func_start ov91_022607C4
ov91_022607C4: ; 0x022607C4
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r3, sp, #0
	mov r0, #0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r0, #0
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	ldr r0, _02260828 ; =0x0000076C
	str r2, [sp, #0x2c]
	add r0, r5, r0
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r0, r3, #0
	bl Sprite_CreateAffine
	mov r1, #0
	str r0, [r4]
	bl Sprite_SetDrawFlag
	ldr r1, _0226082C ; =0x0000074C
	add r0, r4, #0
	add r0, #0x7c
	add r1, r5, r1
	bl sub_020181B0
	add r4, #0x7c
	add r0, r4, #0
	mov r1, #0
	bl sub_020182A0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_02260828: .word 0x0000076C
_0226082C: .word 0x0000074C
	thumb_func_end ov91_022607C4

