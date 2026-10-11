#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F9C
	.public ov70_0224190C
	.public ov70_02242144
	.public ov70_02242164
	.public ov70_022421D0
	.public ov70_02242364
	.public ov70_02242390
	.public ov70_02242508
	.public ov70_0224251C
	.public ov70_02242574
	.public ov70_0224261C
	.public ov70_022426F4
	.public ov70_022427C4
	.public ov70_02242860
	.public ov70_022428C0
	.public ov70_022429A0
	.public ov70_022429B8
	.public ov70_02242B5C
	.public ov70_02242BBC
	.public ov70_02242C64
	.public ov70_02242D44
	.public ov70_02242E58
	.public ov70_02242FC4
	.public ov70_022434C0
	.public ov70_0224352C
	.public ov70_02243EB8
	.public ov70_02243F00
	.public ov70_02243F7C
	.public ov70_02243FE0
	.public ov70_02245D66
	.public ov70_02245D67
	.public ov70_02245D76
	.public ov70_02245D77
	.public ov70_02245D80
	.public ov70_02245D81
	.public ov70_02245D8A
	.public ov70_02245D8B
	.public ov70_02245DB0
	.public ov70_02245DC0
	.public ov70_02245DC1
	.public ov70_02245DC2
	.public ov70_02245DC3
	.public ov70_02245DD0
	.public ov70_02245DE4
	.public ov70_02245DF8
	.public ov70_02245DF9
	.public ov70_02245E26
	.public ov70_02245E27
	.public ov70_02245E3E
	.public ov70_02245E5E
	.public ov70_02245E84
	.public ov70_02245EA8
	.public ov70_02245EA9
	.public ov70_02245EAA
	.public ov70_02245EAB
	.public ov70_02245ED0
	.public ov70_02245EFC
	.public ov70_02245EFD
	.public ov70_02245EFE
	.public ov70_02245EFF
	.public ov70_02245F28
	.public ov70_02245F5C
	.public ov70_022466F8

	.text

	thumb_func_start ov70_02242144
ov70_02242144: ; 0x02242144
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x4c]
	lsl r2, r1, #2
	ldr r1, _02242160 ; =ov70_022466F8
	ldr r1, [r1, r2]
	blx r1
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_02019934
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_02242160: .word ov70_022466F8
	thumb_func_end ov70_02242144

	thumb_func_start ov70_02242164
ov70_02242164: ; 0x02242164
	push {r3, lr}
	cmp r1, #7
	bhi _022421B4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242176: ; jump table
	.short _02242196 - _02242176 - 2 ; case 0
	.short _0224219E - _02242176 - 2 ; case 1
	.short _02242196 - _02242176 - 2 ; case 2
	.short _022421A6 - _02242176 - 2 ; case 3
	.short _02242186 - _02242176 - 2 ; case 4
	.short _022421AE - _02242176 - 2 ; case 5
	.short _0224218E - _02242176 - 2 ; case 6
	.short _022421AE - _02242176 - 2 ; case 7
_02242186:
	ldr r0, _022421B8 ; =ov70_02245ED0
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
_0224218E:
	ldr r0, _022421BC ; =ov70_02245F28
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
_02242196:
	ldr r0, _022421C0 ; =ov70_02245E3E
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
_0224219E:
	ldr r0, _022421C4 ; =ov70_02245DD0
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
_022421A6:
	ldr r0, _022421C8 ; =ov70_02245E5E
	bl TouchscreenHitbox_FindRectAtTouchNew
	pop {r3, pc}
_022421AE:
	ldr r0, _022421CC ; =ov70_02245DE4
	bl TouchscreenHitbox_FindRectAtTouchNew
_022421B4:
	pop {r3, pc}
	nop
_022421B8: .word ov70_02245ED0
_022421BC: .word ov70_02245F28
_022421C0: .word ov70_02245E3E
_022421C4: .word ov70_02245DD0
_022421C8: .word ov70_02245E5E
_022421CC: .word ov70_02245DE4
	thumb_func_end ov70_02242164

	thumb_func_start ov70_022421D0
