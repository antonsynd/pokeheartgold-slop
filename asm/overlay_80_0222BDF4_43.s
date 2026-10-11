	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_044

	.text

	thumb_func_start FrtCmd_044
FrtCmd_044: ; 0x0222C8B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0209680C
	add r6, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadWord
	ldr r1, [r5, #0x1c]
	add r4, r5, #0
	add r0, r1, r0
	str r1, [sp]
	str r0, [r5, #0x1c]
	add r4, #0x1c
_0222C8D2:
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r7, r0, #0
	ldr r0, _0222C948 ; =0x0000FD13
	cmp r7, r0
	beq _0222C93E
	add r0, r5, #0
	bl FrontierScript_ReadVar
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	str r0, [sp, #0x14]
	ldr r0, [r4]
	ldr r1, [r5, #0x1c]
	add r2, r0, #1
	str r2, [r4]
	ldrb r0, [r1]
	str r0, [sp, #8]
	add r0, r2, #1
	ldr r1, [r5, #0x1c]
	add r2, r7, #0
	str r0, [r4]
	ldrb r0, [r1]
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov80_0223968C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r7, r0, #0
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ManagedSprite_SetDrawFlag
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r6, #0
	bl ov80_02239708
	b _0222C8D2
_0222C93E:
	ldr r0, [sp]
	str r0, [r5, #0x1c]
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C948: .word 0x0000FD13
	thumb_func_end FrtCmd_044

