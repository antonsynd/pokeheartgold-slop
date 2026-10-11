	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D9E8
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DAB0
	.public ov40_0222DED0
	.public ov40_0222FEA0
	.public ov40_0222FF48
	.public ov40_0222FF64
	.public ov40_022303B8
	.public ov40_022306C0
	.public ov40_02230738
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0223D618
	.public ov40_0223D68C
	.public ov40_0223D830
	.public ov40_0223D874
	.public ov40_0223D8D4
	.public ov40_0223DB94
	.public ov40_0223DBD4
	.public ov40_0223DCF0
	.public ov40_0223DD68
	.public ov40_0223DDE8
	.public ov40_0223DEB8
	.public ov40_0223DF1C
	.public ov40_0223E024
	.public ov40_0223E064
	.public ov40_0223E0A4
	.public ov40_0223E190
	.public ov40_02241D10
	.public ov40_02241E14
	.public ov40_022420B4
	.public ov40_02242110
	.public ov40_0224565C
	.public ov40_022456C4
	.public ov40_022456F0
	.public ov40_02245708
	.public ov40_02245808
	.public ov40_02245838
	.public ov40_02245868
	.public ov40_022458E8
	.public ov40_02245948

	.text

	thumb_func_start ov40_0223D618
ov40_0223D618: ; 0x0223D618
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _0223D684 ; =ov40_02245948
	add r3, sp, #0xc
	mov r2, #0x3c
_0223D622:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223D622
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0223D688 ; =0x0000051C
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0223D640:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0xc
	mov r6, #0
	add r5, r0, r1