ov70_022421D0: ; 0x022421D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bge _022421E0
	add r0, #0x7e
	strb r1, [r0]
_022421E0:
	ldr r0, _02242344 ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022421F6
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242348 ; =ov70_02245EA8
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_022421F6:
	mov r2, #0x80
	tst r2, r0
	beq _02242208
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _0224234C ; =ov70_02245EA9
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_02242208:
	mov r2, #0x20
	tst r2, r0
	beq _0224221A
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242350 ; =ov70_02245EAA
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _0224222A
_0224221A:
	mov r2, #0x10
	tst r0, r2
	beq _0224222A
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242354 ; =ov70_02245EAB
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
_0224222A:
	cmp r1, #9
	blt _02242282
	ldr r0, [r5, #0x48]
	cmp r0, #9
	bge _02242282
	ldr r0, _02242344 ; =gSystem
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _02242260
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	add r0, r0, #4
	cmp r0, #9
	bge _02242282
	add r0, r5, #0
	add r0, #0x48
_02242250:
	ldr r2, [r0]
	add r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	add r2, r2, #4
	cmp r2, #9
	blt _02242250
	b _02242282
_02242260:
	mov r0, #0x80
	tst r0, r2
	beq _02242282
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	sub r0, r0, #4
	bmi _02242282
	add r0, r5, #0
	add r0, #0x48
_02242276:
	ldr r2, [r0]
	sub r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	sub r2, r2, #4
	bpl _02242276
_02242282:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	beq _022422BC
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _0224235C ; =ov70_02245E26
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _02242360 ; =ov70_02245E27
	ldr r0, [r5, #0xc]
	ldrb r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #9
	ldr r0, [r5, #0xc]
	bne _022422B6
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _022422BC
_022422B6:
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
_022422BC:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02242164
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022422F8
	cmp r6, #9
	bne _022422DE
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_022422DE:
	blo _022422E4
	bl GF_AssertFail
_022422E4:
	cmp r4, #0
	beq _022422EE
	ldrb r0, [r4, r6]
	cmp r0, #0
	beq _0224233C
_022422EE:
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_022422F8:
	ldr r0, _02242344 ; =gSystem
	ldr r2, [r0, #0x48]
	mov r0, #1
	add r1, r2, #0
	tst r1, r0
	beq _0224232A
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bne _0224230E
	sub r0, r0, #3
	pop {r4, r5, r6, pc}
_0224230E:
	blt _02242314
	bl GF_AssertFail
_02242314:
	cmp r4, #0
	beq _02242320
	ldr r0, [r5, #0x48]
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0224233C
_02242320:
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	pop {r4, r5, r6, pc}
_0224232A:
	mov r0, #2
	tst r0, r2
	beq _0224233C
	ldr r0, _02242358 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0224233C:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_02242344: .word gSystem
_02242348: .word ov70_02245EA8
_0224234C: .word ov70_02245EA9
_02242350: .word ov70_02245EAA
_02242354: .word ov70_02245EAB
_02242358: .word 0x000005DC
_0224235C: .word ov70_02245E26
_02242360: .word ov70_02245E27
	thumb_func_end ov70_022421D0

	thumb_func_start ov70_02242364
ov70_02242364: ; 0x02242364
	cmp r1, #3
	beq _02242386
	mov r2, #0x3c
	ldrsh r0, [r0, r2]
	cmp r0, #8
	bgt _02242382
	lsl r3, r0, #3
	ldr r0, _0224238C ; =ov70_02245F5C
	ldr r0, [r0, r3]
	cmp r1, r0
	blt _0224237E
	add r1, r2, #0
	sub r1, #0x3d
_0224237E:
	add r0, r1, #0
	bx lr
_02242382:
	add r0, r1, #0
	bx lr
_02242386:
	mov r0, #1
	mvn r0, r0
	bx lr
	.balign 4, 0
_0224238C: .word ov70_02245F5C
	thumb_func_end ov70_02242364

	thumb_func_start ov70_02242390
ov70_02242390: ; 0x02242390
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x48]
	cmp r1, #3
	bge _022423A0
	add r0, #0x7e
	strb r1, [r0]
_022423A0:
	ldr r0, _022424E4 ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022423B6
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _022424E8 ; =ov70_02245DC0
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _022423EA
_022423B6:
	mov r2, #0x80
	tst r2, r0
	beq _022423C8
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _022424EC ; =ov70_02245DC1
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _022423EA
_022423C8:
	mov r2, #0x20
	tst r2, r0
	beq _022423DA
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _022424F0 ; =ov70_02245DC2
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _022423EA
_022423DA:
	mov r2, #0x10
	tst r0, r2
	beq _022423EA
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _022424F4 ; =ov70_02245DC3
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
_022423EA:
	cmp r1, #3
	bne _022423FC
	ldr r0, [r5, #0x48]
	cmp r0, #3
	bge _022423FC
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
_022423FC:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	beq _02242440
	ldr r0, _022424F8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #3
	bne _02242422
	ldr r0, [r5, #0xc]
	mov r1, #0xc0
	mov r2, #0x88
	bl ov70_02238F9C
	ldr r0, [r5, #0xc]
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242440
_02242422:
	ldr r1, _022424FC ; =ov70_02245E26
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _02242500 ; =ov70_02245E27
	ldr r0, [r5, #0xc]
	ldrb r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0xc]
	mov r1, #0x2f
	bl Sprite_SetAnimCtrlSeq
_02242440:
	add r0, r5, #0
	mov r1, #5
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242488
	add r0, r5, #0
	bl ov70_02242364
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	cmp r6, r1
	beq _022424E0
	sub r0, r1, #1
	cmp r6, r0
	beq _0224247E
	cmp r4, #0
	beq _0224247E
	mov r0, #0x3c
	ldrsh r0, [r5, r0]
	lsl r1, r0, #2
	ldr r0, _02242504 ; =ov70_02245E84
	ldr r1, [r0, r1]
	add r0, r4, r6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022424DC
_0224247E:
	ldr r0, _022424F8 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_02242488:
	ldr r0, _022424E4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022424CA
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_02242364
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	cmp r6, r1
	beq _022424E0
	sub r0, r1, #1
	cmp r6, r0
	beq _022424C0
	cmp r4, #0
	beq _022424C0
	mov r0, #0x3c
	ldrsh r0, [r5, r0]
	lsl r1, r0, #2
	ldr r0, _02242504 ; =ov70_02245E84
	ldr r1, [r0, r1]
	add r0, r4, r6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022424DC
_022424C0:
	ldr r0, _022424F8 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_022424CA:
	mov r0, #2
	tst r0, r1
	beq _022424DC
	ldr r0, _022424F8 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_022424DC:
	mov r0, #0
	mvn r0, r0
_022424E0:
	pop {r4, r5, r6, pc}
	nop
_022424E4: .word gSystem
_022424E8: .word ov70_02245DC0
_022424EC: .word ov70_02245DC1
_022424F0: .word ov70_02245DC2
_022424F4: .word ov70_02245DC3
_022424F8: .word 0x000005DC
_022424FC: .word ov70_02245E26
_02242500: .word ov70_02245E27
_02242504: .word ov70_02245E84
	thumb_func_end ov70_02242390

	thumb_func_start ov70_02242508
ov70_02242508: ; 0x02242508
	push {r3, lr}
	cmp r0, #0
	bne _02242512
	mov r0, #1
	pop {r3, pc}
_02242512:
	sub r2, r1, #1
	add r0, r0, r2
	bl _s32_div_f
	pop {r3, pc}
	thumb_func_end ov70_02242508

	thumb_func_start ov70_0224251C
ov70_0224251C: ; 0x0224251C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #4
	beq _0224252E
	cmp r1, #5
	beq _02242534
	cmp r1, #6
	beq _02242542
	b _0224254E
_0224252E:
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242534:
	mov r1, #0
	mvn r1, r1
	bl ov70_02242574
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242542:
	mov r1, #1
	bl ov70_02242574
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0224254E:
	mov r0, #0x5a
	ldrsh r2, [r5, r0]
	lsl r2, r2, #2
	add r4, r1, r2
	ldr r1, [r5, #0x5c]
	cmp r4, r1
	bge _0224256C
	ldr r0, _02242570 ; =0x000005DC
	bl PlaySE
	ldr r1, [r5, #0x34]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_0224256C:
	sub r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242570: .word 0x000005DC
	thumb_func_end ov70_0224251C

	thumb_func_start ov70_02242574
ov70_02242574: ; 0x02242574
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r6, r1, #0
	mov r1, #4
	bl ov70_02242508
	sub r4, r0, #1
	beq _02242616
	cmp r6, #0
	bge _022425BE
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _022425B6
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _022425F0
_022425B6:
	add r0, r5, #0
	add r0, #0x5a
	strh r4, [r0]
	b _022425F0
_022425BE:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bge _022425E8
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _022425F0
_022425E8:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_022425F0:
	mov r1, #0x5a
	ldrsh r1, [r5, r1]
	ldr r2, [r5, #0x5c]
	add r0, r5, #0
	bl ov70_022434C0
	ldr r0, [r5, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r5, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	add r2, #0x40
	bl ov70_02243F00
_02242616:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_02242574

	thumb_func_start ov70_0224261C
ov70_0224261C: ; 0x0224261C
	push {r3, r4, r5, lr}
	ldr r1, _022426E4 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _0224263C
	cmp r4, #0
	beq _02242636
	sub r0, r4, #1
	str r0, [r5, #0x48]
	b _0224266E
_02242636:
	mov r0, #4
	str r0, [r5, #0x48]
	b _0224266E
_0224263C:
	mov r1, #0x80
	tst r1, r2
	beq _02242652
	cmp r4, #4
	beq _0224264C
	add r0, r4, #1
	str r0, [r5, #0x48]
	b _0224266E
_0224264C:
	mov r0, #0
	str r0, [r5, #0x48]
	b _0224266E
_02242652:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242662
	sub r1, #0x21
	bl ov70_02242574
	b _0224266E
_02242662:
	mov r1, #0x10
	tst r1, r2
	beq _0224266E
	mov r1, #1
	bl ov70_02242574
_0224266E:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _022426A2
	ldr r0, _022426E8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _022426EC ; =ov70_02245D76
	lsl r3, r0, #1
	ldr r2, _022426F0 ; =ov70_02245D77
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #4
	ldr r0, [r5, #0xc]
	bne _0224269C
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _022426A2
_0224269C:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_022426A2:
	add r0, r5, #0
	mov r1, #0
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _022426BC
	add r0, r5, #0
	bl ov70_0224251C
	pop {r3, r4, r5, pc}
_022426BC:
	ldr r1, _022426E4 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _022426D0
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_0224251C
	pop {r3, r4, r5, pc}
_022426D0:
	mov r1, #2
	tst r1, r2
	beq _022426E0
	ldr r0, _022426E8 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_022426E0:
	pop {r3, r4, r5, pc}
	nop
_022426E4: .word gSystem
_022426E8: .word 0x000005DC
_022426EC: .word ov70_02245D76
_022426F0: .word ov70_02245D77
	thumb_func_end ov70_0224261C

	thumb_func_start ov70_022426F4
ov70_022426F4: ; 0x022426F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022427B0 ; =gSystem
	ldr r4, [r5, #0x48]
	ldr r1, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r1
	beq _0224271C
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _02242716
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242738
_02242716:
	mov r0, #3
	str r0, [r5, #0x48]
	b _02242738
_0224271C:
	mov r0, #0x80
	tst r0, r1
	beq _02242738
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #3
	beq _02242734
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242738
_02242734:
	mov r0, #0
	str r0, [r5, #0x48]
_02242738:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _02242764
	ldr r1, _022427B8 ; =ov70_02245D66
	lsl r3, r0, #1
	ldr r2, _022427BC ; =ov70_02245D67
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #3
	ldr r0, [r5, #0xc]
	bne _0224275E
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242764
_0224275E:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_02242764:
	add r0, r5, #0
	mov r1, #1
	bl ov70_02242164
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02242784
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, _022427C0 ; =ov70_02245DB0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02242784:
	ldr r1, _022427B0 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0224279E
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	lsl r1, r0, #2
	ldr r0, _022427C0 ; =ov70_02245DB0
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_0224279E:
	mov r1, #2
	tst r1, r2
	beq _022427AE
	ldr r0, _022427B4 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_022427AE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022427B0: .word gSystem
_022427B4: .word 0x000005DC
_022427B8: .word ov70_02245D66
_022427BC: .word ov70_02245D67
_022427C0: .word ov70_02245DB0
	thumb_func_end ov70_022426F4

	thumb_func_start ov70_022427C4
ov70_022427C4: ; 0x022427C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	cmp r1, #0
	bge _02242802
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r4, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _022427F8
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_022427F8:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_02242802:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r4, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r4, r0]
	cmp r0, #2
	bge _0224282C
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242834
_0224282C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_02242834:
	mov r1, #0x5a
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x5c]
	add r0, r4, #0
	bl ov70_022434C0
	ldr r0, [r4, #0x5c]
	mov r1, #4
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r4, #4]
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	add r2, #0x40
	bl ov70_02243F00
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov70_022427C4

	thumb_func_start ov70_02242860
ov70_02242860: ; 0x02242860
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	beq _02242874
	cmp r4, #5
	beq _02242880
	cmp r4, #6
	beq _0224288E
	b _0224289A
_02242874:
	ldr r0, _022428BC ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242880:
	mov r1, #0
	mvn r1, r1
	bl ov70_022427C4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0224288E:
	mov r1, #1
	bl ov70_022427C4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0224289A:
	mov r0, #0x5a
	ldrsh r1, [r5, r0]
	lsl r1, r1, #2
	add r2, r4, r1
	ldr r1, [r5, #0x5c]
	cmp r2, r1
	bge _022428B8
	ldr r0, _022428BC ; =0x000005DC
	bl PlaySE
	ldr r1, [r5, #0x34]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_022428B8:
	sub r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022428BC: .word 0x000005DC
	thumb_func_end ov70_02242860

	thumb_func_start ov70_022428C0
ov70_022428C0: ; 0x022428C0
	push {r3, r4, r5, lr}
	ldr r1, _02242990 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _022428E8
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _022428E2
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242922
_022428E2:
	mov r0, #4
	str r0, [r5, #0x48]
	b _02242922
_022428E8:
	mov r1, #0x80
	tst r1, r2
	beq _02242906
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #4
	beq _02242900
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242922
_02242900:
	mov r0, #0
	str r0, [r5, #0x48]
	b _02242922
_02242906:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242916
	sub r1, #0x21
	bl ov70_022427C4
	b _02242922
_02242916:
	mov r1, #0x10
	tst r1, r2
	beq _02242922
	mov r1, #1
	bl ov70_022427C4
_02242922:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _0224294E
	ldr r1, _02242998 ; =ov70_02245D80
	lsl r3, r0, #1
	ldr r2, _0224299C ; =ov70_02245D81
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #4
	ldr r0, [r5, #0xc]
	bne _02242948
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _0224294E
_02242948:
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
_0224294E:
	add r0, r5, #0
	mov r1, #2
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242968
	add r0, r5, #0
	bl ov70_02242860
	pop {r3, r4, r5, pc}
_02242968:
	ldr r1, _02242990 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _0224297C
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_02242860
	pop {r3, r4, r5, pc}
_0224297C:
	mov r1, #2
	tst r1, r2
	beq _0224298C
	ldr r0, _02242994 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_0224298C:
	pop {r3, r4, r5, pc}
	nop
_02242990: .word gSystem
_02242994: .word 0x000005DC
_02242998: .word ov70_02245D80
_0224299C: .word ov70_02245D81
	thumb_func_end ov70_022428C0

	thumb_func_start ov70_022429A0
ov70_022429A0: ; 0x022429A0
	cmp r1, #9
	beq _022429AA
	cmp r1, #0xa
	beq _022429B0
	b _022429B4
_022429AA:
	mov r0, #1
	mvn r0, r0
	bx lr
_022429B0:
	mov r0, #0xa
	bx lr
_022429B4:
	add r0, r1, #0
	bx lr
	thumb_func_end ov70_022429A0

	thumb_func_start ov70_022429B8
ov70_022429B8: ; 0x022429B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x48]
	cmp r1, #9
	bge _022429C8
	add r0, #0x7e
	strb r1, [r0]
_022429C8:
	ldr r0, _02242B3C ; =gSystem
	mov r2, #0x40
	ldr r0, [r0, #0x4c]
	tst r2, r0
	beq _022429DE
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B40 ; =ov70_02245EFC
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_022429DE:
	mov r2, #0x80
	tst r2, r0
	beq _022429F0
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B44 ; =ov70_02245EFD
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_022429F0:
	mov r2, #0x20
	tst r2, r0
	beq _02242A02
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B48 ; =ov70_02245EFE
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
	b _02242A12
_02242A02:
	mov r2, #0x10
	tst r0, r2
	beq _02242A12
	ldr r0, [r5, #0x48]
	lsl r2, r0, #2
	ldr r0, _02242B4C ; =ov70_02245EFF
	ldrb r0, [r0, r2]
	str r0, [r5, #0x48]
_02242A12:
	cmp r1, #9
	blt _02242A6A
	ldr r0, [r5, #0x48]
	cmp r0, #9
	bge _02242A6A
	ldr r0, _02242B3C ; =gSystem
	ldr r2, [r0, #0x4c]
	mov r0, #0x40
	tst r0, r2
	beq _02242A48
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	add r0, r0, #4
	cmp r0, #9
	bge _02242A6A
	add r0, r5, #0
	add r0, #0x48
_02242A38:
	ldr r2, [r0]
	add r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	add r2, r2, #4
	cmp r2, #9
	blt _02242A38
	b _02242A6A
_02242A48:
	mov r0, #0x80
	tst r0, r2
	beq _02242A6A
	add r0, r5, #0
	add r0, #0x7e
	ldrb r0, [r0]
	str r0, [r5, #0x48]
	sub r0, r0, #4
	bmi _02242A6A
	add r0, r5, #0
	add r0, #0x48
_02242A5E:
	ldr r2, [r0]
	sub r2, r2, #4
	str r2, [r0]
	ldr r2, [r5, #0x48]
	sub r2, r2, #4
	bpl _02242A5E
_02242A6A:
	ldr r0, [r5, #0x48]
	cmp r1, r0
	beq _02242AB6
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	ldr r1, _02242B54 ; =ov70_02245DF8
	lsl r2, r0, #1
	ldrb r1, [r1, r2]
	ldr r3, _02242B58 ; =ov70_02245DF9
	ldr r0, [r5, #0xc]
	ldrb r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #9
	beq _02242A9A
	cmp r0, #0xa
	beq _02242AA4
	b _02242AAE
_02242A9A:
	ldr r0, [r5, #0xc]
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242AB6
_02242AA4:
	ldr r0, [r5, #0xc]
	mov r1, #0x31
	bl Sprite_SetAnimCtrlSeq
	b _02242AB6
_02242AAE:
	ldr r0, [r5, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
_02242AB6:
	add r0, r5, #0
	mov r1, #6
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242AF0
	add r0, r5, #0
	bl ov70_022429A0
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02242AE6
	cmp r5, #0xb
	beq _02242AE6
	cmp r4, #0
	beq _02242AE6
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02242B36
_02242AE6:
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02242AF0:
	ldr r0, _02242B3C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02242B24
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_022429A0
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _02242B1A
	cmp r5, #0xb
	beq _02242B1A
	cmp r4, #0
	beq _02242B1A
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _02242B36
_02242B1A:
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_02242B24:
	mov r0, #2
	tst r0, r1
	beq _02242B36
	ldr r0, _02242B50 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B36:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242B3C: .word gSystem
_02242B40: .word ov70_02245EFC
_02242B44: .word ov70_02245EFD
_02242B48: .word ov70_02245EFE
_02242B4C: .word ov70_02245EFF
_02242B50: .word 0x000005DC
_02242B54: .word ov70_02245DF8
_02242B58: .word ov70_02245DF9
	thumb_func_end ov70_022429B8

	thumb_func_start ov70_02242B5C
ov70_02242B5C: ; 0x02242B5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #5
	beq _02242B6E
	cmp r1, #6
	beq _02242B7A
	cmp r1, #7
	beq _02242B88
	b _02242B94
_02242B6E:
	ldr r0, _02242BB8 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B7A:
	mov r1, #0
	mvn r1, r1
	bl ov70_02242BBC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B88:
	mov r1, #1
	bl ov70_02242BBC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_02242B94:
	mov r0, #0x5a
	ldrsh r3, [r5, r0]
	lsl r2, r3, #2
	add r2, r3, r2
	add r4, r1, r2
	ldr r1, [r5, #0x5c]
	cmp r4, r1
	bge _02242BB4
	ldr r0, _02242BB8 ; =0x000005DC
	bl PlaySE
	ldr r1, [r5, #0x34]
	lsl r0, r4, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	pop {r3, r4, r5, pc}
_02242BB4:
	sub r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242BB8: .word 0x000005DC
	thumb_func_end ov70_02242B5C

	thumb_func_start ov70_02242BBC
ov70_02242BBC: ; 0x02242BBC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	add r6, r1, #0
	mov r1, #5
	bl ov70_02242508
	sub r4, r0, #1
	beq _02242C5E
	cmp r6, #0
	bge _02242C06
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x14]
	mov r1, #0x27
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, #0
	beq _02242BFE
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242BFE:
	add r0, r5, #0
	add r0, #0x5a
	strh r4, [r0]
	b _02242C38
_02242C06:
	mov r0, #0x5e
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	ldr r0, [r5, #0x10]
	mov r1, #0x26
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x5a
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bge _02242C30
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x5a
	strh r1, [r0]
	b _02242C38
_02242C30:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x5a
	strh r1, [r0]
_02242C38:
	mov r1, #0x5a
	ldrsh r1, [r5, r1]
	ldr r2, [r5, #0x5c]
	add r0, r5, #0
	bl ov70_0224352C
	ldr r0, [r5, #0x5c]
	mov r1, #5
	bl ov70_02242508
	str r0, [sp]
	mov r3, #0x5a
	ldr r2, [r5, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	add r2, #0x50
	bl ov70_02243F00
_02242C5E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_02242BBC

	thumb_func_start ov70_02242C64
ov70_02242C64: ; 0x02242C64
	push {r3, r4, r5, lr}
	ldr r1, _02242D34 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _02242C8C
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _02242C86
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242CC6
_02242C86:
	mov r0, #5
	str r0, [r5, #0x48]
	b _02242CC6
_02242C8C:
	mov r1, #0x80
	tst r1, r2
	beq _02242CAA
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #5
	beq _02242CA4
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242CC6
_02242CA4:
	mov r0, #0
	str r0, [r5, #0x48]
	b _02242CC6
_02242CAA:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242CBA
	sub r1, #0x21
	bl ov70_02242BBC
	b _02242CC6
_02242CBA:
	mov r1, #0x10
	tst r1, r2
	beq _02242CC6
	mov r1, #1
	bl ov70_02242BBC
_02242CC6:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _02242CF2
	ldr r1, _02242D3C ; =ov70_02245D8A
	lsl r3, r0, #1
	ldr r2, _02242D40 ; =ov70_02245D8B
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #5
	ldr r0, [r5, #0xc]
	bne _02242CEC
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242CF2
_02242CEC:
	mov r1, #0x32
	bl Sprite_SetAnimCtrlSeq
_02242CF2:
	add r0, r5, #0
	mov r1, #3
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242D0C
	add r0, r5, #0
	bl ov70_02242B5C
	pop {r3, r4, r5, pc}
_02242D0C:
	ldr r1, _02242D34 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _02242D20
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_02242B5C
	pop {r3, r4, r5, pc}
_02242D20:
	mov r1, #2
	tst r1, r2
	beq _02242D30
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_02242D30:
	pop {r3, r4, r5, pc}
	nop
_02242D34: .word gSystem
_02242D38: .word 0x000005DC
_02242D3C: .word ov70_02245D8A
_02242D40: .word ov70_02245D8B
	thumb_func_end ov70_02242C64

	thumb_func_start ov70_02242D44
ov70_02242D44: ; 0x02242D44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #6
	bne _02242D58
	mov r3, #0x21
	b _02242D5A
_02242D58:
	mov r3, #0x22
_02242D5A:
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	mov r2, #0x64
	bl sub_02019688
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02019B08
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov70_0224190C
	add r0, r5, #0
	add r0, #0x64
	mov r1, #1
	mov r2, #0x1a
	bl MI_CpuFill8
	mov r4, #0
	add r6, r4, #0
_02242D88:
	add r1, r4, #0
	ldr r0, [r5, #0x24]
	add r1, #0x6e
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #4
	bne _02242DBE
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02243F7C
	cmp r0, #1
	bne _02242DB2
	add r2, r5, r4
	add r2, #0x64
	mov r1, #1
	ldr r0, _02242E50 ; =0x000F0E02
	strb r1, [r2]
	b _02242DE0
_02242DB2:
	add r2, r5, r4
	add r2, #0x64
	mov r1, #0
	ldr r0, _02242E54 ; =0x00080902
	strb r1, [r2]
	b _02242DE0
_02242DBE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02243FE0
	cmp r0, #1
	bne _02242DD6
	add r2, r5, r4
	add r2, #0x64
	mov r1, #1
	ldr r0, _02242E50 ; =0x000F0E02
	strb r1, [r2]
	b _02242DE0
_02242DD6:
	add r2, r5, r4
	ldr r0, _02242E54 ; =0x00080902
	add r2, #0x64
	mov r1, #0
	strb r1, [r2]
_02242DE0:
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x1c]
	add r1, r1, r6
	add r2, r7, #0
	mov r3, #2
	bl ov70_02242FC4
	add r0, r7, #0
	bl String_Delete
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #9
	blt _02242D88
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	ldr r0, [sp, #4]
	cmp r0, #6
	bne _02242E34
	ldr r0, [r5, #0x24]
	mov r1, #0xae
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, _02242E50 ; =0x000F0E02
	add r2, r4, #0
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x1c]
	add r1, #0xf0
	mov r3, #2
	bl ov70_02242FC4
	add r0, r4, #0
	bl String_Delete
_02242E34:
	ldr r2, [sp, #8]
	mov r1, #0
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x1c]
	asr r2, r2, #0x18
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_020197F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02242E50: .word 0x000F0E02
_02242E54: .word 0x00080902
	thumb_func_end ov70_02242D44

	thumb_func_start ov70_02242E58
ov70_02242E58: ; 0x02242E58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x1f
	bl sub_02019688
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r5, #0
	mov r1, #1
	bl ov70_0224190C
	mov r6, #0
	add r4, r6, #0
_02242E80:
	add r1, r6, #0
	ldr r0, [r5, #0x24]
	add r1, #0x7c
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, _02242EE0 ; =0x000F0E02
	add r2, r7, #0
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x1c]
	add r1, r1, r4
	mov r3, #2
	bl ov70_02242FC4
	add r0, r7, #0
	bl String_Delete
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #3
	blt _02242E80
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0x20
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_020197F4
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	sub r2, r1, #4
	add r3, r1, #0
	bl sub_020198FC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02242EE0: .word 0x000F0E02
	thumb_func_end ov70_02242E58

