	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022483AC
	.extern ov71_022483E4
	.extern ov71_0224BCFC

	.text

	.text
	thumb_func_start ov71_022483AC
ov71_022483AC: ; 0x022483AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #4
	bhs _022483DA
	lsl r3, r2, #2
	ldr r2, _022483E0 ; =ov71_0224BCFC
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _022483D0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_022483D0:
	add r0, r5, #0
	bl ov71_022483E4
	mov r0, #0
	pop {r3, r4, r5, pc}
_022483DA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022483E0: .word ov71_0224BCFC
	thumb_func_end ov71_022483AC

