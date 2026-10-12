	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7898
	.extern ov68_021E66A0

	.text

	.text
	thumb_func_start ov68_021E7898
ov68_021E7898: ; 0x021E7898
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	cmp r1, #1
	bne _021E78D6
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl GridInputHandler_SetEnabledFlag
	add r0, r4, #0
	add r0, #0x88
	bl ScheduleWindowCopyToVram
	mov r0, #4
	str r0, [sp]
	mov r3, #8
	str r3, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x14
	bl ov68_021E66A0
	ldr r0, _021E790C ; =0x000001CE
	mov r1, #1
	add sp, #0xc
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_021E78D6:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #7
	bl GridInputHandler_ClearEnabledFlag
	add r0, r4, #0
	add r0, #0x88
	bl ClearWindowTilemapAndScheduleTransfer
	mov r0, #4
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x14
	mov r3, #8
	bl ov68_021E66A0
	mov r1, #0
	ldr r0, _021E790C ; =0x000001CE
	strh r1, [r4, r0]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E790C: .word 0x000001CE
	thumb_func_end ov68_021E7898

