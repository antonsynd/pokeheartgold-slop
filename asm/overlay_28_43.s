	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E9E0
	.extern ov28_0225E8B8
	.extern ov28_0225EA58
	.extern ov28_0225EA80

	.text

	.text
	thumb_func_start ov28_0225E9E0
ov28_0225E9E0: ; 0x0225E9E0
	push {r4, lr}
	add r4, r0, #0
	bl ov28_0225EA58
	cmp r0, #1
	bne _0225EA10
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	pop {r4, pc}
_0225EA10:
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r0, _0225EA54 ; =ov28_0225EA80
	ldr r1, [r4, r1]
	mov r2, #8
	mov r3, #9
	bl ov28_0225E8B8
	cmp r0, #0
	beq _0225EA50
	ldr r0, [r4, #0x18]
	mov r1, #0xb
	add r0, #0xd0
	strh r1, [r0]
	mov r0, #0x43
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	bl MenuInputStateMgr_SetState
_0225EA50:
	pop {r4, pc}
	nop
_0225EA54: .word ov28_0225EA80
	thumb_func_end ov28_0225E9E0

