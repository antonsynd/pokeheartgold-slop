	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_0225F518
	.extern ov49_0225EF40
	.extern ov49_0225EF68
	.extern ov49_0225EF84
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF90
	.extern ov49_0225EF98
	.extern ov49_0225F2FC
	.extern ov49_022614CC
	.extern ov49_02261540
	.extern ov49_02269B38

    .text

	.text
	thumb_func_start ov49_0225F518
ov49_0225F518: ; 0x0225F518
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov49_02259FE8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_02259FF0
	str r0, [sp, #8]
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0x16
	bhi _0225F602
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F556: ; jump table
	.short _0225F584 - _0225F556 - 2 ; case 0
	.short _0225F5C4 - _0225F556 - 2 ; case 1
	.short _0225F5FA - _0225F556 - 2 ; case 2
	.short _0225F614 - _0225F556 - 2 ; case 3
	.short _0225F62E - _0225F556 - 2 ; case 4
	.short _0225F648 - _0225F556 - 2 ; case 5
	.short _0225F662 - _0225F556 - 2 ; case 6
	.short _0225F67C - _0225F556 - 2 ; case 7
	.short _0225F692 - _0225F556 - 2 ; case 8
	.short _0225F6B2 - _0225F556 - 2 ; case 9
	.short _0225F6E4 - _0225F556 - 2 ; case 10
	.short _0225F758 - _0225F556 - 2 ; case 11
	.short _0225F79E - _0225F556 - 2 ; case 12
	.short _0225F7D0 - _0225F556 - 2 ; case 13
	.short _0225F9FA - _0225F556 - 2 ; case 14
	.short _0225F844 - _0225F556 - 2 ; case 15
	.short _0225F88A - _0225F556 - 2 ; case 16
	.short _0225F8E2 - _0225F556 - 2 ; case 17
	.short _0225F902 - _0225F556 - 2 ; case 18
	.short _0225F950 - _0225F556 - 2 ; case 19
	.short _0225F97A - _0225F556 - 2 ; case 20
	.short _0225F9AE - _0225F556 - 2 ; case 21
	.short _0225F9C2 - _0225F556 - 2 ; case 22
_0225F584:
	add r0, r6, #0
	mov r1, #0x2c
	bl ov49_0225EF40
	add r1, r5, #0
	add r4, r0, #0
	bl ov49_022614CC
	ldr r0, [sp, #4]
	bl ov45_0222A4D0
	ldr r0, [sp, #4]
	bl ov45_0222B1B4
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	bl ov45_0222A72C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov49_0225F2FC
	add r1, r0, #0
	ldr r0, [sp, #8]
	mov r2, #4
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F5C4:
	add r0, r5, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225F602
	add r0, r7, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _0225F602
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225A008
	add r1, r7, #0
	bl ov49_0225CC40
	mov r0, #0x10
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F5FA:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	beq _0225F604
_0225F602:
	b _0225F9FA
_0225F604:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A018
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F614:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F62E:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov49_02258E7C
	mov r0, #5
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F648:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	mov r3, #3
	bl ov49_02258E7C
	mov r0, #6
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F662:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #3
	bl ov49_02258E7C
	mov r0, #8
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F67C:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225F766
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _0225F9FA
_0225F692:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x10
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F6B2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A1F4
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
	b _0225F9FA
_0225F6E4:
	add r0, r5, #0
	mov r7, #0
	bl ov49_0225A1D4
	add r2, r0, #0
	beq _0225F704
	sub r0, r7, #2
	cmp r2, r0
	beq _0225F6FE
	add r0, r0, #1
	cmp r2, r0
	beq _0225F718
	b _0225F70C
_0225F6FE:
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
_0225F704:
	mov r0, #0
	strh r0, [r4, #0x28]
	mov r7, #1
	b _0225F718
_0225F70C:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x28]
	mov r7, #1
	bl ov49_0225A40C
_0225F718:
	cmp r7, #1
	bne _0225F766
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0225F74E
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A264
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _0225F9FA
_0225F74E:
	add r0, r6, #0
	mov r1, #0x11
	bl ov49_0225EF8C
	b _0225F9FA
_0225F758:
	add r0, r5, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _0225F768
	cmp r0, #1
	beq _0225F78E
_0225F766:
	b _0225F9FA
_0225F768:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	add r0, r5, #0
	bl ov49_0225A490
	ldr r0, _0225FA04 ; =0x000005E5
	bl PlaySE
	b _0225F9FA
_0225F78E:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #9
	bl ov49_0225EF8C
	b _0225F9FA
_0225F79E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A1F4
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	b _0225F9FA
_0225F7D0:
	add r0, r5, #0
	mov r7, #0
	bl ov49_0225A1D4
	add r2, r0, #0
	beq _0225F7F0
	sub r0, r7, #2
	cmp r2, r0
	beq _0225F7EA
	add r0, r0, #1
	cmp r2, r0
	beq _0225F804
	b _0225F7F8
_0225F7EA:
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
_0225F7F0:
	mov r0, #0
	strh r0, [r4, #0x2a]
	mov r7, #1
	b _0225F804
_0225F7F8:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x2a]
	mov r7, #1
	bl ov49_0225A40C
_0225F804:
	cmp r7, #1
	bne _0225F852
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0225F83A
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A264
	add r0, r6, #0
	mov r1, #0xf
	bl ov49_0225EF8C
	b _0225F9FA
_0225F83A:
	add r0, r6, #0
	mov r1, #0x13
	bl ov49_0225EF8C
	b _0225F9FA
_0225F844:
	add r0, r5, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _0225F854
	cmp r0, #1
	beq _0225F87A
_0225F852:
	b _0225F9FA
_0225F854:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0x14
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	add r0, r5, #0
	bl ov49_0225A490
	ldr r0, _0225FA04 ; =0x000005E5
	bl PlaySE
	b _0225F9FA
_0225F87A:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _0225F9FA
_0225F88A:
	ldr r0, _0225FA08 ; =0x000005BF
	bl PlaySE
	add r0, r5, #0
	bl ov49_0225A530
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrh r1, [r4, #2]
	add r0, r5, #0
	mov r2, #1
	bl ov49_0225A39C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222AB28
	cmp r0, #0
	bne _0225F8C2
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A30C
	b _0225F8CC
_0225F8C2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x7c
	bl ov49_0225A30C
_0225F8CC:
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x12
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F8E2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x16
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F902:
	ldr r0, _0225FA08 ; =0x000005BF
	bl IsSEPlaying
	cmp r0, #0
	bne _0225F9FA
	ldr r0, _0225FA0C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0225F9FA
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #9
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	b _0225F9FA
_0225F950:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A40C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F97A:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A40C
	ldrh r2, [r4, #0x2a]
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A40C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F9AE:
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225F9FA
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _0225F9FA
_0225F9C2:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02261540
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r5, #0
	bl ov49_0225A010
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FA10 ; =ov49_02269B38
	add r0, r4, #0
	mov r3, #0
	bl ov49_0225EF98
_0225F9FA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FA00: .word 0x000005DC
_0225FA04: .word 0x000005E5
_0225FA08: .word 0x000005BF
_0225FA0C: .word gSystem
_0225FA10: .word ov49_02269B38
	thumb_func_end ov49_0225F518

