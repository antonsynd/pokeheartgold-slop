	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_036

	.text

	thumb_func_start FrtCmd_036
FrtCmd_036: ; 0x0222C60C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r0]
	bl sub_0209680C
	str r0, [sp, #4]
	add r0, r5, #0
	bl FrontierScriptContext_ReadWord
	ldr r1, [r5, #0x1c]
	add r4, r5, #0
	add r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	add r4, #0x1c
	add r6, sp, #0xc
_0222C632:
	mov r7, #0
	add r0, r5, #0
	mvn r7, r7
	bl FrontierScript_ReadVar
	strh r0, [r6, #4]
	ldrh r1, [r6, #4]
	ldr r0, _0222C6DC ; =0x0000FD13
	cmp r1, r0
	beq _0222C6D0
	add r0, r5, #0
	bl FrontierScript_ReadVar
	strh r0, [r6]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xa]
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	sub r0, #8
	strh r0, [r6, #6]
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	sub r0, #0x10
	strh r0, [r6, #8]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xb]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	strb r0, [r6, #0xc]
	mov r0, #0
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, _0222C6E0 ; =0x0000EEEE
	cmp r1, r0
	bne _0222C6AA
	ldr r0, [sp, #8]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	bl Save_PlayerData_GetProfile
	bl ov80_0222A7EC
	strh r0, [r6]
	mov r7, #0x1f
	b _0222C6C4
_0222C6AA:
	add r0, r0, #1
	cmp r1, r0
	bne _0222C6C4
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	add r0, r0, #1
	str r0, [r4]
	ldrb r0, [r1]
	bl sub_02034818
	bl ov80_0222A7EC
	strh r0, [r6]
_0222C6C4:
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	add r2, r7, #0
	bl ov80_02239510
	b _0222C632
_0222C6D0:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0222C6DC: .word 0x0000FD13
_0222C6E0: .word 0x0000EEEE
	thumb_func_end FrtCmd_036