_0223D64C:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0223D65E
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl ManagedSprite_SetPositionXY
_0223D65E:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223D64C
	ldr r0, [sp, #4]
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0223D640
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223D684: .word ov40_02245948
_0223D688: .word 0x0000051C
	thumb_func_end ov40_0223D618

	thumb_func_start ov40_0223D68C
ov40_0223D68C: ; 0x0223D68C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r4, _0223D814 ; =ov40_02245808
	str r0, [sp, #0x14]
	add r3, sp, #0x50
	mov r2, #6
_0223D6A0:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223D6A0
	mov r0, #0
	add r1, sp, #0x38
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	add r1, sp, #0x20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r1, _0223D818 ; =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_0223D6DA:
	ldr r1, _0223D81C ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0223D6E6
	b _0223D7F2
_0223D6E6:
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223D6F4
	mov r0, #1
	b _0223D6F6
_0223D6F4:
	mov r0, #0
_0223D6F6:
	mov r7, #0
	add r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	add r3, r7, #0
_0223D700:
	stmia r2!, {r3}
	add r1, r1, #1
	stmia r4!, {r3}
	cmp r1, #6
	blt _0223D700
	mov r1, #0x18
	mul r1, r0
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	add r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_0223D718:
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0223D73E
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0223D73E:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #3
	blt _0223D718
	ldr r1, _0223D81C ; =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223D758
	mov r7, #3
_0223D758:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	add r0, r1, r0
	lsl r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	mov r3, #3
	add r0, #0xc
	add r1, r1, r4
	add r2, r2, r4
_0223D76C:
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsl r4, r6, #1
	add r4, r5, r4
	add r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0223D792
	stmia r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _0223D81C ; =0x00002608
	add r7, r7, #1
	ldr r4, [r5, r4]
	add r4, r4, r6
	add r4, #0x98
	ldrb r4, [r4]
	stmia r2!, {r4}
_0223D792:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, #6
	blt _0223D76C
	ldr r5, [sp, #0xc]
	mov r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_0223D7A2:
	ldr r2, [sp, #0x14]
	ldr r1, _0223D820 ; =0x00000514
	ldr r3, [r6]
	ldr r2, [r2, r1]
	ldr r0, [r4]
	add r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, _0223D824 ; =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _0223D828 ; =0x00000518
	ldr r2, [r5, r2]
	bl ov40_0222FEA0
	ldr r1, _0223D82C ; =0x0000051C
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D7DA
	mov r1, #6
	sub r1, r1, r7
	bl ManagedSprite_SetDrawPriority
_0223D7DA:
	ldr r1, [sp, #0x14]
	ldr r0, _0223D820 ; =0x00000514
	add r7, r7, #1
	ldr r0, [r1, r0]
	add r6, r6, #4
	add r2, r0, #1
	ldr r0, _0223D820 ; =0x00000514
	add r4, r4, #4
	add r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _0223D7A2
_0223D7F2:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _0223D80A
	b _0223D6DA
_0223D80A:
	ldr r0, [sp, #8]
	bl ov40_0223D618
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223D814: .word ov40_02245808
_0223D818: .word 0x000004A4
_0223D81C: .word 0x00002608
_0223D820: .word 0x00000514
_0223D824: .word 0x0000050C
_0223D828: .word 0x00000518
_0223D82C: .word 0x0000051C
	thumb_func_end ov40_0223D68C

	thumb_func_start ov40_0223D830
ov40_0223D830: ; 0x0223D830
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0223D870 ; =0x0000051C
	str r0, [sp]
_0223D844:
	ldr r5, [sp]
	mov r4, #0
_0223D848:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D854
	add r1, r6, #0
	bl ManagedSprite_SetDrawFlag
_0223D854:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _0223D848
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0223D844
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223D870: .word 0x0000051C
	thumb_func_end ov40_0223D830

	thumb_func_start ov40_0223D874
ov40_0223D874: ; 0x0223D874
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	str r1, [sp]
	mov r1, #1
	bl ov40_02230964
	mov r0, #0
	str r0, [sp, #4]
	add r7, r0, #0
_0223D88E:
	ldr r5, [sp]
	mov r4, #0
_0223D892:
	ldr r0, _0223D8CC ; =0x0000051C
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _0223D8A8
	ldr r1, _0223D8D0 ; =0x00000518
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl ov40_0222FF48
	ldr r0, _0223D8CC ; =0x0000051C
	str r7, [r5, r0]
_0223D8A8:
	add r4, r4, #1
	add r5, #8
	cmp r4, #6
	blt _0223D892
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0223D88E
	add r0, r6, #0
	mov r1, #0
	bl ov40_02230964
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223D8CC: .word 0x0000051C
_0223D8D0: .word 0x00000518
	thumb_func_end ov40_0223D874

	thumb_func_start ov40_0223D8D4
ov40_0223D8D4: ; 0x0223D8D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	mov r1, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r1, sp, #0x8c
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0x86
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r1, [r1, r2]
	mov r2, #0x51
	lsl r2, r2, #4
	ldr r3, [r1, r2]
	str r1, [sp, #0x1c]
	sub r2, #0x6c
	add r1, r0, #0
	ldrsh r1, [r1, r2]
	str r0, [sp, #8]
	cmp r3, r1
	bne _0223D90A
	b _0223DB6C
_0223D90A:
	mov r1, #1
	bl ov40_02230964
	mov r1, #0x51
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	ldr r0, [sp, #8]
	sub r1, #0x6c
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _0223D926
	mov r0, #4
	str r0, [sp, #0x20]
_0223D926:
	ldr r0, [sp, #0x20]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r6, #0
	add r4, r0, r1
	add r5, sp, #0x8c
	add r7, r6, #0
_0223D936:
	ldr r0, _0223DB70 ; =0x0000051C
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0223D952
	ldr r1, _0223DB74 ; =0x00000518
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl ov40_0222FF64
	ldr r0, _0223DB74 ; =0x00000518
	ldr r0, [r4, r0]
	str r0, [r5]
	ldr r0, _0223DB70 ; =0x0000051C
	str r7, [r4, r0]
_0223D952:
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, #6
	blt _0223D936
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0223D99C
	ldr r2, _0223DB78 ; =0x000004EC
	ldr r7, [sp, #0x1c]
	mov r0, #4
	add r3, r2, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r3, #0x30
	sub r4, r2, #4
	add r5, #0x2c
_0223D976:
	mov r0, #0
	add r1, r7, #0
_0223D97A:
	ldr r6, [r1, r2]
	add r0, r0, #1
	str r6, [r1, r3]
	ldr r6, [r1, r4]
	str r6, [r1, r5]
	add r1, #8
	cmp r0, #6
	blt _0223D97A
	ldr r0, [sp, #0xc]
	sub r7, #0x30
	sub r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #1
	bge _0223D976
	mov r0, #0
	str r0, [sp, #0x10]
	b _0223D9D4
_0223D99C:
	ldr r6, _0223DB70 ; =0x0000051C
	ldr r7, [sp, #0x1c]
	mov r0, #1
	add r2, r6, #0
	add r4, r6, #0
	mov ip, r0
	add r7, #0x30
	sub r2, #0x30
	sub r3, r6, #4
	sub r4, #0x34
_0223D9B0:
	mov r1, #0
	add r0, r7, #0
_0223D9B4:
	ldr r5, [r0, r6]
	add r1, r1, #1
	str r5, [r0, r2]
	ldr r5, [r0, r3]
	str r5, [r0, r4]
	add r0, #8
	cmp r1, #6
	blt _0223D9B4
	mov r0, ip
	add r0, r0, #1
	add r7, #0x30
	mov ip, r0
	cmp r0, #5
	blt _0223D9B0
	mov r0, #4
	str r0, [sp, #0x10]
_0223D9D4:
	ldr r1, _0223DB7C ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r5, _0223DB80 ; =ov40_02245838
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x5c
	add r2, r1, r0
	mov r3, #6
_0223D9E4:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0223D9E4
	add r0, sp, #0x44
	mov r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	add r0, sp, #0x2c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	lsl r0, r2, #2
	str r0, [sp, #0x14]
	ldr r1, _0223DB84 ; =0x00002608
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223DA26
	mov r4, #1
_0223DA26:
	mov r0, #0
	str r0, [sp, #0x18]
	add r1, sp, #0x44
	add r2, sp, #0x2c
	add r6, r0, #0
_0223DA30:
	stmia r1!, {r6}
	add r0, r0, #1
	stmia r2!, {r6}
	cmp r0, #6
	blt _0223DA30
	mov r0, #0x18
	mul r0, r4
	add r1, sp, #0x5c
	add r2, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x44
	add r5, sp, #0x2c
	add r4, r1, r0
_0223DA4E:
	ldr r0, _0223DB84 ; =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223DA74
	stmia r3!, {r0}
	ldr r0, _0223DB84 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_0223DA74:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #3
	blt _0223DA4E
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	add r0, #0x80
	bl ov40_022303B8
	cmp r0, #0
	beq _0223DA90
	mov r0, #3
	str r0, [sp, #0x18]
_0223DA90:
	ldr r0, [sp, #0x28]
	add r1, sp, #0x5c
	add r2, r1, r0
	ldr r0, [sp, #0x18]
	mov r6, #3
	lsl r1, r0, #2
	add r0, sp, #0x44
	add r3, r0, r1
	add r0, sp, #0x2c
	add r2, #0xc
	add r5, r0, r1
_0223DAA6:
	ldr r0, _0223DB84 ; =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsl r0, r7, #1
	add r0, r1, r0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223DACC
	stmia r3!, {r0}
	ldr r0, _0223DB84 ; =0x00002608
	ldr r0, [r4, r0]
	add r0, r0, r7
	add r0, #0x98
	ldrb r0, [r0]
	stmia r5!, {r0}
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_0223DACC:
	add r6, r6, #1
	add r2, r2, #4
	cmp r6, #6
	blt _0223DAA6
	ldr r0, [sp, #0x10]
	mov r1, #0x30
	mul r1, r0
	ldr r0, [sp, #0x1c]
	mov r5, #0
	add r7, sp, #0x44
	add r6, sp, #0x2c
	add r4, r0, r1
_0223DAE4:
	ldr r2, [sp, #0x1c]
	ldr r1, _0223DB88 ; =0x00000514
	ldr r3, [r7]
	ldr r2, [r2, r1]
	ldr r0, [r6]
	add r1, r1, #4
	str r2, [r4, r1]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r1, _0223DB8C ; =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _0223DB74 ; =0x00000518
	ldr r2, [r4, r2]
	bl ov40_0222FEA0
	ldr r1, _0223DB70 ; =0x0000051C
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DB1C
	mov r1, #6
	sub r1, r1, r5
	bl ManagedSprite_SetDrawPriority
_0223DB1C:
	ldr r1, [sp, #0x1c]
	ldr r0, _0223DB88 ; =0x00000514
	add r5, r5, #1
	ldr r0, [r1, r0]
	add r7, r7, #4
	add r2, r0, #1
	ldr r0, _0223DB88 ; =0x00000514
	add r6, r6, #4
	add r4, #8
	str r2, [r1, r0]
	cmp r5, #6
	blt _0223DAE4
	ldr r0, [sp, #8]
	bl ov40_0223D618
	ldr r1, _0223DB7C ; =0x000004A4
	ldr r0, [sp, #8]
	ldr r6, _0223DB90 ; =0x000186A0
	ldrsh r2, [r0, r1]
	ldr r0, [sp, #0x1c]
	add r1, #0x6c
	str r2, [r0, r1]
	mov r5, #0
	add r4, sp, #0x8c
_0223DB4C:
	ldr r1, [r4]
	cmp r1, #0
	beq _0223DB5C
	ldr r0, [sp, #8]
	add r1, r1, r6
	ldr r0, [r0, #0x1c]
	bl SpriteManager_UnloadCharObjById
_0223DB5C:
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _0223DB4C
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov40_02230964
_0223DB6C:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223DB70: .word 0x0000051C
_0223DB74: .word 0x00000518
_0223DB78: .word 0x000004EC
_0223DB7C: .word 0x000004A4
_0223DB80: .word ov40_02245838
_0223DB84: .word 0x00002608
_0223DB88: .word 0x00000514
_0223DB8C: .word 0x0000050C
_0223DB90: .word 0x000186A0
	thumb_func_end ov40_0223D8D4

	thumb_func_start ov40_0223DB94
ov40_0223DB94: ; 0x0223DB94
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r2, #0x13
	lsl r2, r2, #6
	ldrh r3, [r0, r2]
	ldr r1, _0223DBD0 ; =0x0000FFFF
	cmp r3, r1
	beq _0223DBAA
	mov r0, #1
	bx lr
_0223DBAA:
	add r1, r2, #2
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	beq _0223DBB6
	mov r0, #1
	bx lr
_0223DBB6:
	add r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	bne _0223DBC6
	add r1, r2, #4
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _0223DBCA
_0223DBC6:
	mov r0, #1
	bx lr
_0223DBCA:
	mov r0, #0
	bx lr
	nop
_0223DBD0: .word 0x0000FFFF
	thumb_func_end ov40_0223DB94

	thumb_func_start ov40_0223DBD4
ov40_0223DBD4: ; 0x0223DBD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r3, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _0223DCDC ; =ov40_022458E8
	str r0, [sp, #0x20]
	add r4, sp, #0x3c
	mov r2, #0xc
_0223DBEA:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0223DBEA
	ldr r6, _0223DCE0 ; =ov40_022456F0
	add r4, sp, #0x24
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	cmp r3, #0
	beq _0223DC0C
	cmp r3, #1
	b _0223DC18
_0223DC0C:
	ldr r1, _0223DCE4 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r3, #6
	str r3, [r0, r1]
	add r5, sp, #0x3c
	str r2, [sp, #0x18]
_0223DC18:
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _0223DCE4 ; =0x00000794
	ldr r0, [sp, #0x20]
	mov r7, #1
	ldr r0, [r0, r1]
	lsl r7, r7, #8
	cmp r0, #0
	ble _0223DCD8
	ldr r1, _0223DCE8 ; =0x00000614
	ldr r0, [sp, #0x20]
	add r4, r0, r1
_0223DC30:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1]
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	mul r0, r1
	add r7, r7, r0
	mov r0, #0
	beq _0223DC94
	add r0, r4, #0
	add r1, r6, #0
	bl ov40_022306C0
_0223DC94:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DCEC ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _0223DCE4 ; =0x00000794
	add r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0223DC30
_0223DCD8:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223DCDC: .word ov40_022458E8
_0223DCE0: .word ov40_022456F0
_0223DCE4: .word 0x00000794
_0223DCE8: .word 0x00000614
_0223DCEC: .word 0x000F0D00
	thumb_func_end ov40_0223DBD4

	thumb_func_start ov40_0223DCF0
ov40_0223DCF0: ; 0x0223DCF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r5, r0]
	ldr r7, _0223DD60 ; =0x00000644
	add r4, r1, #0
	add r0, r6, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r4, #0xff
	bne _0223DD18
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	add r4, r0, #0
	b _0223DD38
_0223DD18:
	add r0, r4, #0
	sub r0, #0xfa
	cmp r0, #3
	ldr r0, [r5, #0x48]
	bhi _0223DD2E
	sub r4, #0x55
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	b _0223DD38
_0223DD2E:
	add r4, #0x84
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
_0223DD38:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DD64 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r6, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, r7
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223DD60: .word 0x00000644
_0223DD64: .word 0x000F0D00
	thumb_func_end ov40_0223DCF0

	thumb_func_start ov40_0223DD68
ov40_0223DD68: ; 0x0223DD68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r7, _0223DDDC ; =0x00000654
	add r6, r1, #0
	add r0, r4, r7
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _0223DDE0 ; =0x0000FFFF
	cmp r6, r0
	bne _0223DD94
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	add r5, r0, #0
	b _0223DDB0
_0223DD94:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x6d
	add r2, sp, #0x10
	bl GetSpeciesNameIntoArray
	add r0, r5, #0
	add r1, sp, #0x10
	bl CopyU16ArrayToString
_0223DDB0:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DDE4 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r7
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DDDC: .word 0x00000654
_0223DDE0: .word 0x0000FFFF
_0223DDE4: .word 0x000F0D00
	thumb_func_end ov40_0223DD68

	thumb_func_start ov40_0223DDE8
ov40_0223DDE8: ; 0x0223DDE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r7, [r5, r0]
	ldr r0, _0223DEB0 ; =0x00000664
	str r1, [sp, #0x10]
	add r0, r7, r0
	mov r1, #0
	add r4, r2, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	bne _0223DE18
	cmp r4, #0xff
	bne _0223DE18
	ldr r0, [r5, #0x48]
	mov r1, #0x7d
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	b _0223DE84
_0223DE18:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r6, r0, #0
	cmp r4, #0
	beq _0223DE50
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	mov r1, #0x17
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	add r3, r4, #0
	bl BufferCityName
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r5, #0
	bl StringExpandPlaceholders
	b _0223DE78
_0223DE50:
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	mov r1, #0x16
	bl NewString_ReadMsgData
	add r5, r0, #0
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0
	bl BufferCountryName
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r2, r5, #0
	bl StringExpandPlaceholders
_0223DE78:
	add r0, r5, #0
	bl String_Delete
	add r0, r6, #0
	bl MessageFormat_Delete
_0223DE84:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DEB4 ; =0x000F0D00
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, _0223DEB0 ; =0x00000664
	add r3, r1, #0
	add r0, r7, r0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _0223DEB0 ; =0x00000664
	add r0, r7, r0
	bl ScheduleWindowCopyToVram
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223DEB0: .word 0x00000664
_0223DEB4: .word 0x000F0D00
	thumb_func_end ov40_0223DDE8

	thumb_func_start ov40_0223DEB8
ov40_0223DEB8: ; 0x0223DEB8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r5, [r0, r1]
	ldr r1, _0223DF0C ; =0x000004C3
	ldr r6, _0223DF10 ; =0x000006F4
	ldrb r1, [r5, r1]
	cmp r1, #0xff
	bne _0223DED0
	mov r1, #0x32
	b _0223DED2
_0223DED0:
	ldr r1, _0223DF14 ; =0x0000014D
_0223DED2:
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223DF18 ; =0x000F0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, r6
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223DF0C: .word 0x000004C3
_0223DF10: .word 0x000006F4
_0223DF14: .word 0x0000014D
_0223DF18: .word 0x000F0D00
	thumb_func_end ov40_0223DEB8

	thumb_func_start ov40_0223DF1C
ov40_0223DF1C: ; 0x0223DF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r2, r1, #0
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r5, _0223E010 ; =ov40_02245868
	str r0, [sp, #0x1c]
	add r4, sp, #0x2c
	mov r3, #6
_0223DF32:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0223DF32
	ldr r4, _0223E014 ; =ov40_0224565C
	add r3, sp, #0x20
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	cmp r2, #0
	str r0, [r3]
	beq _0223DF4E
	bl GF_AssertFail
_0223DF4E:
	ldr r1, _0223E018 ; =0x00000798
	ldr r0, [sp, #0x1c]
	mov r6, #3
	str r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	sub r1, #0xc4
	add r7, sp, #0x20
	add r6, #0xfd
	add r4, r0, r1
	add r5, sp, #0x2c
_0223DF66:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [r5, #4]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r2, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	add r4, #0x10
	mul r0, r1
	add r6, r6, r0
	ldr r0, [sp, #0x18]
	add r5, #0x10
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0223DF66
	ldr r1, _0223E01C ; =0x000006D4
	ldr r0, [sp, #0x1c]
	mov r6, #0
	add r5, r0, r1
_0223DFC6:
	ldr r0, [sp, #0x14]
	ldr r1, [r7]
	ldr r0, [r0, #0x48]
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E020 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	bl String_Delete
	add r6, r6, #1
	add r5, #0x10
	add r7, r7, #4
	cmp r6, #2
	blt _0223DFC6
	ldr r0, [sp, #0x14]
	bl ov40_0223DEB8
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0223E010: .word ov40_02245868
_0223E014: .word ov40_0224565C
_0223E018: .word 0x00000798
_0223E01C: .word 0x000006D4
_0223E020: .word 0x000F0D00
	thumb_func_end ov40_0223DF1C

	thumb_func_start ov40_0223E024
ov40_0223E024: ; 0x0223E024
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	sub r1, #0xcc
	ldr r0, [r6, r1]
	mov r4, #0
	cmp r0, #0
	ble _0223E052
	ldr r0, _0223E05C ; =0x00000614
	ldr r7, _0223E060 ; =0x00000794
	add r5, r6, r0
_0223E03C:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223E03C
_0223E052:
	ldr r0, _0223E060 ; =0x00000794
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E05C: .word 0x00000614
_0223E060: .word 0x00000794
	thumb_func_end ov40_0223E024

	thumb_func_start ov40_0223E064
ov40_0223E064: ; 0x0223E064
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r6, [r0, r1]
	sub r1, #0xc8
	ldr r0, [r6, r1]
	mov r4, #0
	cmp r0, #0
	ble _0223E094
	ldr r0, _0223E09C ; =0x000006D4
	add r7, r0, #0
	add r5, r6, r0
	add r7, #0xc4
_0223E07E:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0223E07E
_0223E094:
	ldr r0, _0223E0A0 ; =0x00000798
	mov r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E09C: .word 0x000006D4
_0223E0A0: .word 0x00000798
	thumb_func_end ov40_0223E064

	thumb_func_start ov40_0223E0A4
ov40_0223E0A4: ; 0x0223E0A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _0223E184 ; =0x00000614
	add r0, r4, r6
	bl InitWindow
	mov r3, #3
	str r3, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r2, #2
	bl AddWindowParameterized
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x7e
	bl NewString_ReadMsgData
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E188 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add r0, r7, #0
	bl String_Delete
	add r6, #0xc0
	add r0, r4, r6
	bl InitWindow
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	add r0, #0xf2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0xb
	bl AddWindowParameterized
	add r0, r4, r6
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x48]
	mov r1, #0x5f
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	mov r1, #0x50
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E188 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, r6
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	bl String_Delete
	ldr r0, _0223E18C ; =0x00000798
	mov r1, #1
	str r1, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223E184: .word 0x00000614
_0223E188: .word 0x000F0D00
_0223E18C: .word 0x00000798
	thumb_func_end ov40_0223E0A4

	thumb_func_start ov40_0223E190
ov40_0223E190: ; 0x0223E190
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E1A8
	cmp r1, #1
	beq _0223E252
	b _0223E2EE
_0223E1A8:
	bl ov40_02230738
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov40_0222D9E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r5, #0
	mov r1, #0x38
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	bl ov40_02242110
	add r0, r5, #0
	mov r1, #0
	bl ov40_022420B4
	mov r1, #0x7d
	ldr r0, _0223E2FC ; =0x00000514
	lsl r1, r1, #2
	str r1, [r4, r0]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223E300 ; =ov40_022456C4
	ldr r2, _0223E304 ; =ov40_02241D10
	mov r1, #5
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223E308 ; =0x00000608
	ldr r2, _0223E30C ; =ov40_02241E14
	str r0, [r4, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0223E310 ; =ov40_02245708
	mov r1, #9
	add r3, r5, #0
	bl TouchHitboxController_Create
	ldr r1, _0223E314 ; =0x0000060C
	add r5, #8
	str r0, [r4, r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0223E2F4
_0223E252:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E2D4
	add r0, r5, #0
	mov r1, #0x7c
	bl ov40_0222DED0
	mov r0, #0x13
	ldr r1, _0223E318 ; =0x0000FFFF
	lsl r0, r0, #6
	strh r1, [r4, r0]
	mov r2, #0xff
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #3
	strb r2, [r4, r1]
	add r0, r0, #4
	strb r2, [r4, r0]
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DBD4
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223DF1C
	mov r1, #0x13
	lsl r1, r1, #6
	ldrh r1, [r4, r1]
	add r0, r5, #0
	bl ov40_0223DD68
	ldr r1, _0223E31C ; =0x000004C2
	add r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov40_0223DCF0
	ldr r2, _0223E320 ; =0x000004C3
	add r0, r5, #0
	ldrb r1, [r4, r2]
	add r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov40_0223DDE8
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E2D4:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E2F4
_0223E2EE:
	mov r1, #3
	bl ov40_0222BF80
_0223E2F4:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223E2FC: .word 0x00000514
_0223E300: .word ov40_022456C4
_0223E304: .word ov40_02241D10
_0223E308: .word 0x00000608
_0223E30C: .word ov40_02241E14
_0223E310: .word ov40_02245708
_0223E314: .word 0x0000060C
_0223E318: .word 0x0000FFFF
_0223E31C: .word 0x000004C2
_0223E320: .word 0x000004C3
	thumb_func_end ov40_0223E190

