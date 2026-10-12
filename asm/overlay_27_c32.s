	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BB6C
	.extern ov27_0225CED8
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225BB6C
ov27_0225BB6C: ; 0x0225BB6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, _0225BC10 ; =0x000004AC
	mov r1, #0
	ldr r0, [r5, r0]
	bl BufferPlayersName
	ldr r7, _0225BC14 ; =ov27_0225CFC8
	mov r4, #0
	add r6, r5, #0
_0225BB8A:
	ldr r0, _0225BC18 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r0, r0, #3
	add r0, r7, r0
	ldrb r2, [r4, r0]
	cmp r2, #0xd
	beq _0225BBBA
	lsl r3, r2, #2
	ldr r2, _0225BC1C ; =ov27_0225CF94
	ldr r0, _0225BC10 ; =0x000004AC
	add r2, r2, r3
	ldrh r2, [r2, #2]
	ldr r1, _0225BC20 ; =0x000004A8
	ldr r0, [r5, r0]
	lsl r2, r2, #0x11
	ldr r1, [r5, r1]
	lsr r2, r2, #0x11
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC24 ; =0x00000474
	str r0, [r6, r1]
_0225BBBA:
	add r4, r4, #1
	add r6, #8
	cmp r4, #7
	blt _0225BB8A
	ldr r4, _0225BC28 ; =ov27_0225CED8
	mov r7, #0
	add r6, r5, #0
_0225BBC8:
	ldr r0, _0225BC20 ; =0x000004A8
	ldr r1, [r4]
	ldr r0, [r5, r0]
	bl NewString_ReadMsgData
	mov r1, #0x4b
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #5
	blt _0225BBC8
	sub r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0xc
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC2C ; =0x000004C4
	mov r2, #0xd
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x18
	sub r1, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC30 ; =0x000004C8
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC10: .word 0x000004AC
_0225BC14: .word ov27_0225CFC8
_0225BC18: .word 0x0000051C
_0225BC1C: .word ov27_0225CF94
_0225BC20: .word 0x000004A8
_0225BC24: .word 0x00000474
_0225BC28: .word ov27_0225CED8
_0225BC2C: .word 0x000004C4
_0225BC30: .word 0x000004C8
	thumb_func_end ov27_0225BB6C

