	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223EF5C
	.public ov81_0224086C
	.public ov81_022408A0
	.public ov81_02241C0C
	.public ov81_02241FEC
	.public ov81_0224218C
	.public ov81_02242300
	.public ov81_02242F54
	.public ov81_02242F94
	.public ov81_02242FB0

	.text

	thumb_func_start ov81_0223EF5C
ov81_0223EF5C: ; 0x0223EF5C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x11]
	mov r2, #1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #6
	bl Pokepic_SetAttr
	ldrb r0, [r4, #0x11]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r4, #0x11]
	add r1, r4, #0
	add r1, #0x50
	add r0, r0, #2
	lsl r0, r0, #4
	add r0, r1, r0
	bl ScheduleWindowCopyToVram
	ldrb r0, [r4, #0x11]
	mov r1, #0
	sub r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r2, [r4, #0x11]
	add r0, r4, #0
	add r2, r2, #1
	bl ov81_022408A0
	add r0, r4, #0
	mov r1, #0
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	sub r0, #0x68
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	bl ov81_02242F54
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	sub r0, #0x68
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov81_02242FB0
	ldrb r0, [r4, #0x11]
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	sub r0, #0x68
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242F94
	ldrb r0, [r4, #0x11]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	strh r2, [r1, r0]
	add r0, r4, #0
	bl ov81_02241C0C
	add r0, r4, #0
	bl ov81_02241FEC
	add r0, r4, #0
	bl ov81_0224218C
	ldr r0, _0223F034 ; =0x00000464
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #6
	bl ov81_02242300
	pop {r4, pc}
	nop
_0223F034: .word 0x00000464
	thumb_func_end ov81_0223EF5C

