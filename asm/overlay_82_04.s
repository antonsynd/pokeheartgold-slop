	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223E2EC
	.public ov82_0223E5D4
	.public ov82_0223E7E8
	.public ov82_0223E820
	.public ov82_0223E888
	.extern ov82_0223E8C4
	.extern ov82_0223EF1C
	.extern ov82_0223EF7C
	.extern ov82_0223F224
	.extern ov82_0223F300
	.extern ov82_0223F488
	.extern ov82_0223F53C
	.extern ov82_0223F558
	.extern ov82_0223F570
	.extern ov82_0223F580
	.extern ov82_0223F5E0
	.extern ov82_0223F6C4
	.extern ov82_0223F6CC
	.extern ov82_0223F6E4
	.extern ov82_0223F6E8
	.extern ov82_0223F834
	.extern ov82_0223F84C
	.extern ov82_0223F8E4
	.extern ov82_0223F90C
	.extern ov82_0223F948
	.extern ov82_0223FCB0
	.extern ov82_0223FCBC
	.extern ov82_0223FCFC
	.extern ov82_0223FD78
	.extern ov82_0223FE18

	.text

	.text
	thumb_func_start ov82_0223E2EC
ov82_0223E2EC: ; 0x0223E2EC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #7
	bhi _0223E33A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E304: ; jump table
	.short _0223E314 - _0223E304 - 2 ; case 0
	.short _0223E31E - _0223E304 - 2 ; case 1
	.short _0223E3EE - _0223E304 - 2 ; case 2
	.short _0223E448 - _0223E304 - 2 ; case 3
	.short _0223E4AA - _0223E304 - 2 ; case 4
	.short _0223E4E4 - _0223E304 - 2 ; case 5
	.short _0223E532 - _0223E304 - 2 ; case 6
	.short _0223E58A - _0223E304 - 2 ; case 7
_0223E314:
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #8]
	b _0223E5B6
