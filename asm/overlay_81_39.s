	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224141C
	.public ov81_02241450
	.public ov81_02242D88
	.public ov81_02242E08
	.public ov81_02242F40
	.public ov81_02243140
	.public ov81_02243270

	.text

	thumb_func_start ov81_02241450
ov81_02241450: ; 0x02241450
	push {r4, lr}
	mov r1, #0xf7
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, r1]
	mov r2, #0
	bl ov81_02243140
	mov r0, #1
	lsl r0, r0, #8
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	ldr r0, _022414D8 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F40
	cmp r0, #0
	bne _02241498
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	b _022414A2
_02241498:
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
_022414A2:
	ldr r0, _022414DC ; =0x00000464
	mov r1, #6
	ldr r0, [r4, r0]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #6
	bl ov81_0224141C
	ldr r0, _022414DC ; =0x00000464
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov81_02243270
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242E08
	pop {r4, pc}
	.balign 4, 0
_022414D8: .word 0x00000468
_022414DC: .word 0x00000464
	thumb_func_end ov81_02241450

