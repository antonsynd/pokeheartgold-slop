	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223114
	.public ov13_022233CC
	.public ov13_02223434
	.public ov13_02223478
	.extern ov13_0224DEE0
	.extern ov13_0224DF08
	.extern ov13_0224DF10

	.text

	.text
	thumb_func_start ov13_02223114
ov13_02223114: ; 0x02223114
	push {r3, lr}
	cmp r0, #0
	bne _0222311C
	b _022233C4
_0222311C:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #7
	bls _02223126
	b _022233B6
_02223126:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02223132: ; jump table
	.short _022233B6 - _02223132 - 2 ; case 0
	.short _02223142 - _02223132 - 2 ; case 1
	.short _0222336A - _02223132 - 2 ; case 2
	.short _022231C2 - _02223132 - 2 ; case 3
	.short _02223226 - _02223132 - 2 ; case 4
	.short _022231F4 - _02223132 - 2 ; case 5
	.short _022232C6 - _02223132 - 2 ; case 6
	.short _022233A2 - _02223132 - 2 ; case 7
_02223142:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022231AE
	ldr r2, _022233C8 ; =ov13_0224DEE0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02223162
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022231BA
	mov r0, #6
	blx r2
	pop {r3, pc}
_02223162:
	cmp r0, #6
	bne _02223188
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _022231BA
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022231BA
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02223188:
	cmp r0, #8
	bne _022231BA
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _022231BA
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022231BA
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022231AE:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r3, #1
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _022231BC
_022231BA:
	b _022233C4
