	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223E14C
	.public ov83_0223FD14
	.public ov83_02240290
	.public ov83_022402F4
	.public ov83_02240300
	.public ov83_02240334
	.public ov83_02240348
	.public ov83_0224037C
	.public ov83_02240384
	.public ov83_022403B8
	.public ov83_022403C0
	.public ov83_0224042C
	.public ov83_02240514
	.public ov83_02240664
	.public ov83_02240748
	.public ov83_022407FC
	.public ov83_022408E0
	.public ov83_02240C48
	.public ov83_02240C60
	.public ov83_02240EC4
	.public ov83_02240F48
	.public ov83_02240FAC
	.public ov83_02241208
	.public ov83_02241254
	.public ov83_022412DC
	.public ov83_02241354
	.public ov83_022415F4
	.public ov83_022416A0
	.public ov83_0224175C
	.public ov83_02241770
	.public ov83_02241B18
	.public ov83_02241BC4
	.public ov83_022428A8
	.public ov83_02242AB4
	.public ov83_02242DAC
	.public ov83_02242DFC
	.public ov83_02242E88
	.public ov83_02242F18
	.public ov83_02242F2C
	.public ov83_02247D18
	.public ov83_02247D48
	.public ov83_02247D4E
	.public ov83_02247F4C

    .text

	thumb_func_start ov83_0223E14C
ov83_0223E14C: ; 0x0223E14C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x16
	bls _0223E15C
	bl _0223EE86
_0223E15C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E168: ; jump table
	.short _0223E196 - _0223E168 - 2 ; case 0
	.short _0223E254 - _0223E168 - 2 ; case 1
	.short _0223E2D2 - _0223E168 - 2 ; case 2
	.short _0223E42C - _0223E168 - 2 ; case 3
	.short _0223E608 - _0223E168 - 2 ; case 4
	.short _0223E6BA - _0223E168 - 2 ; case 5
	.short _0223E6CC - _0223E168 - 2 ; case 6
	.short _0223E6F2 - _0223E168 - 2 ; case 7
	.short _0223E714 - _0223E168 - 2 ; case 8
	.short _0223E814 - _0223E168 - 2 ; case 9
	.short _0223E8CA - _0223E168 - 2 ; case 10
	.short _0223EA26 - _0223E168 - 2 ; case 11
	.short _0223EB92 - _0223E168 - 2 ; case 12
	.short _0223EC40 - _0223E168 - 2 ; case 13
	.short _0223EC52 - _0223E168 - 2 ; case 14
	.short _0223EC78 - _0223E168 - 2 ; case 15
	.short _0223ECC0 - _0223E168 - 2 ; case 16
	.short _0223ECDA - _0223E168 - 2 ; case 17
	.short _0223ED00 - _0223E168 - 2 ; case 18
	.short _0223EDC2 - _0223E168 - 2 ; case 19
	.short _0223EDE2 - _0223E168 - 2 ; case 20
	.short _0223EE04 - _0223E168 - 2 ; case 21
	.short _0223EE46 - _0223E168 - 2 ; case 22
