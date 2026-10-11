	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0224086C
	.extern ov81_0224080C

	.text

	.text
	thumb_func_start ov81_0224086C
ov81_0224086C: ; 0x0224086C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r2, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xc0
	str r3, [sp, #0x14]
	bl ov81_0224080C
	add r4, #0xc0
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov81_0224086C

