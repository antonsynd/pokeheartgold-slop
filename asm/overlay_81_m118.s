	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022424AC
	.extern ov81_022409B0

	.text

	.text
	thumb_func_start ov81_022424AC
ov81_022424AC: ; 0x022424AC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r6, #0xf2
	lsl r6, r6, #2
	add r2, r1, #0
	ldrh r1, [r0, r6]
	add r1, r1, #2
	cmp r2, #4
	blo _022424CC
	add r0, #0x50
	lsl r1, r1, #4
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	add sp, #0x18
	pop {r4, r5, r6, pc}
_022424CC:
	lsl r4, r1, #4
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	str r3, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	sub r1, r6, #4
	add r5, r0, #0
	ldr r1, [r0, r1]
	lsl r2, r2, #0x18
	add r5, #0x50
	str r1, [sp, #0x14]
	add r1, r5, r4
	lsr r2, r2, #0x18
	mov r3, #4
	bl ov81_022409B0
	add r0, r5, r4
	bl ScheduleWindowCopyToVram
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov81_022424AC

