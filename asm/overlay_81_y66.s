	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241650
	.public ov81_022416CC
	.extern ov81_02242D88
	.extern ov81_02242DAC
	.extern ov81_02242DE4
	.extern ov81_02243228

	.text

	.text
	thumb_func_start ov81_02241650
ov81_02241650: ; 0x02241650
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _022416C8 ; =0x00000464
	add r2, sp, #4
	ldr r0, [r5, r0]
	add r3, sp, #0
	add r4, r1, #0
	bl ov81_02243228
	cmp r4, #3
	bne _0224169E
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov81_02242DE4
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r3, r4, r5, pc}
_0224169E:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022416C8: .word 0x00000464
	thumb_func_end ov81_02241650

	thumb_func_start ov81_022416CC
ov81_022416CC: ; 0x022416CC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02241748 ; =0x00000464
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r2, sp, #4
	add r3, sp, #0
	bl ov81_02243228
	sub r0, r4, #4
	cmp r0, #1
	bhi _0224171C
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #6
	bl ov81_02242DE4
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r3, r4, r5, pc}
_0224171C:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02241748: .word 0x00000464
	thumb_func_end ov81_022416CC

