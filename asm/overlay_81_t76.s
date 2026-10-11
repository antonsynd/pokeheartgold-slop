	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241CA0
	.public ov81_02241CEC
	.extern ov81_02241C84
	.extern ov81_02242D94

	.text

	.text
	thumb_func_start ov81_02241CA0
ov81_02241CA0: ; 0x02241CA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02241CE4 ; =0x00000464
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r7, r2, #0
	bl GridInputHandler_GetNextInput
	cmp r0, #6
	bhs _02241CE2
	ldrb r2, [r5, #0x11]
	mov r1, #0
	cmp r2, #0
	ble _02241CD4
	mov r3, #0xf2
	lsl r3, r3, #2
_02241CC0:
	lsl r6, r1, #1
	add r6, r5, r6
	ldrh r6, [r6, r3]
	cmp r0, r6
	beq _02241CD4
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r2
	blt _02241CC0
_02241CD4:
	add r0, r1, #0
	ldr r1, _02241CE8 ; =0x0000047C
	add r2, r4, #0
	ldr r1, [r5, r1]
	add r3, r7, #0
	bl ov81_02241C84
_02241CE2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241CE4: .word 0x00000464
_02241CE8: .word 0x0000047C
	thumb_func_end ov81_02241CA0

	thumb_func_start ov81_02241CEC
ov81_02241CEC: ; 0x02241CEC
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov81_02241CA0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242D94
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov81_02241CEC

