	.include "macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_022206B0

	.text

	.text
	thumb_func_start ov10_022206B0
ov10_022206B0: ; 0x022206B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r2, #0
	str r2, [sp, #0x14]
	add r2, r1, #0
	asr r2, r2, #1
	ldr r4, [r5, #0x30]
	str r2, [sp, #0xc]
	add r6, r4, r2
	ldr r2, [sp, #0x14]
	ldr r3, _022209C4 ; =0x000003D3
	str r2, [sp, #0x1c]
	strb r2, [r6, r3]
	ldr r3, [r5, #0x2c]
	mov r2, #0x4b
	and r2, r3
	str r1, [sp]
	cmp r2, #0x4b
	bne _022206E6
	bl ov12_0223AB0C
	cmp r0, #4
	bne _022206E6
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022206E6:
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	mov r0, #0xb7
	str r1, [sp, #8]
	add r1, r4, r1
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _02220704
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220704:
	ldr r1, [sp]
	add r0, r5, #0
	bl BattleSystem_GetParty
	add r7, r0, #0
	mov r5, #0
	bl Party_GetCount
	cmp r0, #0
	ble _02220762
_02220718:
	add r0, r7, #0
	add r1, r5, #0
	bl Party_GetMonByIndex
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02220756
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02220756
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _022209C8 ; =0x000001EE
	cmp r0, r1
	beq _02220756
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_02220756:
	add r0, r7, #0
	add r5, r5, #1
	bl Party_GetCount
	cmp r5, r0
	blt _02220718
_02220762:
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #3
	str r0, [sp, #0x10]
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r5, r4, r0
	ldr r0, [sp, #8]
	add r7, r4, r0
_02220778:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0222078C
	ldr r0, _022209CC ; =0x000003CD
	ldrb r1, [r5, r0]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bgt _02220798
_0222078C:
	mov r0, #0xe7
	ldr r1, [sp, #0x18]
	lsl r0, r0, #2
	ldrh r6, [r1, r0]
	cmp r6, #0
	bne _0222079A
_02220798:
	b _02220A88
_0222079A:
	cmp r6, #0x17
	bne _022207BC
	ldr r1, _022209D0 ; =0x00002D90
	ldr r0, _022209D4 ; =0x00002D8C
	ldr r1, [r7, r1]
	ldr r0, [r7, r0]
	lsr r1, r1, #2
	cmp r0, r1
	bhs _02220816
	cmp r0, #0
	beq _02220816
	ldr r0, _022209D8 ; =0x000003D1
	mov r1, #0
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022207BC:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x26
	bl GetItemVar
	cmp r0, #0
	beq _022207FE
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x36
	bl GetItemVar
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	beq _02220816
	ldr r0, _022209D4 ; =0x00002D8C
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02220816
	add r0, r0, #4
	ldr r3, [r7, r0]
	lsr r0, r3, #2
	cmp r1, r0
	blo _022207F2
	sub r0, r3, r1
	cmp r0, r2
	bls _02220816
_022207F2:
	ldr r0, _022209D8 ; =0x000003D1
	mov r1, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	str r0, [sp, #0x1c]
	b _02220A62
_022207FE:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0xf
	bl GetItemVar
	cmp r0, #0
	beq _02220834
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02220818
_02220816:
	b _02220A62
_02220818:
	mov r0, #5
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220834:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x10
	bl GetItemVar
	cmp r0, #0
	beq _0222086E
	ldr r0, _022209DC ; =0x00002DAC
	mov r1, #8
	ldr r0, [r7, r0]
	tst r1, r0
	bne _02220852
	mov r1, #0x80
	tst r0, r1
	beq _02220922
_02220852:
	mov r0, #4
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_0222086E:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x11
	bl GetItemVar
	cmp r0, #0
	beq _022208A2
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x10
	tst r0, r1
	beq _02220922
	mov r0, #3
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022208A2:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x12
	bl GetItemVar
	cmp r0, #0
	beq _022208D6
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	beq _02220922
	mov r0, #2
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022208D6:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x13
	bl GetItemVar
	cmp r0, #0
	beq _0222090A
	ldr r0, _022209DC ; =0x00002DAC
	ldr r1, [r7, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02220922
	mov r0, #1
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_0222090A:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x14
	bl GetItemVar
	cmp r0, #0
	beq _02220940
	ldr r0, _022209E0 ; =0x00002DB0
	ldr r1, [r7, r0]
	mov r0, #7
	tst r0, r1
	bne _02220924
_02220922:
	b _02220A62
_02220924:
	mov r0, #0
	bl MaskOfFlagNo
	ldr r1, _022209C4 ; =0x000003D3
	ldrb r1, [r5, r1]
	orr r1, r0
	ldr r0, _022209C4 ; =0x000003D3
	strb r1, [r5, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220940:
	ldr r0, _022209E4 ; =0x00002DD4
	ldr r1, [r7, r0]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	sub r0, r1, r0
	bpl _02220950
	b _02220A5C
_02220950:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1b
	bl GetItemVar
	cmp r0, #0
	beq _02220970
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220970:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl GetItemVar
	cmp r0, #0
	beq _02220990
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #2
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220990:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1d
	bl GetItemVar
	cmp r0, #0
	beq _022209B0
	ldr r0, _022209C4 ; =0x000003D3
	mov r1, #4
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022209B0:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1e
	bl GetItemVar
	cmp r0, #0
	beq _022209F8
	ldr r0, _022209C4 ; =0x000003D3
	b _022209E8
	nop
_022209C4: .word 0x000003D3
_022209C8: .word 0x000001EE
_022209CC: .word 0x000003CD
_022209D0: .word 0x00002D90
_022209D4: .word 0x00002D8C
_022209D8: .word 0x000003D1
_022209DC: .word 0x00002DAC
_022209E0: .word 0x00002DB0
_022209E4: .word 0x00002DD4
_022209E8:
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_022209F8:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x1f
	bl GetItemVar
	cmp r0, #0
	beq _02220A16
	ldr r0, _02220AA0 ; =0x000003D3
	mov r1, #3
	strb r1, [r5, r0]
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A16:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x20
	bl GetItemVar
	cmp r0, #0
	beq _02220A36
	ldr r0, _02220AA0 ; =0x000003D3
	mov r1, #6
	strb r1, [r5, r0]
	mov r1, #3
	sub r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A36:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0x16
	bl GetItemVar
	cmp r0, #0
	beq _02220A62
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	bne _02220A62
	ldr r0, _02220AA4 ; =0x000003D1
	mov r1, #4
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02220A62
_02220A5C:
	ldr r0, _02220AA4 ; =0x000003D1
	mov r1, #5
	strb r1, [r5, r0]
_02220A62:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02220A88
	ldr r0, [sp]
	mov r1, #1
	bic r0, r1
	ldr r1, [sp, #0x10]
	str r0, [sp]
	add r3, r4, r1
	ldr r1, [sp, #4]
	ldr r2, _02220AA8 ; =0x000003D6
	add r0, r4, r0
	strh r6, [r0, r2]
	lsl r1, r1, #1
	mov r0, #0
	add r1, r3, r1
	sub r2, #0x3a
	strh r0, [r1, r2]
	b _02220A9A
_02220A88:
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	bge _02220A9A
	b _02220778
_02220A9A:
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02220AA0: .word 0x000003D3
_02220AA4: .word 0x000003D1
_02220AA8: .word 0x000003D6
	thumb_func_end ov10_022206B0

