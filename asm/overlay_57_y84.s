	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223A0E0
	.public ov57_0223A104
	.public ov57_0223A31C
	.public ov57_0223A504
	.extern ov57_02237EB8
	.extern ov57_02237F14
	.extern ov57_02237F3C
	.extern ov57_022383D0
	.extern ov57_022383F8
	.extern ov57_02238438
	.extern ov57_0223848C
	.extern ov57_022384C0
	.extern ov57_02238508
	.extern ov57_0223853C
	.extern ov57_022385DC
	.extern ov57_0223864C
	.extern ov57_0223866C
	.extern ov57_02238794
	.extern ov57_022387C0
	.extern ov57_022388E4
	.extern ov57_02238958
	.extern ov57_02238A00
	.extern ov57_02238AC0
	.extern ov57_02238DD0
	.extern ov57_02238E48
	.extern ov57_02238F48
	.extern ov57_02238FC4
	.extern ov57_02238FEC
	.extern ov57_02239014
	.extern ov57_02239114
	.extern ov57_02239184
	.extern ov57_0223921C
	.extern ov57_02239240
	.extern ov57_02239260
	.extern ov57_022392F4
	.extern ov57_022394AC
	.extern ov57_02239558
	.extern ov57_02239588
	.extern ov57_02239728
	.extern ov57_022399F8
	.extern ov57_02239B2C
	.extern ov57_02239B94
	.extern ov57_02239BAC
	.extern ov57_02239BCC
	.extern ov57_02239BEC
	.extern ov57_02239C88
	.extern ov57_02239CE8
	.extern ov57_02239D48
	.extern ov57_02239EB4
	.extern ov57_0223A034
	.extern ov57_0223A058
	.extern ov57_0223A05C
	.extern ov57_0223A6B8
	.extern ov57_0223A7DC
	.extern ov57_0223A8FC
	.extern ov57_0223AB58
	.extern ov57_0223B12C
	.extern ov57_0223B180
	.extern ov57_0223B620
	.extern ov57_0223B700
	.extern ov57_0223B75C
	.extern ov57_0223B78C
	.extern ov57_0223B828
	.extern ov57_0223B948
	.extern ov57_0223BC4C
	.extern ov57_0223BEB8

	.text

	.text
	thumb_func_start ov57_0223A0E0
ov57_0223A0E0: ; 0x0223A0E0
	push {r3, r4, r5, lr}
	mov r1, #0xfd
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _0223A100 ; =ov57_0223BEB8
	ldr r1, [r1, r2]
	blx r1
	add r4, #0xe0
	add r5, r0, #0
	ldr r0, [r4]
	bl SpriteSystem_DrawSprites
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223A100: .word ov57_0223BEB8
	thumb_func_end ov57_0223A0E0

	thumb_func_start ov57_0223A104
ov57_0223A104: ; 0x0223A104
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	bls _0223A114
	b _0223A300
_0223A114:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A120: ; jump table
	.short _0223A12E - _0223A120 - 2 ; case 0
	.short _0223A226 - _0223A120 - 2 ; case 1
	.short _0223A236 - _0223A120 - 2 ; case 2
	.short _0223A248 - _0223A120 - 2 ; case 3
	.short _0223A256 - _0223A120 - 2 ; case 4
	.short _0223A2C0 - _0223A120 - 2 ; case 5
	.short _0223A2D0 - _0223A120 - 2 ; case 6
