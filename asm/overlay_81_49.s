	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022419E0
	.public ov81_02242D88
	.public ov81_02243140
	.public ov81_022431E0
	.public ov81_022433FC

	.text

	thumb_func_start ov81_022419E0
ov81_022419E0: ; 0x022419E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r1, #1
	bl ov81_022431E0
	mov r1, #0xf7
	lsl r1, r1, #2
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, r1]
	mov r2, #2
	bl ov81_02243140
	add r0, r4, #0
	add r0, #0xe0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0xf0
	bl ScheduleWindowCopyToVram
	ldr r1, _02241A34 ; =0x00000464
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, _02241A34 ; =0x00000464
	ldrb r2, [r4, #9]
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_022433FC
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	pop {r4, pc}
	.balign 4, 0
_02241A34: .word 0x00000464
	thumb_func_end ov81_022419E0

