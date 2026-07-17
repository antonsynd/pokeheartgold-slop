	.include "asm/macros.inc"
	.include "overlay_41_02248400.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02248400
ov41_02248400: ; 0x02248400
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov41_02249B94
	add r0, r6, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov41_02249B44
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov41_02249BAC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r2, r0, r1
	mov r1, #0x8a
	sub r2, r1, r2
	ldr r1, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x14]
	sub r1, #0xf6
	add r6, r0, r3
	mov r3, #0x12
	sub r3, r3, r6
	ldr r6, [sp, #0x1c]
	add r6, r0, r6
	ldr r0, [sp, #4]
	sub r6, r6, r0
	sub r6, #0x8f
	cmp r2, #0
	ble _0224845C
	str r2, [r5]
	b _0224846A
_0224845C:
	cmp r1, #0
	ble _02248466
	neg r0, r1
	str r0, [r5]
	b _0224846A
_02248466:
	mov r0, #0
	str r0, [r5]
_0224846A:
	cmp r3, #0
	ble _02248474
	add sp, #0x24
	str r3, [r4]
	pop {r3, r4, r5, r6, pc}
_02248474:
	cmp r6, #0
	ble _02248480
	neg r0, r6
	add sp, #0x24
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02248480:
	mov r0, #0
	str r0, [r4]
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov41_02248400

	thumb_func_start ov41_02248488
ov41_02248488: ; 0x02248488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	str r1, [r5, #0x44]
	ldr r1, [r4, #4]
	str r1, [r5, #0x48]
	ldr r1, [r4, #8]
	str r1, [r5, #0x4c]
	ldr r1, [r4, #0xc]
	str r1, [r5, #0x50]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x54]
	ldr r1, [r4, #0x14]
	str r1, [r5, #0x58]
	ldr r1, [r4, #0x18]
	str r1, [r5, #8]
	ldr r1, [r4, #0x28]
	str r1, [r5, #4]
	mov r1, #0
	bl ov41_0224888C
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_022489A8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02248488

	thumb_func_start ov41_022484C0
ov41_022484C0: ; 0x022484C0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov41_022486F8
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_022484CE:
	add r0, r5, #0
	bl ov41_02248A6C
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #4
	blt _022484CE
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x8c
	bl memset
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022484C0

	thumb_func_start ov41_022484E8
ov41_022484E8: ; 0x022484E8
	push {r3, lr}
	cmp r0, #0
	beq _022484F8
	cmp r0, #1
	beq _02248568
	cmp r0, #2
	beq _02248576
	pop {r3, pc}
_022484F8:
	cmp r1, #5
	bgt _02248500
	mov r0, #0
	pop {r3, pc}
_02248500:
	cmp r1, #0xb
	bgt _02248508
	mov r0, #1
	pop {r3, pc}
_02248508:
	cmp r1, #0x11
	bgt _02248510
	mov r0, #2
	pop {r3, pc}
_02248510:
	cmp r1, #0x15
	bgt _02248518
	mov r0, #3
	pop {r3, pc}
_02248518:
	cmp r1, #0x1c
	bgt _02248520
	mov r0, #4
	pop {r3, pc}
_02248520:
	cmp r1, #0x21
	bgt _02248528
	mov r0, #5
	pop {r3, pc}
_02248528:
	cmp r1, #0x26
	bgt _02248530
	mov r0, #6
	pop {r3, pc}
_02248530:
	cmp r1, #0x2a
	bgt _02248538
	mov r0, #7
	pop {r3, pc}
_02248538:
	cmp r1, #0x31
	bgt _02248540
	mov r0, #8
	pop {r3, pc}
_02248540:
	cmp r1, #0x37
	bgt _02248548
	mov r0, #9
	pop {r3, pc}
_02248548:
	cmp r1, #0x3c
	bgt _02248550
	mov r0, #0xa
	pop {r3, pc}
_02248550:
	cmp r1, #0x47
	bgt _02248558
	mov r0, #0xb
	pop {r3, pc}
_02248558:
	cmp r1, #0x5b
	bgt _02248560
	mov r0, #0xc
	pop {r3, pc}
_02248560:
	cmp r1, #0x63
	bgt _02248582
	mov r0, #0xd
	pop {r3, pc}
_02248568:
	add r0, r2, #0
	bl ov41_02248EF4
	mov r1, #9
	bl _s32_div_f
	pop {r3, pc}
_02248576:
	add r0, r2, #0
	bl ov41_02248EF4
	mov r1, #9
	bl _s32_div_f
_02248582:
	pop {r3, pc}
	thumb_func_end ov41_022484E8

	thumb_func_start ov41_02248584
ov41_02248584: ; 0x02248584
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _02248598
	cmp r0, #1
	beq _022485CA
	cmp r0, #2
	beq _022485CA
	pop {r3, r4, r5, pc}
_02248598:
	mov r0, #0xa
	str r0, [r5]
	mov r0, #0x12
	str r0, [r4]
	bl MTRandom
	ldr r2, [sp, #0x10]
	mov r1, #0x6c
	sub r1, r1, r2
	bl _u32_div_f
	ldr r0, [r5]
	add r0, r0, r1
	str r0, [r5]
	bl MTRandom
	ldr r2, [sp, #0x14]
	mov r1, #0x7d
	sub r1, r1, r2
	bl _u32_div_f
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_022485CA:
	ldr r0, [sp, #0x18]
	bl ov41_02248EF4
	add r1, r5, #0
	add r2, r4, #0
	bl ov41_02248B48
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02248584

	thumb_func_start ov41_022485DC
ov41_022485DC: ; 0x022485DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r2, #0
	str r4, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x44]
	add r6, r1, #0
	mov r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r6, #0
	beq _02248604
	cmp r6, #1
	beq _02248610
	cmp r6, #2
	beq _0224861E
	b _0224862C
_02248604:
	ldr r0, [r5, #0x50]
	str r4, [sp, #0xc]
	ldrb r0, [r0, r4]
	add r7, r1, #0
	str r0, [sp, #0x44]
	b _02248630
_02248610:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x64
	str r0, [sp, #0xc]
	add r7, r4, #1
	str r1, [sp, #0x44]
	b _02248630
_0224861E:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x64
	str r0, [sp, #0xc]
	add r7, r4, #1
	str r1, [sp, #0x44]
	b _02248630
_0224862C:
	bl GF_AssertFail
_02248630:
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0x48]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r7, #2
	str r0, [sp, #0x30]
	ldr r2, [r5, #0x4c]
	cmp r0, #0
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	bne _0224864A
	bl GF_AssertFail
_0224864A:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _02248654
	bl GF_AssertFail
_02248654:
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov41_022484E8
	add r7, r0, #0
	add r0, sp, #0x28
	bl ov41_02245EE0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl ov41_022499F0
	mov r1, #0xc
	mul r1, r6
	add r1, r5, r1
	ldr r2, [r1, #0xc]
	lsl r1, r7, #4
	add r1, r2, r1
	ldr r1, [r1, #0xc]
	str r0, [sp, #0x14]
	bl ov41_02249A50
	ldr r0, [sp, #0x14]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov41_02249B94
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x24
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r3, sp, #0x20
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov41_02248584
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl ov41_02249AF4
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_02248B20
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022485DC

	thumb_func_start ov41_022486C4
ov41_022486C4: ; 0x022486C4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	mul r1, r4
	add r7, r3, #0
	add r1, r5, r1
	add r6, r2, #0
	ldr r2, [r1, #0xc]
	lsl r1, r6, #4
	add r0, r7, #0
	add r1, r2, r1
	bl ov41_02249A50
	ldr r1, [r7]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov41_02248B20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022486C4

	thumb_func_start ov41_022486F0
ov41_022486F0: ; 0x022486F0
	ldr r3, _022486F4 ; =ov41_02249A60
	bx r3
	.balign 4, 0
_022486F4: .word ov41_02249A60
	thumb_func_end ov41_022486F0

	thumb_func_start ov41_022486F8
ov41_022486F8: ; 0x022486F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
_022486FE:
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0224871A
	add r4, r6, #0
_02248708:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov41_02249A70
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02248708
_0224871A:
	add r7, r7, #1
	add r5, #0xc
	cmp r7, #3
	blt _022486FE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_022486F8

	thumb_func_start ov41_02248724
ov41_02248724: ; 0x02248724
	push {r4, r5, r6, lr}
	mov r5, #0
	mvn r5, r5
	bl ov41_02248A94
	add r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _0224874C
_02248736:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _02248744
	ldr r0, [r4]
	add r1, r5, #0
	bl ov41_02246014
_02248744:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02248736
_0224874C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02248724

	thumb_func_start ov41_02248750
ov41_02248750: ; 0x02248750
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x3c]
	add r4, r2, #0
	cmp r1, #0
	bne _02248788
	ldr r1, [r5]
	mov r2, #0xc
	mul r2, r1
	str r4, [sp]
	add r2, r5, r2
	ldr r2, [r2, #0x14]
	add r3, r6, #0
	bl ov41_02248B84
	mov r0, #0xc
	mul r0, r6
	str r6, [r5]
	add r0, r5, r0
	str r4, [r0, #0x14]
	add r0, r5, #0
	bl ov41_02248724
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02248788:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02248750

	thumb_func_start ov41_02248790
ov41_02248790: ; 0x02248790
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	str r2, [sp, #8]
	bl ov41_0224895C
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xc
	mul r1, r0
	ldr r0, [sp]
	mov r4, #1
	add r6, r0, r1
	ldr r0, [r6, #0x10]
	cmp r0, #1
	ble _022487F2
_022487B2:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022487C4
	ldr r1, [r6, #0x10]
	add r0, r4, r7
	bl _s32_div_f
	add r5, r1, #0
	b _022487CC
_022487C4:
	sub r5, r7, r4
	bpl _022487CC
	ldr r0, [r6, #0x10]
	add r5, r5, r0
_022487CC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov41_02248ABC
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022487EA
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov41_02248750
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022487EA:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _022487B2
_022487F2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248790

	thumb_func_start ov41_022487F8
ov41_022487F8: ; 0x022487F8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl ov41_02248A18
	mov r0, #0xc
	mul r0, r4
	str r4, [r5]
	add r0, r5, r0
	str r6, [r0, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ov41_02248A18
	add r0, r5, #0
	bl ov41_02248724
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022487F8

	thumb_func_start ov41_02248820
ov41_02248820: ; 0x02248820
	push {r3, lr}
	mov r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0x8f
	strb r1, [r0, #1]
	mov r1, #0xa
	strb r1, [r0, #2]
	mov r1, #0x76
	strb r1, [r0, #3]
	add r0, sp, #0
	bl TouchscreenHitbox_TouchHeldIsIn
	pop {r3, pc}
	thumb_func_end ov41_02248820

	thumb_func_start ov41_0224883C
ov41_0224883C: ; 0x0224883C
	push {r3, lr}
	mov r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	mov r3, #0x8f
	strb r3, [r0, #1]
	mov r3, #0xa
	strb r3, [r0, #2]
	mov r3, #0x76
	strb r3, [r0, #3]
	add r0, sp, #0
	bl TouchscreenHitbox_PointIsIn
	pop {r3, pc}
	thumb_func_end ov41_0224883C

	thumb_func_start ov41_02248858
ov41_02248858: ; 0x02248858
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov41_02248A94
	add r5, r0, #0
	ldr r4, [r5, #8]
	cmp r4, r5
	beq _02248886
_0224886C:
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov41_02249AA8
	cmp r0, #1
	bne _02248880
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02248880:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _0224886C
_02248886:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02248858

	thumb_func_start ov41_0224888C
ov41_0224888C: ; 0x0224888C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x1a
	lsl r1, r4, #1
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x81
	str r0, [sp, #8]
	mov r0, #0x85
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #0x81
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xe
	add r1, #0x82
	str r0, [sp, #0x2c]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x5c
	add r1, sp, #0
	bl ov41_02249C7C
	str r4, [r5, #0x40]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224888C

	thumb_func_start ov41_022488D8
ov41_022488D8: ; 0x022488D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0x1a
	lsl r1, r4, #1
	str r0, [sp, #0xc]
	add r0, r1, #0
	add r0, #0x81
	str r0, [sp, #0x10]
	mov r0, #0x85
	str r0, [sp, #0x14]
	mov r0, #8
	add r1, #0x82
	str r0, [sp, #0x1c]
	mov r0, #0x81
	str r1, [sp, #0x18]
	str r0, [sp, #0x20]
	mov r0, #3
	mov r1, #2
	str r0, [sp, #0x24]
	mov r0, #1
	str r1, [sp, #0x2c]
	mov r7, #0
	mov r1, #0xe
	str r0, [sp, #0x28]
	str r7, [sp, #0x30]
	str r1, [sp, #0x34]
	tst r0, r2
	beq _0224891A
	mov r7, #0x70
_0224891A:
	mov r0, #2
	tst r0, r2
	beq _02248924
	mov r6, #0x81
	b _02248926
_02248924:
	mov r6, #0
_02248926:
	ldr r0, [sp, #0x50]
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x5c
	add r1, sp, #8
	add r2, r7, #0
	add r3, r6, #0
	bl ov41_02249DB4
	str r4, [r5, #0x40]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_022488D8

	thumb_func_start ov41_02248940
ov41_02248940: ; 0x02248940
	ldr r3, _02248948 ; =ov41_02249CC4
	add r0, #0x5c
	bx r3
	nop
_02248948: .word ov41_02249CC4
	thumb_func_end ov41_02248940

	thumb_func_start ov41_0224894C
ov41_0224894C: ; 0x0224894C
	push {r4, lr}
	add r4, r0, #0
	bne _02248956
	bl GF_AssertFail
_02248956:
	ldr r0, [r4]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224894C

	thumb_func_start ov41_0224895C
ov41_0224895C: ; 0x0224895C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0224896C
	bl GF_AssertFail
_0224896C:
	mov r0, #0xc
	mul r0, r4
	add r3, r5, r0
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov41_0224895C

	thumb_func_start ov41_02248984
ov41_02248984: ; 0x02248984
	push {r4, lr}
	add r4, r3, #0
	bl ov41_02248ABC
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl ov41_02249BE8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02248984

	thumb_func_start ov41_02248998
ov41_02248998: ; 0x02248998
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _022489A2
	mov r0, #1
	bx lr
_022489A2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02248998

	thumb_func_start ov41_022489A8
ov41_022489A8: ; 0x022489A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x1c]
	add r5, r0, #0
	add r0, #0xc
	bl ov41_02248A28
	mov r0, #0
	str r0, [r5]
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ov41_022489E4
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	add r0, #0x18
	bl ov41_02248A28
	add r0, r5, #0
	ldr r1, [r4, #0x24]
	add r0, #0x24
	bl ov41_02248A28
	add r5, #0x30
	add r0, r5, #0
	mov r1, #1
	bl ov41_02248A28
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_022489A8

	thumb_func_start ov41_022489E4
ov41_022489E4: ; 0x022489E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	cmp r4, r5
	beq _02248A04
_022489F0:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _022489FE
	ldr r0, [r4]
	add r1, r6, #0
	bl ov41_02246008
_022489FE:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022489F0
_02248A04:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_022489E4

	thumb_func_start ov41_02248A08
ov41_02248A08: ; 0x02248A08
	push {r4, lr}
	add r4, r3, #0
	bl ov41_02248ABC
	add r1, r4, #0
	bl ov41_022489E4
	pop {r4, pc}
	thumb_func_end ov41_02248A08

	thumb_func_start ov41_02248A18
ov41_02248A18: ; 0x02248A18
	push {r4, lr}
	add r4, r1, #0
	bl ov41_02248A94
	add r1, r4, #0
	bl ov41_022489E4
	pop {r4, pc}
	thumb_func_end ov41_02248A18

	thumb_func_start ov41_02248A28
ov41_02248A28: ; 0x02248A28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0xe
	lsl r1, r4, #4
	bl Heap_Alloc
	str r0, [r5]
	str r4, [r5, #4]
	mov r6, #0
	str r6, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02248A68
	add r4, r6, #0
	add r7, r6, #0
_02248A48:
	ldr r0, [r5]
	add r1, r7, #0
	add r0, r0, r4
	str r0, [r0, #8]
	ldr r0, [r5]
	add r0, r0, r4
	str r0, [r0, #0xc]
	ldr r0, [r5]
	add r0, r0, r4
	bl ov41_022489E4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02248A48
_02248A68:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02248A28

	thumb_func_start ov41_02248A6C
ov41_02248A6C: ; 0x02248A6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Heap_Free
	mov r0, #0
	str r0, [r4]
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	pop {r4, pc}
	thumb_func_end ov41_02248A6C

	thumb_func_start ov41_02248A94
ov41_02248A94: ; 0x02248A94
	push {r3}
	sub sp, #0xc
	ldr r2, [r0]
	mov r1, #0xc
	mul r1, r2
	add r3, r0, r1
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	lsl r0, r0, #4
	add r0, r1, r0
	add sp, #0xc
	pop {r3}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02248A94

	thumb_func_start ov41_02248ABC
ov41_02248ABC: ; 0x02248ABC
	push {r4}
	sub sp, #0xc
	mov r3, #0xc
	mul r3, r1
	add r4, r0, r3
	add r4, #0xc
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r1, [sp]
	lsl r0, r2, #4
	add r0, r1, r0
	add sp, #0xc
	pop {r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02248ABC

	thumb_func_start ov41_02248AE0
ov41_02248AE0: ; 0x02248AE0
	push {r4, lr}
	mov r4, #0
	bl ov41_02248ABC
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _02248AF6
_02248AEE:
	ldr r1, [r1, #8]
	add r4, r4, #1
	cmp r1, r0
	bne _02248AEE
_02248AF6:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02248AE0

	thumb_func_start ov41_02248AFC
ov41_02248AFC: ; 0x02248AFC
	push {r3, r4, r5, lr}
	add r5, r3, #0
	mov r4, #0
	bl ov41_02248ABC
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _02248B1C
_02248B0C:
	cmp r4, r5
	bne _02248B14
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_02248B14:
	ldr r1, [r1, #8]
	add r4, r4, #1
	cmp r1, r0
	bne _02248B0C
_02248B1C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02248AFC

	thumb_func_start ov41_02248B20
ov41_02248B20: ; 0x02248B20
	push {r4, lr}
	ldr r4, [r0]
	cmp r4, r2
	bne _02248B34
	mov r4, #0xc
	mul r4, r2
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	cmp r3, r0
	beq _02248B3E
_02248B34:
	add r0, r1, #0
	mov r1, #0
	bl ov41_02246008
	pop {r4, pc}
_02248B3E:
	add r0, r1, #0
	mov r1, #1
	bl ov41_02246008
	pop {r4, pc}
	thumb_func_end ov41_02248B20

	thumb_func_start ov41_02248B48
ov41_02248B48: ; 0x02248B48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #9
	add r4, r2, #0
	bl _s32_div_f
	add r7, r1, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r0, r6, #1
	lsl r2, r0, #3
	lsl r0, r6, #5
	add r0, r2, r0
	add r0, #0x10
	str r0, [r4]
	add r0, r1, #1
	lsl r2, r0, #3
	mov r0, #0x18
	mul r0, r1
	add r0, r2, r0
	add r0, #8
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248B48

	thumb_func_start ov41_02248B84
ov41_02248B84: ; 0x02248B84
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _02248BF8 ; =ov41_02248BFC
	mov r1, #0x30
	mov r2, #0
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	add r4, r0, #0
	str r5, [r4]
	str r6, [r4, #4]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r5, #0
	add r2, r7, #0
	bl ov41_02248AE0
	str r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl ov41_02248AE0
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	add r2, r1, r0
	mov r1, #0xc
	mov r0, #0xd
	mul r1, r2
	str r2, [r4, #0x2c]
	bl Heap_Alloc
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _02248BE4
	bl GF_AssertFail
_02248BE4:
	ldr r3, [r4, #0x2c]
	mov r2, #0xc
	ldr r0, [r4, #0x28]
	mov r1, #0
	mul r2, r3
	bl memset
	mov r0, #1
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02248BF8: .word ov41_02248BFC
	thumb_func_end ov41_02248B84

	thumb_func_start ov41_02248BFC
ov41_02248BFC: ; 0x02248BFC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #4
	bls _02248C0C
	b _02248D54
_02248C0C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248C18: ; jump table
	.short _02248C22 - _02248C18 - 2 ; case 0
	.short _02248C76 - _02248C18 - 2 ; case 1
	.short _02248CC2 - _02248C18 - 2 ; case 2
	.short _02248D08 - _02248C18 - 2 ; case 3
	.short _02248D20 - _02248C18 - 2 ; case 4
_02248C22:
	mov r0, #0x83
	mvn r0, r0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r3, #0
	bl ov41_02248984
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r3, #1
	bl ov41_02248A08
	mov r0, #0
	str r0, [r4, #0x14]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x14
	str r1, [sp]
	ldr r1, [r0, #0x40]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	mov r2, #2
	mov r3, #5
	bl ov41_022488D8
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov41_02248E10
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02248D58
_02248C76:
	ldr r0, [r4, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02248CAA
	add r5, r4, #0
	add r5, #0x20
_02248C82:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	bmi _02248CA2
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x20]
	bl ov41_02248AFC
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov41_02248D64
_02248CA2:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02248C82
_02248CAA:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02248D58
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov41_02248E10
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02248D58
_02248CC2:
	ldr r0, [r4, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02248CF6
	add r5, r4, #0
	add r5, #0x24
_02248CCE:
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	bmi _02248CEE
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x24]
	bl ov41_02248AFC
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov41_02248D64
_02248CEE:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02248CCE
_02248CF6:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02248D58
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x18]
	b _02248D58
_02248D08:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #3
	ble _02248D58
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02248D58
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02248D58
_02248D20:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	mov r3, #0
	bl ov41_02248A08
	mov r0, #0x83
	mvn r0, r0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	mov r3, #0
	bl ov41_02248984
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0, #0x3c]
	ldr r0, [r4, #0x28]
	bl Heap_Free
	add r0, r5, #0
	bl DestroySysTaskAndEnvironment
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02248D54:
	bl GF_AssertFail
_02248D58:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl ov41_02248DA4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov41_02248BFC

	thumb_func_start ov41_02248D64
ov41_02248D64: ; 0x02248D64
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl ov41_02248D7C
	str r4, [r0]
	mov r1, #3
	str r1, [r0, #4]
	mov r1, #0x2c
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov41_02248D64

	thumb_func_start ov41_02248D7C
ov41_02248D7C: ; 0x02248D7C
	push {r3, r4}
	mov r3, #0
	cmp r1, #0
	ble _02248D9E
	add r4, r0, #0
_02248D86:
	ldr r2, [r4]
	cmp r2, #0
	bne _02248D96
	mov r1, #0xc
	mul r1, r3
	add r0, r0, r1
	pop {r3, r4}
	bx lr
_02248D96:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r1
	blt _02248D86
_02248D9E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov41_02248D7C

	thumb_func_start ov41_02248DA4
ov41_02248DA4: ; 0x02248DA4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02248DC4
_02248DB0:
	ldr r0, [r5]
	cmp r0, #0
	beq _02248DBC
	add r0, r5, #0
	bl ov41_02248DC8
_02248DBC:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r6
	blt _02248DB0
_02248DC4:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02248DA4

	thumb_func_start ov41_02248DC8
ov41_02248DC8: ; 0x02248DC8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249B44
	ldr r1, [sp]
	ldr r0, [r4, #8]
	add r2, r1, r0
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bl ov41_02249AF4
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _02248E0C
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
_02248E0C:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_02248DC8

	thumb_func_start ov41_02248E10
ov41_02248E10: ; 0x02248E10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl _s32_div_f
	sub r0, r4, r1
	add r0, r5, r0
	add r1, r4, #0
	bl _s32_div_f
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02248E10

	thumb_func_start ov41_02248E28
ov41_02248E28: ; 0x02248E28
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_02248E2E:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02248E2E
	ldr r1, _02248E40 ; =ov41_02248E80
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.balign 4, 0
_02248E40: .word ov41_02248E80
	thumb_func_end ov41_02248E28

	thumb_func_start ov41_02248E44
ov41_02248E44: ; 0x02248E44
	push {r4, lr}
	ldr r1, _02248E7C ; =gSystem + 0x40
	add r4, r0, #0
	ldrh r2, [r1, #0x24]
	cmp r2, #0
	beq _02248E56
	ldr r1, [r4, #4]
	blx r1
	b _02248E6C
_02248E56:
	ldrh r1, [r1, #0x26]
	cmp r1, #0
	beq _02248E62
	ldr r1, [r4, #0xc]
	blx r1
	b _02248E6C
_02248E62:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02248E6C
	ldr r1, [r4, #8]
	blx r1
_02248E6C:
	ldr r0, _02248E7C ; =gSystem + 0x40
	ldrh r1, [r0, #0x20]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #0x22]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #0x26]
	strb r0, [r4, #0x18]
	pop {r4, pc}
	.balign 4, 0
_02248E7C: .word gSystem + 0x40
	thumb_func_end ov41_02248E44

	thumb_func_start ov41_02248E80
ov41_02248E80: ; 0x02248E80
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02248E80

	thumb_func_start ov41_02248E84
ov41_02248E84: ; 0x02248E84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	mov r4, #0
	add r5, r7, #0
_02248E8E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202BA70
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #0x64
	blt _02248E8E
	mov r0, #0x19
	mov r3, #0
	add r2, r7, #0
	mov r1, #0x12
	lsl r0, r0, #4
_02248EA8:
	add r3, r3, #1
	str r1, [r2, r0]
	add r2, r2, #4
	cmp r3, #0x12
	blt _02248EA8
	mov r5, #0x19
	mov r4, #0
	lsl r5, r5, #4
_02248EB8:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202BAB0
	cmp r0, #0x12
	beq _02248ECA
	lsl r0, r0, #2
	add r0, r7, r0
	str r4, [r0, r5]
_02248ECA:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02248EB8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02248E84

