	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225C434
	.extern ov27_0225D4D4

	.text

	.text
	thumb_func_start ov27_0225C434
ov27_0225C434: ; 0x0225C434
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	bl FieldSystem_TaskIsRunning
	cmp r0, #0
	bne _0225C46C
	ldr r0, [r4, #0x24]
	add r1, r0, #0
	add r1, #0xd2
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	cmp r1, #2
	bne _0225C464
	add r1, r0, #0
	add r1, #0xd2
	ldrb r2, [r1]
	mov r1, #0x3f
	add r0, #0xd2
	bic r2, r1
	mov r1, #3
	orr r1, r2
	strb r1, [r0]
_0225C464:
	ldr r0, _0225C4A4 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	b _0225C496
_0225C46C:
	ldr r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0225C4A8 ; =ov27_0225D4D4
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #1
	bne _0225C496
	ldr r2, [r4, #0x24]
	add r0, r2, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r2, #0xd2
	bic r1, r0
	strb r1, [r2]
	mov r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	bl ov01_021F6A9C
_0225C496:
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteList_RenderAndAnimateSprites
	pop {r4, pc}
	nop
_0225C4A4: .word 0x04001050
_0225C4A8: .word ov27_0225D4D4
	thumb_func_end ov27_0225C434

