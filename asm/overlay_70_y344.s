#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022421D0
	.public ov70_02242364
	.public ov70_02242390
	.public ov70_02242508
	.public ov70_0224251C
	.public ov70_02242574
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_022434C0
	.extern ov70_02243F00
	.extern ov70_02245DC0
	.extern ov70_02245DC1
	.extern ov70_02245DC2
	.extern ov70_02245DC3
	.extern ov70_02245E26
	.extern ov70_02245E27
	.extern ov70_02245E84
	.extern ov70_02245EA8
	.extern ov70_02245EA9
	.extern ov70_02245EAA
	.extern ov70_02245EAB
	.extern ov70_02245F5C

	.text

	.text
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