_0223E31E:
	ldr r1, _0223E5BC ; =gSystem
	ldr r1, [r1, #0x48]
	bl ov82_0223F300
	add r0, r4, #0
	bl ov82_0223F53C
	cmp r0, #0
	bne _0223E33C
	add r0, r4, #0
	bl ov82_0223F488
	cmp r0, #0
	bne _0223E33C
_0223E33A:
	b _0223E5B6
_0223E33C:
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #0xfe
	bne _0223E36E
	ldr r0, _0223E5C0 ; =0x000005DD
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	strh r0, [r4, #0x10]
	mov r0, #7
	strb r0, [r4, #8]
	b _0223E5B6
_0223E36E:
	add r0, r4, #0
	bl ov82_0223F6E4
	cmp r0, #1
	ldrb r0, [r4, #0xd]
	bne _0223E38E
	bl ov80_02237920
	cmp r0, #9
	beq _0223E3C2
	ldr r0, _0223E5C4 ; =0x000005F3
	bl PlaySE
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223E38E:
	bl ov82_0223F6C4
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_02030BD0
	cmp r0, #0xa
	blo _0223E3AC
	ldr r0, _0223E5C4 ; =0x000005F3
	bl PlaySE
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223E3AC:
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	cmp r0, #9
	bne _0223E3C2
	ldr r0, _0223E5C4 ; =0x000005F3
	bl PlaySE
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223E3C2:
	ldr r0, _0223E5C0 ; =0x000005DD
	bl PlaySE
	ldrb r0, [r4, #9]
	bl ov80_0223792C
	cmp r0, #0
	bne _0223E3E4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	mov r2, #1
	bl ov82_0223F5E0
	ldr r0, [r4, #0x48]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
_0223E3E4:
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, #2
	strb r0, [r4, #8]
	b _0223E5B6
_0223E3EE:
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	neg r0, r0
	bl ov82_0223F948
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bne _0223E45C
	ldrb r0, [r4, #9]
	bl ov80_0223792C
	cmp r0, #0
	bne _0223E41C
	add r0, r4, #0
	bl ov82_0223F84C
	mov r0, #3
	strb r0, [r4, #8]
	b _0223E5B6
_0223E41C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov82_0223FD78
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov82_0223EF7C
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	add sp, #0x18
	strb r0, [r4, #0x1a]
	mov r0, #1
	strb r0, [r4, #0x17]
	pop {r3, r4, r5, pc}
_0223E448:
	add r0, #0x8c
	ldr r0, [r0]
	bl ov82_0223FE18
	cmp r0, #0
	beq _0223E45C
	cmp r0, #1
	beq _0223E45E
	cmp r0, #2
	beq _0223E49E
_0223E45C:
	b _0223E5B6
_0223E45E:
	add r0, r4, #0
	bl ov82_0223F834
	add r0, r4, #0
	bl ov82_0223F6CC
	cmp r0, #1
	bne _0223E482
	add r0, r4, #0
	bl ov82_0223F6E4
	cmp r0, #0
	bne _0223E482
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0x1f]
	mov r0, #5
	strb r0, [r4, #8]
	b _0223E5B6
_0223E482:
	ldr r0, _0223E5C8 ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E5CC ; =0x00000623
	bl PlaySE
	ldrb r0, [r4, #0x1f]
	cmp r0, #0x75
	beq _0223E498
	strb r0, [r4, #0xd]
_0223E498:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E49E:
	add r0, r4, #0
	bl ov82_0223F834
	mov r0, #4
	strb r0, [r4, #8]
	b _0223E5B6
_0223E4AA:
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	neg r0, r0
	bl ov82_0223F948
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0223E5B6
	add r0, r4, #0
	bl ov82_0223F8E4
	ldrb r0, [r4, #0x1e]
	cmp r0, #1
	bne _0223E4D4
	mov r0, #0
	strb r0, [r4, #8]
	b _0223E5B6
_0223E4D4:
	cmp r0, #0
	bne _0223E4DE
	mov r0, #1
	strb r0, [r4, #8]
	b _0223E5B6
_0223E4DE:
	bl GF_AssertFail
	b _0223E5B6
_0223E4E4:
	add r0, #0x9c
	ldr r0, [r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov82_0223FD78
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	mov r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0x4c
	mov r2, #0x20
	bl ov82_0223EF1C
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r0, #0x4c
	bl CopyWindowToVram
	mov r0, #6
	strb r0, [r4, #8]
	b _0223E5B6
_0223E532:
	ldrb r0, [r4, #0xa]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223E5B6
	mov r0, #1
	strb r0, [r4, #0x1e]
	add r0, r4, #0
	bl ov82_0223F90C
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov82_0223FCFC
	ldr r0, [r4, #0x48]
	mov r1, #0x13
	mov r2, #0
	bl ov82_0223F5E0
	ldr r1, [r4, #0x48]
	add r0, r4, #0
	bl ov82_0223F580
	mov r0, #0x13
	strb r0, [r4, #0xd]
	add r0, r4, #0
	bl ov82_0223F558
	add r5, r0, #0
	add r0, r4, #0
	bl ov82_0223F570
	add r2, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl ov82_0223FCBC
	mov r0, #4
	strb r0, [r4, #8]
	b _0223E5B6
_0223E58A:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223E5B6
	add r0, r4, #0
	bl ov82_0223F224
	add r0, r4, #0
	bl ov82_0223E8C4
	add r1, r4, #0
	add r1, #0xa4
	ldr r0, _0223E5D0 ; =gOverlayTemplate_PokemonSummary
	ldr r1, [r1]
	mov r2, #0x69
	bl OverlayManager_New
	str r0, [r4, #4]
	mov r0, #1
	add sp, #0x18
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_0223E5B6:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223E5BC: .word gSystem
_0223E5C0: .word 0x000005DD
_0223E5C4: .word 0x000005F3
_0223E5C8: .word 0x000005DC
_0223E5CC: .word 0x00000623
_0223E5D0: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov82_0223E2EC

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

	thumb_func_start ov82_0223E7E8
ov82_0223E7E8: ; 0x0223E7E8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0223E7F8
	cmp r0, #1
	beq _0223E80A
	b _0223E81C
_0223E7F8:
	bl sub_02037BEC
	mov r0, #0x68
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E81C
_0223E80A:
	mov r0, #0x68
	bl sub_02037B38
	cmp r0, #1
	bne _0223E81C
	bl sub_02037BEC
	mov r0, #1
	pop {r4, pc}
_0223E81C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov82_0223E7E8

	thumb_func_start ov82_0223E820
ov82_0223E820: ; 0x0223E820
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223E836
	cmp r1, #1
	beq _0223E842
	cmp r1, #2
	beq _0223E872
	b _0223E880
_0223E836:
	mov r0, #0xa
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E880
_0223E842:
	ldrb r1, [r4, #0x1b]
	sub r1, r1, #1
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	cmp r1, #0
	bne _0223E880
	bl ov82_0223F90C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E880
_0223E872:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223E880
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223E880:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223E820

	thumb_func_start ov82_0223E888
ov82_0223E888: ; 0x0223E888
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223E898
	cmp r1, #1
	beq _0223E8BA
	b _0223E8BE
_0223E898:
	bl ov82_0223F834
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov82_0223FCB0
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl ClearFrameAndWindow2
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E8BE
_0223E8BA:
	mov r0, #1
	pop {r4, pc}
_0223E8BE:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223E888