_0223E196:
	ldrb r1, [r4, #0xe]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1e
	cmp r1, #1
	bne _0223E1C2
	bl ov83_02240348
	ldr r0, _0223E4F0 ; =0x00000778
	mov r1, #0xcc
	ldr r0, [r4, r0]
	mov r2, #0x64
	bl ov83_02247630
	mov r0, #2
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #4
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E1C2:
	cmp r1, #2
	bne _0223E1E8
	bl ov83_02240384
	ldr r0, _0223E4F0 ; =0x00000778
	mov r1, #0xd3
	ldr r0, [r4, r0]
	mov r2, #0x6a
	bl ov83_02247630
	mov r0, #8
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	mov r0, #0x60
	add sp, #4
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E1E8:
	ldr r0, _0223E4F4 ; =0x00000838
	ldr r0, [r4, r0]
	bl ov83_02247AD4
	cmp r0, #4
	bhi _0223E20A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E200: ; jump table
	.short _0223E216 - _0223E200 - 2 ; case 0
	.short _0223E216 - _0223E200 - 2 ; case 1
	.short _0223E216 - _0223E200 - 2 ; case 2
	.short _0223E216 - _0223E200 - 2 ; case 3
	.short _0223E22A - _0223E200 - 2 ; case 4
_0223E20A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223E236
	bl _0223EE86
_0223E216:
	add r0, r4, #0
	bl ov83_022402F4
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	bl _0223EE86
_0223E22A:
	ldr r0, _0223E4F8 ; =0x000005DC
	bl PlaySE
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E236:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _0223E2FA
	ldr r0, _0223E4F4 ; =0x00000838
	ldr r0, [r4, r0]
	bl ov83_02247B04
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #4
	bl ov83_02242AB4
	bl _0223EE86
_0223E254:
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E4F8 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242DAC
	cmp r5, #5
	bhi _0223E27A
	bhs _0223E2AA
	cmp r5, #0
	beq _0223E296
	bl _0223EE86
_0223E27A:
	cmp r5, #0xb
	bhi _0223E284
	beq _0223E2BE
	bl _0223EE86
_0223E284:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	blo _0223E2FA
	beq _0223E2BE
	add r0, r0, #1
	cmp r5, r0
	bl _0223EE86
_0223E296:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2AA:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2BE:
	add r0, r4, #0
	bl ov83_02240334
	add r0, r4, #0
	bl ov83_02240290
	mov r0, #0
	strb r0, [r4, #8]
	bl _0223EE86
_0223E2D2:
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E4F8 ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242DFC
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0223E322
	blo _0223E2F6
	b _0223E418
_0223E2F6:
	cmp r5, #0xb
	bls _0223E2FE
_0223E2FA:
	bl _0223EE86
_0223E2FE:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E30A: ; jump table
	.short _0223EE86 - _0223E30A - 2 ; case 0
	.short _0223E32C - _0223E30A - 2 ; case 1
	.short _0223E32C - _0223E30A - 2 ; case 2
	.short _0223E32C - _0223E30A - 2 ; case 3
	.short _0223E3A4 - _0223E30A - 2 ; case 4
	.short _0223EE86 - _0223E30A - 2 ; case 5
	.short _0223EE86 - _0223E30A - 2 ; case 6
	.short _0223EE86 - _0223E30A - 2 ; case 7
	.short _0223EE86 - _0223E30A - 2 ; case 8
	.short _0223EE86 - _0223E30A - 2 ; case 9
	.short _0223EE86 - _0223E30A - 2 ; case 10
	.short _0223E418 - _0223E30A - 2 ; case 11
_0223E322:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bl _0223EE86
_0223E32C:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_0224037C
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	ldr r1, _0223E504 ; =0x00000848
	ldr r2, [r4, r1]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0223E508 ; =ov83_02247F4C
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0223E378
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E378:
	lsl r3, r2, #1
	ldr r2, _0223E50C ; =ov83_02247D18
	mov r1, #0
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #3
	strb r0, [r4, #8]
	bl _0223EE86
_0223E3A4:
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	add r6, r0, #0
	cmp r6, #3
	bne _0223E3C8
	ldr r0, _0223E4F8 ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E510 ; =0x000005F3
	bl PlaySE
	bl _0223EE86
_0223E3C8:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov83_0224037C
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	mov r1, #0
	ldr r2, _0223E514 ; =ov83_02247D48
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #4
	strb r0, [r4, #8]
	bl _0223EE86
_0223E418:
	add r0, r4, #0
	bl ov83_0224037C
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	bl _0223EE86
_0223E42C:
	ldr r0, _0223E518 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223E442
	cmp r0, #2
	bne _0223E43E
	b _0223E5F2
_0223E43E:
	bl _0223EE86
_0223E442:
	ldr r0, _0223E518 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0223E51C ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r6, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl FrontierSave_GetStat
	add r6, r0, #0
	ldr r0, _0223E500 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	ldr r1, _0223E504 ; =0x00000848
	mov r2, #0xc
	ldr r1, [r4, r1]
	add r3, r1, #0
	mul r3, r2
	ldr r2, _0223E508 ; =ov83_02247F4C
	ldr r2, [r2, r3]
	cmp r0, r2
	bhs _0223E4C0
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x21
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E4C0:
	ldr r0, _0223E50C ; =ov83_02247D18
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	cmp r6, r0
	bhs _0223E520
	ldr r0, _0223E4FC ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
	.balign 4, 0
_0223E4F0: .word 0x00000778
_0223E4F4: .word 0x00000838
_0223E4F8: .word 0x000005DC
_0223E4FC: .word 0x00000508
_0223E500: .word 0x0000050C
_0223E504: .word 0x00000848
_0223E508: .word ov83_02247F4C
_0223E50C: .word ov83_02247D18
_0223E510: .word 0x000005F3
_0223E514: .word ov83_02247D48
_0223E518: .word 0x0000084C
_0223E51C: .word 0x000007A4
_0223E520:
	cmp r1, #0
	bne _0223E552
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E552:
	cmp r1, #1
	bne _0223E574
	add r0, r5, #0
	bl ov83_022412DC
	cmp r0, #0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E574:
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	bne _0223E5AC
	add r0, r5, #0
	bl ov83_022412DC
	cmp r0, #0
	bne _0223E5AC
	add r0, r4, #0
	mov r1, #0x25
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E5AC:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223E5E4
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	sub r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _0223E8D8 ; =ov83_02247D18
	ldrh r2, [r2, r3]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_022415F4
	mov r0, #0x13
	strb r0, [r4, #8]
	bl _0223EE86
_0223E5E4:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E5F2:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	bl _0223EE86
_0223E608:
	ldr r0, _0223E8DC ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223E61C
	cmp r0, #2
	beq _0223E6A6
	bl _0223EE86
_0223E61C:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	lsl r1, r0, #1
	ldr r0, _0223E8E4 ; =ov83_02247D48
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0223E67E
	ldr r0, _0223E8E8 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #7
	strb r0, [r4, #8]
	bl _0223EE86
_0223E67E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223E698
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #4
	bl ov83_02241BC4
	mov r0, #5
	strb r0, [r4, #8]
	b _0223EE86
_0223E698:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223E6A6:
	ldr r0, _0223E8DC ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E6BA:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223E754
	mov r0, #6
	strb r0, [r4, #8]
	b _0223EE86
_0223E6CC:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223E754
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02240348
	ldr r0, _0223E8F0 ; =0x00000778
	mov r1, #0xcc
	ldr r0, [r4, r0]
	mov r2, #0x64
	bl ov83_02247630
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E6F2:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223E754
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240348
	mov r0, #2
	strb r0, [r4, #8]
	b _0223EE86
_0223E714:
	ldr r2, _0223E8F4 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	ldr r1, _0223E8EC ; =0x000005DC
	add r5, r0, #0
	bl ov83_022477B0
	add r0, r4, #0
	bl ov83_02242E88
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0223E756
	bhs _0223E75C
	cmp r5, #8
	bhi _0223E754
	cmp r5, #6
	blo _0223E754
	beq _0223E76E
	cmp r5, #7
	beq _0223E784
	cmp r5, #8
	beq _0223E7C0
_0223E754:
	b _0223EE86
_0223E756:
	add r0, r0, #1
	cmp r5, r0
	b _0223EE86
_0223E75C:
	add r0, r4, #0
	bl ov83_022403B8
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	b _0223EE86
_0223E76E:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	add r0, r4, #0
	mov r1, #6
	bl ov83_022403C0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E784:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r0, #1
	bne _0223E7B2
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223E7B2:
	add r0, r4, #0
	mov r1, #7
	bl ov83_022403C0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E7C0:
	ldr r0, _0223E8E0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	add r6, r0, #0
	cmp r6, #3
	bne _0223E7E2
	ldr r0, _0223E8EC ; =0x000005DC
	mov r1, #0
	bl StopSE
	ldr r0, _0223E8F8 ; =0x000005F3
	bl PlaySE
	b _0223EE86
_0223E7E2:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov83_022403B8
	mov r1, #0
	ldr r2, _0223E8FC ; =ov83_02247D4E
	lsl r3, r6, #1
	ldrh r2, [r2, r3]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0xc
	strb r0, [r4, #8]
	b _0223EE86
_0223E814:
	ldr r0, _0223E900 ; =0x0000085C
	ldr r0, [r4, r0]
	bl ov83_02247BC4
	add r5, r0, #0
	mov r0, #2
	mvn r0, r0
	cmp r5, r0
	bhi _0223E84A
	bhs _0223E8AE
	cmp r5, #8
	bhi _0223E852
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223E838: ; jump table
	.short _0223E854 - _0223E838 - 2 ; case 0
	.short _0223E854 - _0223E838 - 2 ; case 1
	.short _0223E854 - _0223E838 - 2 ; case 2
	.short _0223E854 - _0223E838 - 2 ; case 3
	.short _0223E854 - _0223E838 - 2 ; case 4
	.short _0223E854 - _0223E838 - 2 ; case 5
	.short _0223E882 - _0223E838 - 2 ; case 6
	.short _0223E898 - _0223E838 - 2 ; case 7
	.short _0223E8B6 - _0223E838 - 2 ; case 8
_0223E84A:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0223E8B6
_0223E852:
	b _0223EE86
_0223E854:
	ldr r0, _0223E904 ; =0x00000862
	mov r1, #6
	ldrsh r2, [r4, r0]
	mul r1, r2
	add r2, r5, r1
	sub r1, r0, #2
	strb r2, [r4, r1]
	sub r0, r0, #1
	ldrb r1, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _0223E916
	ldr r0, _0223E908 ; =0x000005DD
	bl PlaySE
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E882:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E898:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E8AE:
	ldr r0, _0223E8EC ; =0x000005DC
	bl PlaySE
	b _0223EE86
_0223E8B6:
	ldr r0, _0223E908 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #8
	bl ov83_02242F18
	mov r0, #0xa
	strb r0, [r4, #8]
	b _0223EE86
_0223E8CA:
	bl ov83_02242F2C
	cmp r0, #1
	beq _0223E916
	ldr r0, _0223E90C ; =0x00000864
	b _0223E910
	nop
_0223E8D8: .word ov83_02247D18
_0223E8DC: .word 0x0000084C
_0223E8E0: .word 0x0000050C
_0223E8E4: .word ov83_02247D48
_0223E8E8: .word 0x00000508
_0223E8EC: .word 0x000005DC
_0223E8F0: .word 0x00000778
_0223E8F4: .word 0x00000868
_0223E8F8: .word 0x000005F3
_0223E8FC: .word ov83_02247D4E
_0223E900: .word 0x0000085C
_0223E904: .word 0x00000862
_0223E908: .word 0x000005DD
_0223E90C: .word 0x00000864
_0223E910:
	ldrh r1, [r4, r0]
	cmp r1, #8
	bls _0223E918
_0223E916:
	b _0223EE86
_0223E918:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223E924: ; jump table
	.short _0223E936 - _0223E924 - 2 ; case 0
	.short _0223E936 - _0223E924 - 2 ; case 1
	.short _0223E936 - _0223E924 - 2 ; case 2
	.short _0223E936 - _0223E924 - 2 ; case 3
	.short _0223E936 - _0223E924 - 2 ; case 4
	.short _0223E936 - _0223E924 - 2 ; case 5
	.short _0223E982 - _0223E924 - 2 ; case 6
	.short _0223E9CA - _0223E924 - 2 ; case 7
	.short _0223EA14 - _0223E924 - 2 ; case 8
_0223E936:
	add r0, r4, #0
	bl ov83_022428A8
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	mov r1, #0
	add r0, r4, #0
	mov r3, #3
	str r1, [sp]
	bl ov83_02240C48
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0xb
	strb r0, [r4, #8]
	b _0223EE86
_0223E982:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0223E9A2
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	mov r1, #6
	sub r0, r0, #1
	bl _s32_div_f
	ldr r1, _0223EC88 ; =0x00000862
	strh r0, [r4, r1]
_0223E9A2:
	add r0, r4, #0
	bl ov83_02240664
	add r0, r4, #0
	bl ov83_02240748
	add r0, r4, #0
	bl ov83_022407FC
	ldr r0, _0223EC8C ; =0x0000085C
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022408E0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223E9CA:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	mov r1, #6
	sub r0, r0, #1
	bl _s32_div_f
	ldr r1, _0223EC88 ; =0x00000862
	ldrsh r2, [r4, r1]
	cmp r0, r2
	bge _0223E9EC
	mov r0, #0
	strh r0, [r4, r1]
_0223E9EC:
	add r0, r4, #0
	bl ov83_02240664
	add r0, r4, #0
	bl ov83_02240748
	add r0, r4, #0
	bl ov83_022407FC
	ldr r0, _0223EC8C ; =0x0000085C
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022408E0
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EA14:
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EA26:
	ldr r0, _0223EC90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223EA3A
	cmp r0, #2
	bne _0223EA38
	b _0223EB7E
_0223EA38:
	b _0223EE86
_0223EA3A:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	mov r1, #0x86
	lsl r1, r1, #4
	add r5, r0, #0
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	cmp r5, r0
	bhs _0223EA96
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0x10
	strb r0, [r4, #8]
	b _0223EE86
_0223EA96:
	ldr r0, _0223EC94 ; =0x00000804
	mov r1, #6
	ldr r5, [r4, r0]
	mov r2, #0
	add r0, r5, #0
	bl GetMonData
	cmp r0, #0
	bne _0223EB36
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223EB0A
	add r0, r4, #0
	bl ov83_0224042C
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_022416A0
	mov r0, #0x13
	strb r0, [r4, #8]
	b _0223EE86
_0223EB0A:
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EB36:
	add r0, r5, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02240C60
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl BufferItemNameWithIndefArticle
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x3c
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0x11
	strb r0, [r4, #8]
	b _0223EE86
_0223EB7E:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EB92:
	ldr r0, _0223EC90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223EBA4
	cmp r0, #2
	beq _0223EC2C
	b _0223EE86
_0223EBA4:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl FrontierSave_GetStat
	add r5, r0, #0
	ldr r0, _0223EC98 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	lsl r1, r0, #1
	ldr r0, _0223EC9C ; =ov83_02247D4E
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0223EC04
	ldr r0, _0223EC84 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	add r0, r4, #0
	mov r1, #0x29
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _0223EE86
_0223EC04:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223EC1E
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #8
	bl ov83_02241BC4
	mov r0, #0xd
	strb r0, [r4, #8]
	b _0223EE86
_0223EC1E:
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EC2C:
	ldr r0, _0223EC90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EC40:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223ED10
	mov r0, #0xe
	strb r0, [r4, #8]
	b _0223EE86
_0223EC52:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223ECA0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02240384
	ldr r0, _0223ECA4 ; =0x00000778
	mov r1, #0xd3
	ldr r0, [r4, r0]
	mov r2, #0x6a
	bl ov83_02247630
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223EC78:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223ECA0 ; =0x000005DC
	b _0223ECA8
	.balign 4, 0
_0223EC84: .word 0x00000508
_0223EC88: .word 0x00000862
_0223EC8C: .word 0x0000085C
_0223EC90: .word 0x0000084C
_0223EC94: .word 0x00000804
_0223EC98: .word 0x0000050C
_0223EC9C: .word ov83_02247D4E
_0223ECA0: .word 0x000005DC
_0223ECA4: .word 0x00000778
_0223ECA8:
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240384
	mov r0, #8
	strb r0, [r4, #8]
	b _0223EE86
_0223ECC0:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223ECDA:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223ED10
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov83_02240514
	mov r0, #0x12
	strb r0, [r4, #8]
	b _0223EE86
_0223ED00:
	ldr r0, _0223EE90 ; =0x0000084C
	ldr r0, [r4, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _0223ED12
	cmp r0, #2
	beq _0223EDAE
_0223ED10:
	b _0223EE86
_0223ED12:
	ldr r0, _0223EE90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_02240664
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223ED82
	add r0, r4, #0
	bl ov83_0224042C
	ldr r0, _0223EE94 ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240EC4
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov80_02237FA4
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	add r2, r0, #0
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_022416A0
	mov r0, #0x13
	strb r0, [r4, #8]
	b _0223EE86
_0223ED82:
	mov r1, #0x86
	lsl r1, r1, #4
	ldrb r1, [r4, r1]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240F48
	strh r0, [r4, #0x10]
	add r0, r4, #0
	bl ov83_0224042C
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	ldrb r1, [r4, #0xe]
	mov r0, #2
	add sp, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223EDAE:
	ldr r0, _0223EE90 ; =0x0000084C
	add r0, r4, r0
	bl ov83_022478B4
	add r0, r4, #0
	bl ov83_0224175C
	mov r0, #9
	strb r0, [r4, #8]
	b _0223EE86
_0223EDC2:
	ldr r2, _0223EE98 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov83_02240FAC
	cmp r0, #1
	bne _0223EE86
	mov r0, #0x14
	strb r0, [r4, #8]
	b _0223EE86
_0223EDE2:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	add r0, r4, #0
	bl ov83_02240290
	mov r0, #0
	strb r0, [r4, #8]
	b _0223EE86
_0223EE04:
	ldr r1, _0223EE9C ; =gSystem
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	add r2, r3, #0
	tst r2, r1
	beq _0223EE18
	sub r1, #0x21
	bl ov83_02241208
	b _0223EE86
_0223EE18:
	mov r1, #0x10
	tst r1, r3
	beq _0223EE26
	mov r1, #1
	bl ov83_02241208
	b _0223EE86
_0223EE26:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
	b _0223EE86
_0223EE46:
	ldr r1, _0223EE9C ; =gSystem
	ldr r3, [r1, #0x48]
	mov r1, #0x20
	add r2, r3, #0
	tst r2, r1
	beq _0223EE5A
	sub r1, #0x21
	bl ov83_02241254
	b _0223EE86
_0223EE5A:
	mov r1, #0x10
	tst r1, r3
	beq _0223EE68
	mov r1, #1
	bl ov83_02241254
	b _0223EE86
_0223EE68:
	bl ov83_02247CF0
	cmp r0, #1
	bne _0223EE86
	ldr r0, _0223EE8C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_02240300
	mov r0, #1
	strb r0, [r4, #8]
_0223EE86:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0223EE8C: .word 0x000005DC
_0223EE90: .word 0x0000084C
_0223EE94: .word 0x00000508
_0223EE98: .word 0x00000868
_0223EE9C: .word gSystem
	thumb_func_end ov83_0223E14C