_0223A12E:
	mov r0, #0x57
	mov r1, #0x34
	bl NARC_New
	add r5, r0, #0
	add r0, r4, #0
	bl ov57_02238DD0
	add r0, r4, #0
	bl ov57_02238E48
	add r0, r4, #0
	bl ov57_02238F48
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02239BEC
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02239C88
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02239CE8
	add r0, r4, #0
	bl ov57_02239014
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_022392F4
	add r0, r4, #0
	bl ov57_022385DC
	add r0, r4, #0
	bl ov57_02237F3C
	add r0, r4, #0
	mov r1, #1
	bl ov57_022383D0
	add r0, r4, #0
	bl ov57_02237F14
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02239D48
	add r0, r4, #0
	bl ov57_02239EB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02239114
	add r0, r4, #0
	bl ov57_02239184
	add r0, r4, #0
	bl ov57_0223B75C
	add r0, r4, #0
	bl ov57_0223B78C
	ldr r1, _0223A310 ; =0x00000448
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov57_022388E4
	add r0, r4, #0
	bl ov57_02238958
	add r0, r4, #0
	bl ov57_02238A00
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223A034
	add r0, r4, #0
	mov r1, #0
	bl ov57_02239240
	add r0, r4, #0
	bl ov57_02238794
	add r0, r4, #0
	mov r1, #0
	bl ov57_022387C0
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	bl ov57_02239728
	bl ov57_02239B94
	add r0, r4, #0
	mov r1, #0
	bl ov57_0223B948
	add r0, r4, #0
	mov r1, #1
	bl ov57_0223866C
	ldr r2, _0223A314 ; =0x04000304
	ldr r0, _0223A318 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	add r0, r5, #0
	bl NARC_Delete
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A300
_0223A226:
	bl ov57_02239BAC
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A300
_0223A236:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223A300
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0223A248:
	add r0, r4, #0
	bl ov57_0223B180
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0223A300
_0223A256:
	mov r0, #0x93
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	add r1, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _0223A272
	add r0, r0, #1
	cmp r1, r0
	beq _0223A300
	b _0223A292
_0223A272:
	add r0, r4, #0
	bl ov57_0223B700
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	bl ov57_02239728
	mov r0, #0xff
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223A300
_0223A292:
	cmp r1, #0
	beq _0223A300
	add r0, r4, #0
	blx r1
	cmp r0, #1
	beq _0223A2A6
	add r0, r4, #0
	bl ov57_0223B700
	b _0223A300
_0223A2A6:
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	bl ov57_02239728
	mov r0, #0xff
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223A300
_0223A2C0:
	bl ov57_02239BCC
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A300
_0223A2D0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223A300
	add r0, r4, #0
	bl ov57_0223864C
	add r0, r4, #0
	bl ov57_02239588
	add r0, r4, #0
	bl ov57_02238FEC
	add r0, r4, #0
	bl ov57_0223A05C
	add r0, r4, #0
	bl ov57_02239260
	add r0, r4, #0
	bl ov57_02238AC0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A300:
	add r0, r4, #0
	bl ov57_02238FC4
	add r0, r4, #0
	bl ov57_02239558
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223A310: .word 0x00000448
_0223A314: .word 0x04000304
_0223A318: .word 0xFFFF7FFF
	thumb_func_end ov57_0223A104

	thumb_func_start ov57_0223A31C
ov57_0223A31C: ; 0x0223A31C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xff
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0xb
	bhi _0223A406
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223A338: ; jump table
	.short _0223A350 - _0223A338 - 2 ; case 0
	.short _0223A406 - _0223A338 - 2 ; case 1
	.short _0223A406 - _0223A338 - 2 ; case 2
	.short _0223A406 - _0223A338 - 2 ; case 3
	.short _0223A35C - _0223A338 - 2 ; case 4
	.short _0223A368 - _0223A338 - 2 ; case 5
	.short _0223A374 - _0223A338 - 2 ; case 6
	.short _0223A3EC - _0223A338 - 2 ; case 7
	.short _0223A406 - _0223A338 - 2 ; case 8
	.short _0223A406 - _0223A338 - 2 ; case 9
	.short _0223A406 - _0223A338 - 2 ; case 10
	.short _0223A3F8 - _0223A338 - 2 ; case 11
