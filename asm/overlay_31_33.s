	.include "asm/macros.inc"
	.include "overlay_31.inc"
	.include "global.inc"
	.public ov31_0225E95C

	.text

	.text
	thumb_func_start ov31_0225E95C
ov31_0225E95C: ; 0x0225E95C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E9C8 ; =0x00000283
	add r4, r1, #0
	ldrb r1, [r5, r0]
	add r1, #0xfd
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _0225E97A
	sub r0, #0x2f
	ldr r0, [r5, r0]
	bl PokeathlonSave_GetAthletePoints
	b _0225E982
_0225E97A:
	sub r0, #0x3b
	ldr r0, [r5, r0]
	bl PlayerProfile_GetMoney
_0225E982:
	add r1, r0, #0
	add r0, r5, #0
	bl ov03_02257814
	cmp r0, #2
	bne _0225E998
	add r0, r4, #0
	mov r1, #0x19
	bl NewString_ReadMsgData
	pop {r3, r4, r5, pc}
_0225E998:
	cmp r0, #3
	bne _0225E9A6
	add r0, r4, #0
	mov r1, #0x1a
	bl NewString_ReadMsgData
	pop {r3, r4, r5, pc}
_0225E9A6:
	ldr r0, _0225E9C8 ; =0x00000283
	ldrb r0, [r5, r0]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225E9BE
	add r0, r4, #0
	mov r1, #0x30
	bl NewString_ReadMsgData
	pop {r3, r4, r5, pc}
_0225E9BE:
	add r0, r4, #0
	mov r1, #0xb
	bl NewString_ReadMsgData
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225E9C8: .word 0x00000283
	thumb_func_end ov31_0225E95C

