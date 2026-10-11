	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public BattleController_SendData

	.text

	.text
	thumb_func_start BattleController_SendData
BattleController_SendData: ; 0x02262098
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r1, #1
	bne _022620BE
	bl BattleSystem_GetRecvBufferPtr
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_0223A984
	add r5, r0, #0
	add r0, r7, #0
	bl ov12_0223A990
	b _022620D2
_022620BE:
	bl BattleSystem_GetSendBufferPtr
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_0223A960
	add r5, r0, #0
	add r0, r7, #0
	bl ov12_0223A96C
_022620D2:
	add r7, r0, #0
	add r0, sp, #0x10
	ldrh r2, [r5]
	ldrb r3, [r0, #0x10]
	add r0, r2, #5
	add r1, r0, r3
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bls _022620EC
	strh r2, [r7]
	mov r0, #0
	strh r0, [r5]
_022620EC:
	ldr r1, [sp]
	add r0, sp, #8
	strb r1, [r0]
	ldr r1, [sp, #4]
	strb r1, [r0, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r0, #2]
	add r1, sp, #8
	mov r0, #0
_02262100:
	ldrb r7, [r1, r0]
	ldrh r2, [r5]
	add r0, r0, #1
	strb r7, [r4, r2]
	ldrh r2, [r5]
	add r2, r2, #1
	strh r2, [r5]
	cmp r0, #4
	blo _02262100
	mov r0, #0
	cmp r3, #0
	ble _0226212A
_02262118:
	ldrb r2, [r6, r0]
	ldrh r1, [r5]
	add r0, r0, #1
	strb r2, [r4, r1]
	ldrh r1, [r5]
	add r1, r1, #1
	strh r1, [r5]
	cmp r0, r3
	blt _02262118
_0226212A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end BattleController_SendData

