	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241804
	.public ov81_02242D88
	.public ov81_02243140

	.text

	thumb_func_start ov81_02241804
ov81_02241804: ; 0x02241804
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0224183C ; =0x00000464
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	mov r1, #0xf7
	lsl r1, r1, #2
	add r4, r0, #0
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, r1]
	mov r2, #3
	bl ov81_02243140
	add r0, r5, #0
	add r0, #0xf0
	bl ScheduleWindowCopyToVram
	cmp r4, #3
	bne _02241838
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
_02241838:
	pop {r3, r4, r5, pc}
	nop
_0224183C: .word 0x00000464
	thumb_func_end ov81_02241804

