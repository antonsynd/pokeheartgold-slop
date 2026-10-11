	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224141C
	.public ov81_0224174C
	.public ov81_02242D88
	.public ov81_02243140
	.public ov81_022431E0
	.public ov81_02243314

	.text

	thumb_func_start ov81_0224174C
ov81_0224174C: ; 0x0224174C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r1, #3
	bl ov81_022431E0
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, r1]
	mov r2, #0
	bl ov81_02243140
	mov r0, #1
	lsl r0, r0, #8
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #5
	lsl r0, r0, #6
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _022417B0 ; =0x00000464
	mov r1, #4
	ldr r0, [r4, r0]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #4
	bl ov81_0224141C
	ldr r0, _022417B0 ; =0x00000464
	ldrb r2, [r4, #9]
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02243314
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242D88
	pop {r4, pc}
	.balign 4, 0
_022417B0: .word 0x00000464
	thumb_func_end ov81_0224174C

