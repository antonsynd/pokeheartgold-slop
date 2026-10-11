	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_022621C4
	.extern BattleController_RecvData

	.text

	.text
	thumb_func_start ov12_022621C4
ov12_022621C4: ; 0x022621C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #1
	bne _022621EA
	bl BattleSystem_GetRecvBufferPtr
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0223A978
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0223A984
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_0223A990
	b _02262206
_022621EA:
	bl BattleSystem_GetSendBufferPtr
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0223A954
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0223A960
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_0223A96C
_02262206:
	ldrh r1, [r4]
	ldrh r2, [r7]
	cmp r1, r2
	beq _0226223C
	ldrh r2, [r0]
	cmp r1, r2
	bne _0226221A
	mov r1, #0
	strh r1, [r4]
	strh r1, [r0]
_0226221A:
	ldrh r1, [r4]
	add r0, r5, #0
	add r1, r6, r1
	bl BattleController_RecvData
	cmp r0, #1
	bne _0226223C
	ldrh r0, [r4]
	add r1, r0, #2
	ldrb r2, [r6, r1]
	add r1, r0, #3
	ldrb r1, [r6, r1]
	lsl r1, r1, #8
	orr r1, r2
	add r1, r1, #4
	add r0, r0, r1
	strh r0, [r4]
_0226223C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_022621C4

