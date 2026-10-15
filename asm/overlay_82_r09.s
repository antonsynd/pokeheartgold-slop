	.include "macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223E5D4
	.extern ov82_0223EF7C
	.extern ov82_0223F5E0
	.extern ov82_0223F6C4
	.extern ov82_0223F6E8
	.extern ov82_0223F834
	.extern ov82_0223F84C
	.extern ov82_0223F8E4
	.extern ov82_0223F90C
	.extern ov82_0223F948
	.extern ov82_0223FCB0
	.extern ov82_0223FD78
	.extern ov82_0223FE18

	.text

	.text
	thumb_func_start ov82_0223E5D4
ov82_0223E5D4: ; 0x0223E5D4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _0223E632
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E5EA: ; jump table
	.short _0223E5FE - _0223E5EA - 2 ; case 0
	.short _0223E620 - _0223E5EA - 2 ; case 1
	.short _0223E708 - _0223E5EA - 2 ; case 2
	.short _0223E666 - _0223E5EA - 2 ; case 3
	.short _0223E6C2 - _0223E5EA - 2 ; case 4
	.short _0223E726 - _0223E5EA - 2 ; case 5
	.short _0223E762 - _0223E5EA - 2 ; case 6
	.short _0223E772 - _0223E5EA - 2 ; case 7
	.short _0223E7AA - _0223E5EA - 2 ; case 8
	.short _0223E7BA - _0223E5EA - 2 ; case 9
_0223E5FE:
	ldrb r0, [r4, #0x1a]
	bl ov82_0223F6C4
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #5
	bl ov82_0223F6E8
	cmp r0, #1
	bne _0223E632
	mov r0, #0
	strb r0, [r4, #0x1b]
	strb r0, [r4, #0x1a]
	strb r0, [r4, #0x17]
	mov r0, #1
	strb r0, [r4, #8]
	b _0223E7D6
_0223E620:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0223E62C
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
	b _0223E7D6
_0223E62C:
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bhs _0223E634
_0223E632:
	b _0223E7D6
_0223E634:
	mov r0, #0
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x18]
	cmp r0, #0x14
	bhs _0223E652
	bl sub_0203769C
	cmp r0, #0
	bne _0223E64C
	mov r0, #2
	strb r0, [r4, #8]
	b _0223E7D6
_0223E64C:
	mov r0, #3
	strb r0, [r4, #8]
	b _0223E7D6
_0223E652:
	bl sub_0203769C
	cmp r0, #0
	bne _0223E660
	mov r0, #3
	strb r0, [r4, #8]
	b _0223E7D6
_0223E660:
	mov r0, #2
	strb r0, [r4, #8]
	b _0223E7D6
_0223E666:
	mov r0, #0
	bl ov82_0223F948
	mov r1, #0
	mov r0, #0x82
	strh r1, [r4, #0x14]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov82_0223FCB0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov82_0223FD78
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov80_0222A7CC
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #1
	bl ov82_0223EF7C
	strb r0, [r4, #0xa]
	mov r0, #0xa
	mov r1, #0x9f
	strb r0, [r4, #0x1b]
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	mov r2, #2
	bl ov82_0223F5E0
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #4
	strb r0, [r4, #8]
	b _0223E7D6
_0223E6C2:
	ldr r1, _0223E7DC ; =0x0000027D
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0223E73A
	cmp r2, #1
	bne _0223E6D8
	sub r0, r1, #1
	ldrb r0, [r4, r0]
	strb r0, [r4, #0xd]
	mov r0, #1
	pop {r4, pc}
_0223E6D8:
	bl ov82_0223F90C
	mov r1, #0x9f
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	mov r2, #0
	bl ov82_0223F5E0
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x9f
	mov r2, #0xff
	lsl r0, r0, #2
	strb r2, [r4, r0]
	mov r1, #0
	add r0, r0, #1
	strb r1, [r4, r0]
	strb r2, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0223E708:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	mov r2, #1
	bl ov82_0223F5E0
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	bl ov82_0223F84C
	mov r0, #5
	strb r0, [r4, #8]
	b _0223E7D6
_0223E726:
	add r0, #0x8c
	ldr r0, [r0]
	bl ov82_0223FE18
	cmp r0, #0
	beq _0223E7D6
	cmp r0, #1
	beq _0223E73C
	cmp r0, #2
	beq _0223E756
_0223E73A:
	b _0223E7D6
_0223E73C:
	ldr r0, _0223E7E0 ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E7E4 ; =0x00000623
	bl PlaySE
	add r0, r4, #0
	bl ov82_0223F834
	mov r0, #6
	strb r0, [r4, #8]
	b _0223E7D6
_0223E756:
	add r0, r4, #0
	bl ov82_0223F834
	mov r0, #7
	strb r0, [r4, #8]
	b _0223E7D6
_0223E762:
	mov r1, #6
	mov r2, #1
	bl ov82_0223F6E8
	cmp r0, #1
	bne _0223E7D6
	mov r0, #1
	pop {r4, pc}
_0223E772:
	mov r1, #0x14
	ldrsh r2, [r4, r1]
	cmp r2, #0
	ble _0223E788
	sub r0, r2, #1
	strh r0, [r4, #0x14]
	ldrsh r0, [r4, r1]
	neg r0, r0
	bl ov82_0223F948
	b _0223E7D6
_0223E788:
	mov r1, #6
	mov r2, #2
	bl ov82_0223F6E8
	cmp r0, #1
	bne _0223E7D6
	add r0, r4, #0
	bl ov82_0223F8E4
	mov r0, #0x9f
	mov r1, #0xff
	lsl r0, r0, #2
	strb r1, [r4, r0]
	strb r1, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_0223E7AA:
	bl sub_02037BEC
	mov r0, #0x68
	bl sub_02037AC0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223E7D6
_0223E7BA:
	mov r0, #0x68
	bl sub_02037B38
	cmp r0, #1
	bne _0223E7D6
	bl sub_02037BEC
	mov r0, #0x69
	bl sub_020379A0
	mov r0, #0xff
	strb r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_0223E7D6:
	mov r0, #0
	pop {r4, pc}
	nop
_0223E7DC: .word 0x0000027D
_0223E7E0: .word 0x000005DC
_0223E7E4: .word 0x00000623
	thumb_func_end ov82_0223E5D4

