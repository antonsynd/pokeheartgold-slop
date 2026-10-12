	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242844

    .text

	.text
	thumb_func_start ov83_02242844
ov83_02242844: ; 0x02242844
	push {r4, r5, r6, lr}
	add r6, r0, #0
	cmp r1, #1
	bne _02242870
	mov r0, #0x17
	lsl r0, r0, #4
	mov r4, #0x12
	add r5, r6, r0
_02242854:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x2f
	bls _02242854
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #1
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
_02242870:
	mov r0, #0x17
	lsl r0, r0, #4
	mov r5, #0x12
	add r4, r6, r0
_02242878:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x2f
	bls _02242878
	mov r0, #0x1e
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r1, #0
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02242844