_022231BC:
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_022231C2:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022231E2
	ldr r0, _022233C8 ; =ov13_0224DEE0
	ldr r2, [r0, #0x18]
	cmp r2, #6
	bne _022232BE
	mov r2, #5
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #8
	blx r2
	pop {r3, pc}
_022231E2:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #9
	blx r2
	pop {r3, pc}
_022231F4:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02223214
	ldr r0, _022233C8 ; =ov13_0224DEE0
	ldr r2, [r0, #0x18]
	cmp r2, #8
	bne _022232BE
	mov r2, #7
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_02223214:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_02223226:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _022232B2
	ldr r2, _022233C8 ; =ov13_0224DEE0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02223246
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_02223246:
	cmp r0, #6
	bne _0222326C
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _022232BE
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222326C:
	cmp r0, #2
	bne _0222328C
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _022232BE
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222328C:
	cmp r0, #8
	bne _022232BE
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _022232BE
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022232BE
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022232B2:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	bne _022232C0
_022232BE:
	b _022233C4
_022232C0:
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_022232C6:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02223358
	ldr r2, _022233C8 ; =ov13_0224DEE0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _022232E6
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_022232E6:
	cmp r0, #6
	bne _0222330C
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _022233C4
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222330C:
	cmp r0, #2
	bne _0222332C
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _022233C4
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222332C:
	cmp r0, #8
	bne _02223352
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _022233C4
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02223352:
	mov r0, #3
	str r0, [r2, #0x18]
	pop {r3, pc}
_02223358:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_0222336A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02223390
	ldr r0, _022233C8 ; =ov13_0224DEE0
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _022233C4
	bl WCM_Finish
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_02223390:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	mov r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _022233C4
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_022233A2:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	ldr r2, [r0, #0x18]
	cmp r2, #5
	bne _022233C4
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #5
	blx r2
	pop {r3, pc}
_022233B6:
	ldr r0, _022233C8 ; =ov13_0224DEE0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022233C4
	mov r0, #1
	mov r1, #0
	blx r2
_022233C4:
	pop {r3, pc}
	nop
_022233C8: .word ov13_0224DEE0
	thumb_func_end ov13_02223114

	thumb_func_start ov13_022233CC
ov13_022233CC: ; 0x022233CC
	push {r3, lr}
	ldr r1, _0222342C ; =ov13_0224DEE0
	ldr r0, [r1, #0x18]
	cmp r0, #8
	bhi _02223422
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022233E2: ; jump table
	.short _02223422 - _022233E2 - 2 ; case 0
	.short _02223412 - _022233E2 - 2 ; case 1
	.short _02223422 - _022233E2 - 2 ; case 2
	.short _02223422 - _022233E2 - 2 ; case 3
	.short _02223422 - _022233E2 - 2 ; case 4
	.short _022233F4 - _022233E2 - 2 ; case 5
	.short _02223422 - _022233E2 - 2 ; case 6
	.short _02223406 - _022233E2 - 2 ; case 7
	.short _02223422 - _022233E2 - 2 ; case 8
_022233F4:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl WCM_SearchAsync
	cmp r0, #3
	beq _02223426
	mov r0, #0
	pop {r3, pc}
_02223406:
	bl WCM_DisconnectAsync
	cmp r0, #3
	beq _02223426
	mov r0, #0
	pop {r3, pc}
_02223412:
	ldr r0, [r1, #8]
	ldr r1, _02223430 ; =ov13_02223114
	bl WCM_StartupAsync
	cmp r0, #3
	beq _02223426
	mov r0, #0
	pop {r3, pc}
_02223422:
	mov r0, #0
	pop {r3, pc}
_02223426:
	mov r0, #1
	pop {r3, pc}
	nop
_0222342C: .word ov13_0224DEE0
_02223430: .word ov13_02223114
	thumb_func_end ov13_022233CC

	thumb_func_start ov13_02223434
ov13_02223434: ; 0x02223434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl WCM_LockApList
	bl WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _0222346C
	mov r4, #0
	cmp r6, #0
	ble _0222346C
_02223450:
	cmp r4, r7
	bge _0222346C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _02223450
_0222346C:
	mov r0, #0
	bl WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02223434

	thumb_func_start ov13_02223478
ov13_02223478: ; 0x02223478
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _02223554 ; =ov13_0224DEE0
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _022234AC
	ldr r2, _02223558 ; =ov13_0224DF08
	mov r1, #0
_02223496:
	ldrb r0, [r5]
	add r1, r1, #1
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #6
	blt _02223496
	ldr r1, _02223558 ; =ov13_0224DF08
	ldr r0, _02223554 ; =ov13_0224DEE0
	str r1, [r0, #0x10]
	b _022234BC
_022234AC:
	ldr r0, _02223558 ; =ov13_0224DF08
	mov r1, #0xff
	mov r2, #6
	bl MI_CpuFill8
	ldr r1, _0222355C ; =_02108FC0
	ldr r0, _02223554 ; =ov13_0224DEE0
	str r1, [r0, #0x10]
_022234BC:
	cmp r4, #0
	beq _022234FA
	cmp r6, #0
	ble _022234FA
	cmp r6, #0x20
	bgt _022234FA
	mov r0, #0
	cmp r6, #0
	ble _022234DE
	ldr r2, _02223560 ; =ov13_0224DF10
_022234D0:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _022234D0
_022234DE:
	cmp r0, #0x20
	bge _022234F2
	ldr r1, _02223560 ; =ov13_0224DF10
	add r2, r1, r0
	mov r1, #0
_022234E8:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _022234E8
_022234F2:
	ldr r1, _02223560 ; =ov13_0224DF10
	ldr r0, _02223554 ; =ov13_0224DEE0
	str r1, [r0, #0x14]
	b _0222350A
_022234FA:
	ldr r0, _02223560 ; =ov13_0224DF10
	mov r1, #0xff
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r1, _02223564 ; =_02108FC8
	ldr r0, _02223554 ; =ov13_0224DEE0
	str r1, [r0, #0x14]
_0222350A:
	ldr r2, _02223554 ; =ov13_0224DEE0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _02223530
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	bne _02223548
	ldr r0, _02223554 ; =ov13_0224DEE0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223530:
	bl ov13_022233CC
	cmp r0, #1
	bne _02223548
	ldr r0, _02223554 ; =ov13_0224DEE0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223548:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223554: .word ov13_0224DEE0
_02223558: .word ov13_0224DF08
_0222355C: .word _02108FC0
_02223560: .word ov13_0224DF10
_02223564: .word _02108FC8
	thumb_func_end ov13_02223478

