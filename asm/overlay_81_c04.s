	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223EBE4
	.extern ov81_022412C4
	.extern ov81_02242EB8
	.extern ov81_02242F48
	.extern ov81_02242F94
	.extern ov81_02242FB0

	.text

	.text
	thumb_func_start ov81_0223EBE4
ov81_0223EBE4: ; 0x0223EBE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223EC40
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_0223EBF6:
	add r0, r5, #0
	add r1, r6, #0
	bl ov81_022412C4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r7]
	mov r1, #1
	bl ov81_02242EB8
	ldrb r0, [r5, #0x13]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0223EC36
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F48
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242FB0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242F94
_0223EC36:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0223EBF6
_0223EC40:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_0223EBE4

