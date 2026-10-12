	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020371C4
	.public sub_020372E4
	.public sub_02037334
	.public sub_020373B4
	.extern _021D4140
	.extern sub_020371A8
	.extern sub_02037474
	.extern sub_0203769C

	.text
	thumb_func_start sub_020371C4
sub_020371C4: ; 0x020371C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_02033BC4
	cmp r0, #0
	beq _020372D4
_020371D8:
	ldrb r7, [r4, #0xa]
	cmp r7, #0xee
	bne _020371EA
	add r0, r5, #0
	bl sub_02033B68
	add r7, r0, #0
	cmp r7, #0xee
	beq _020372CA
_020371EA:
	mov r0, #4
	ldrsh r0, [r5, r0]
	strb r7, [r4, #0xa]
	ldrh r6, [r4, #8]
	str r0, [sp, #0x10]
	ldr r0, _020372D8 ; =0x0000FFFF
	cmp r6, r0
	bne _0203723E
	add r0, r7, #0
	bl sub_020341DC
	add r6, r0, #0
	ldr r0, _020372DC ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _020372E0 ; =0x000006B8
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020372D4
	ldr r0, _020372D8 ; =0x0000FFFF
	cmp r6, r0
	bne _0203723C
	add r0, r5, #0
	bl sub_02033BC4
	cmp r0, #1
	bge _02037226
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_02037226:
	add r0, r5, #0
	bl sub_02033B68
	lsl r6, r0, #8
	add r0, r5, #0
	bl sub_02033B68
	add r6, r6, r0
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r0, [sp, #0x10]
_0203723C:
	strh r6, [r4, #8]
_0203723E:
	add r0, r7, #0
	bl sub_02034244
	cmp r0, #0
	beq _0203729A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0203725A
	ldrh r2, [r4, #8]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_02034280
	str r0, [r4, #4]
_0203725A:
	ldr r2, [r4]
	ldr r1, [sp, #8]
	add r0, r5, #0
	sub r2, r6, r2
	bl sub_02033B4C
	ldr r2, [r4, #4]
	str r0, [sp, #0xc]
	cmp r2, #0
	beq _0203727A
	ldr r1, [r4]
	ldr r0, [sp, #8]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	bl MI_CpuCopy8
_0203727A:
	ldr r1, [r4]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4]
	cmp r0, r6
	blt _020372CA
	str r4, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_020371A8
	cmp r7, #0x11
	beq _020372D4
	b _020372CA
_0203729A:
	add r0, r5, #0
	bl sub_02033BC4
	cmp r0, r6
	blt _020372C2
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_02033B4C
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r2, r6, #0
	str r4, [sp]
	bl sub_020371A8
	cmp r7, #0x11
	beq _020372D4
	b _020372CA
_020372C2:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_020372CA:
	add r0, r5, #0
	bl sub_02033BC4
	cmp r0, #0
	bne _020371D8
_020372D4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_020372D8: .word 0x0000FFFF
_020372DC: .word _021D4140
_020372E0: .word 0x000006B8
	thumb_func_end sub_020371C4

	thumb_func_start sub_020372E4
sub_020372E4: ; 0x020372E4
	push {r4, lr}
	ldr r0, _02037328 ; =_021D4140
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02037326
	ldr r0, _0203732C ; =0x000006BA
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02037326
	ldr r0, _02037330 ; =0x000004A4
	add r0, r1, r0
	bl sub_02033C28
	ldr r0, _02037328 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037330 ; =0x000004A4
	add r0, r1, r0
	bl sub_02033BC4
	cmp r0, #0
	ble _02037326
	ldr r0, _02037328 ; =_021D4140
	mov r3, #0x62
	ldr r4, [r0, #8]
	ldr r2, _02037330 ; =0x000004A4
	lsl r3, r3, #4
	add r0, r4, r2
	sub r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0
	add r3, r4, r3
	bl sub_020371C4
_02037326:
	pop {r4, pc}
	.balign 4, 0
_02037328: .word _021D4140
_0203732C: .word 0x000006BA
_02037330: .word 0x000004A4
	thumb_func_end sub_020372E4

	thumb_func_start sub_02037334
sub_02037334: ; 0x02037334
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020373A4 ; =_021D4140
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _020373A0
	ldr r0, _020373A8 ; =0x000006BA
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020373A0
	bl sub_0203993C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033FC4
	add r0, r0, #1
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _020373A0
	ldr r7, _020373A4 ; =_021D4140
	add r5, r4, #0
_02037360:
	ldr r1, [r7, #8]
	ldr r0, _020373AC ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_02033C28
	ldr r1, [r7, #8]
	ldr r0, _020373AC ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_02033BC4
	cmp r0, #0
	ble _02037396
	mov r3, #0x17
	ldr r6, [r7, #8]
	ldr r0, _020373AC ; =0x0000051C
	ldr r2, _020373B0 ; =0x00000494
	lsl r3, r3, #6
	add r0, r6, r0
	add r3, r6, r3
	ldr r2, [r6, r2]
	add r0, r0, r5
	add r1, r4, #0
	add r3, r3, r5
	bl sub_020371C4
_02037396:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _02037360
_020373A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020373A4: .word _021D4140
_020373A8: .word 0x000006BA
_020373AC: .word 0x0000051C
_020373B0: .word 0x00000494
	thumb_func_end sub_02037334

	thumb_func_start sub_020373B4
sub_020373B4: ; 0x020373B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02037448 ; =_021D4140
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020373C4
	mov r0, #0
	pop {r4, pc}
_020373C4:
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	beq _020373F2
	ldr r0, _02037448 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _0203744C ; =0x000006B6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020373EE
	bl ov00_021EE4FC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02037444
_020373EE:
	mov r0, #0
	pop {r4, pc}
_020373F2:
	bl sub_02037474
	cmp r0, #0
	bne _020373FE
	mov r0, #0
	pop {r4, pc}
_020373FE:
	bl sub_02033298
	cmp r0, #4
	beq _0203740A
	mov r0, #0
	pop {r4, pc}
_0203740A:
	bl sub_0203769C
	cmp r4, r0
	bne _02037416
	mov r0, #1
	pop {r4, pc}
_02037416:
	bl sub_0203769C
	cmp r0, #0
	bne _02037430
	bl sub_02033250
	mov r1, #1
	add r2, r1, #0
	lsl r2, r4
	tst r0, r2
	beq _02037442
	add r0, r1, #0
	pop {r4, pc}
_02037430:
	ldr r0, _02037448 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037450 ; =0x00000694
	ldrh r2, [r1, r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02037444
_02037442:
	mov r0, #0
_02037444:
	pop {r4, pc}
	nop
_02037448: .word _021D4140
_0203744C: .word 0x000006B6
_02037450: .word 0x00000694
	thumb_func_end sub_020373B4

