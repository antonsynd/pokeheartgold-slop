	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225CEA0
	.extern ov93_0225EA50

	.text

	.text
	thumb_func_start ov93_0225CEA0
ov93_0225CEA0: ; 0x0225CEA0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1]
	bl ov93_0225EA50
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl PaletteData_PushTransparentBuffers
	ldr r0, _0225CF04 ; =0x00001454
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0225CED8
	mov r0, #7
	mov r1, #1
	bl ToggleBgLayer
	ldr r0, _0225CF04 ; =0x00001454
	mov r1, #0
	strb r1, [r4, r0]
	b _0225CEEE
_0225CED8:
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0225CEEE
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, _0225CF08 ; =0x00001455
	mov r1, #0
	strb r1, [r4, r0]
_0225CEEE:
	ldr r0, [r4, #0x2c]
	bl DoScheduledBgGpuUpdates
	ldr r3, _0225CF0C ; =0x027E0000
	ldr r1, _0225CF10 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0225CF04: .word 0x00001454
_0225CF08: .word 0x00001455
_0225CF0C: .word 0x027E0000
_0225CF10: .word 0x00003FF8
	thumb_func_end ov93_0225CEA0