_0223A350:
	bl ov57_0223A6B8
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0223A406
_0223A35C:
	bl ov57_0223B620
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0223A406
_0223A368:
	bl ov57_0223AB58
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0223A406
_0223A374:
	mov r1, #0
	add r0, #0xec
	mov r2, #0xc
	add r3, r1, #0
	bl ov57_02239728
	mov r0, #0x41
	mov r1, #0x14
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov57_022384C0
	cmp r0, #1
	bne _0223A39A
	mov r0, #0xa2
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0223A39A:
	add r0, r4, #0
	bl ov57_0223853C
	add r0, r4, #0
	bl ov57_022394AC
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl Save_GameStats_Get
	mov r1, #7 ; SCORE_EVENT_BALL_CAPSULE_MODIFIED
	bl GameStats_AddScore
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xc
	mul r0, r1
	add r2, r4, r0
	mov r0, #0xa3
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0xff
	beq _0223A3E2
	ldr r2, [r4]
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r5, [r0, #4]
	ldr r0, [r2, #0x20]
	bl SealCase_GetCapsuleI
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xab
	bl SetMonData
_0223A3E2:
	mov r0, #0xff
	mov r1, #0xb
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223A406
_0223A3EC:
	bl ov57_0223A8FC
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _0223A406
_0223A3F8:
	bl ov57_0223A7DC
	cmp r0, #0
	beq _0223A406
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223A406:
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	beq _0223A414
	cmp r0, #0
	bne _0223A4DE
_0223A414:
	add r0, r4, #0
	add r0, #0xd4
	ldr r5, [r0]
	cmp r5, #0xff
	bne _0223A42A
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TouchHitboxController_IsTriggered
	b _0223A4DE
_0223A42A:
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	mov r1, #0xff
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #4
	beq _0223A43E
	mov r0, #0
_0223A43E:
	cmp r0, #0
	beq _0223A484
	lsl r6, r5, #4
	mov r0, #0x35
	add r1, r4, r6
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl sub_0209106C
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xec
	bl ov57_02239B2C
	mov r0, #0xd5
	ldr r2, [sp]
	add r1, r4, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_0223848C
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02238508
	b _0223A4DE
_0223A484:
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_022383F8
	lsl r6, r5, #4
	mov r2, #0xd6
	add r1, r4, r6
	lsl r2, r2, #2
	add r7, r0, #0
	ldr r0, [r1, r2]
	sub r2, r2, #4
	ldr r1, [r1, r2]
	mov r2, #0
	bl ov57_02237EB8
	cmp r7, #0
	bne _0223A4C6
	mov r1, #0x35
	ldr r0, [r4]
	add r2, r4, r6
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl GiveOrTakeSeal2
	add r0, r4, #0
	bl ov57_022399F8
	add r0, r4, #0
	add r1, r5, #0
	bl ov57_02238438
_0223A4C6:
	ldr r0, _0223A4FC ; =0x000005EA
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0xd4
	str r1, [r0]
	add r0, r4, #0
	ldr r1, _0223A500 ; =0x0000FFFF
	add r0, #0xec
	bl ov57_02239B2C
_0223A4DE:
	add r0, r4, #0
	bl ov57_0223A058
	add r0, r4, #0
	bl ov57_0223921C
	add r0, r4, #0
	bl ov57_02238FC4
	add r0, r4, #0
	bl ov57_02239558
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223A4FC: .word 0x000005EA
_0223A500: .word 0x0000FFFF
	thumb_func_end ov57_0223A31C

	thumb_func_start ov57_0223A504
ov57_0223A504: ; 0x0223A504
	push {r4, lr}
	mov r1, #0xff
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0223A51C
	cmp r2, #1
	beq _0223A53E
	cmp r2, #2
	beq _0223A560
	b _0223A594
_0223A51C:
	sub r1, #0x10
	ldr r1, [r4, r1]
	bl ov57_0223BC4C
	add r0, r4, #0
	add r0, #0xec
	mov r1, #0
	mov r2, #9
	mov r3, #1
	bl ov57_02239728
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A594
_0223A53E:
	bl ov57_0223B12C
	ldr r0, _0223A5A4 ; =gSystem
	ldr r1, [r0, #0x48]
	ldr r0, _0223A5A8 ; =0x00000CF3
	tst r0, r1
	bne _0223A554
	bl System_GetTouchNew
	cmp r0, #0
	beq _0223A594
_0223A554:
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223A594
_0223A560:
	mov r1, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov57_0223B828
	add r0, r4, #0
	add r0, #0xec
	mov r1, #1
	bl sub_0200E5D4
	add r0, r4, #0
	add r0, #0xec
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	mov r1, #1
	bl ov57_0223866C
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #3
	mov r2, #7
	mov r3, #0
	bl ov57_02239728
_0223A594:
	add r0, r4, #0
	bl ov57_02238FC4
	add r0, r4, #0
	bl ov57_02239558
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_0223A5A4: .word gSystem
_0223A5A8: .word 0x00000CF3
	thumb_func_end ov57_0223A504

