	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241D38
	.extern ov81_02241C84
	.extern ov81_02242D88
	.extern ov81_02242D94

	.text

	.text
	thumb_func_start ov81_02241D38
ov81_02241D38: ; 0x02241D38
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02241D8C ; =0x00000464
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	cmp r4, #4
	bhs _02241D88
	cmp r4, #3
	bne _02241D60
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	add sp, #8
	pop {r3, r4, r5, pc}
_02241D60:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	ldr r1, _02241D90 ; =0x0000047C
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, sp, #4
	add r3, sp, #0
	bl ov81_02241C84
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242D94
_02241D88:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241D8C: .word 0x00000464
_02241D90: .word 0x0000047C
	thumb_func_end ov81_02241D38

