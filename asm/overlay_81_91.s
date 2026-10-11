	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242704
	.public ov81_022433FC

	.text

	thumb_func_start ov81_022433FC
ov81_022433FC: ; 0x022433FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bne _0224341C
	bl GridInputHandler_SetAllEnabled
	add r0, r5, #0
	mov r1, #4
	bl GridInputHandler_ClearEnabledFlag
	add r0, r5, #0
	mov r1, #5
	bl GridInputHandler_ClearEnabledFlag
	b _02243430
_0224341C:
	bl GridInputHandler_SetAllEnabled
	add r0, r5, #0
	mov r1, #6
	bl GridInputHandler_ClearEnabledFlag
	add r0, r5, #0
	mov r1, #7
	bl GridInputHandler_ClearEnabledFlag
_02243430:
	add r0, r4, #0
	bl ov81_02242704
	cmp r0, #0
	bne _02243442
	add r0, r5, #0
	mov r1, #3
	bl GridInputHandler_ClearEnabledFlag
_02243442:
	pop {r3, r4, r5, pc}
	thumb_func_end ov81_022433FC

