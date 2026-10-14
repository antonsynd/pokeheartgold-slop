	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022401C8

	.text

	.text
	thumb_func_start ov81_022401C8
ov81_022401C8: ; 0x022401C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02240204
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PokepicManager_HandleLoadImgAndOrPltt
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022401EA
	bl PaletteData_PushTransparentBuffers
_022401EA:
	ldr r0, [r4, #0x4c]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _02240208 ; =0x027E0000
	ldr r1, _0224020C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
_02240204:
	pop {r4, pc}
	nop
_02240208: .word 0x027E0000
_0224020C: .word 0x00003FF8
	thumb_func_end ov81_022401C8

