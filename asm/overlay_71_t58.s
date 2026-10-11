	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247990
	.extern ov71_022479C8
	.extern ov71_0224BC64

	.text

	.text
	thumb_func_start ov71_02247990
ov71_02247990: ; 0x02247990
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #4
	bhs _022479BE
	lsl r3, r2, #2
	ldr r2, _022479C4 ; =ov71_0224BC64
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _022479B4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_022479B4:
	add r0, r5, #0
	bl ov71_022479C8
	mov r0, #0
	pop {r3, r4, r5, pc}
_022479BE:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022479C4: .word ov71_0224BC64
	thumb_func_end ov71_02247990

