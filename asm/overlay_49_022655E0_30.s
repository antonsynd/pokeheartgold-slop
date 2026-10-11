	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265CB0
	.public ov49_02265D10
	.public ov49_02265E54
	.public ov49_02266088
	.extern ov49_02265980
	.extern ov49_0226A70C
	.extern ov49_0226A730
	.extern ov49_0226A734
	.extern ov49_0226A738
	.extern ov49_0226A73C

    .text

	.text
	thumb_func_start ov49_02265CB0
ov49_02265CB0: ; 0x02265CB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r7, #0
	str r0, [sp]
	mov r4, #0
	add r5, #0xc
_02265CBE:
	add r3, r4, #3
	lsl r6, r3, #2
	ldr r3, _02265D08 ; =ov49_0226A70C
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl ov49_02259154
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #8]
	bl sub_020182A8
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02265CBE
	ldr r0, _02265D0C ; =0x00000954
	mov r1, #0xff
	str r1, [r7, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265D08: .word ov49_0226A70C
_02265D0C: .word 0x00000954
	thumb_func_end ov49_02265CB0

	thumb_func_start ov49_02265D10
ov49_02265D10: ; 0x02265D10
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02265E40 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _02265E44 ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02265E48 ; =0x00000958
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #3
	bhi _02265E20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265D80: ; jump table
	.short _02265D88 - _02265D80 - 2 ; case 0
	.short _02265DA8 - _02265D80 - 2 ; case 1
	.short _02265DCA - _02265D80 - 2 ; case 2
	.short _02265DF6 - _02265D80 - 2 ; case 3
_02265D88:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02265E4C ; =0x0000BFFF
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DA8:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02265E50 ; =0x00003FFF
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DCA:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DF6:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	sub r1, r1, #1
	mov r2, #1
	bl sub_020182E0
_02265E20:
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02265E40: .word ov49_0226A730
_02265E44: .word ov49_0226A73C
_02265E48: .word 0x00000958
_02265E4C: .word 0x0000BFFF
_02265E50: .word 0x00003FFF
	thumb_func_end ov49_02265D10

	thumb_func_start ov49_02265E54
ov49_02265E54: ; 0x02265E54
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02266058 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _0226605C ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266060 ; =ov49_0226A734
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02266064 ; =0x00000958
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #3
	bls _02265ECA
	b _02266046
_02265ECA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265ED6: ; jump table
	.short _02265EDE - _02265ED6 - 2 ; case 0
	.short _02265F32 - _02265ED6 - 2 ; case 1
	.short _02265F88 - _02265ED6 - 2 ; case 2
	.short _02265FE8 - _02265ED6 - 2 ; case 3
_02265EDE:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266068 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226606C ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	b _02266046
_02265F32:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266070 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266074 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	b _02266046
_02265F88:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266078 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226607C ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_020182A8
	b _02266046
_02265FE8:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266080 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266084 ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_020182A8
_02266046:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02266058: .word ov49_0226A730
_0226605C: .word ov49_0226A73C
_02266060: .word ov49_0226A734
_02266064: .word 0x00000958
_02266068: .word 0x0000A38D
_0226606C: .word 0x0000DC70
_02266070: .word 0x0000238E
_02266074: .word 0x00005C71
_02266078: .word 0x0000E38F
_0226607C: .word 0x00001C71
_02266080: .word 0x0000638D
_02266084: .word 0x00009C71
	thumb_func_end ov49_02265E54

	thumb_func_start ov49_02266088
ov49_02266088: ; 0x02266088
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02266314 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _02266318 ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _0226631C ; =ov49_0226A734
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	ldr r3, _02266320 ; =ov49_0226A738
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r1, _02266324 ; =0x00000958
	mov r2, #8
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #8
	str r2, [r4, r1]
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov49_02258E60
	cmp r0, #3
	bls _0226610E
	b _02266302
_0226610E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226611A: ; jump table
	.short _02266122 - _0226611A - 2 ; case 0
	.short _02266194 - _0226611A - 2 ; case 1
	.short _02266208 - _0226611A - 2 ; case 2
	.short _02266286 - _0226611A - 2 ; case 3
_02266122:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266328 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226632C ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _02266330 ; =0x0000BFFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266194:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266334 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266338 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226633C ; =0x00003FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266208:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266340 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266344 ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266286:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266348 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226634C ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _02266350 ; =0x00007FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
_02266302:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02266314: .word ov49_0226A730
_02266318: .word ov49_0226A73C
_0226631C: .word ov49_0226A734
_02266320: .word ov49_0226A738
_02266324: .word 0x00000958
_02266328: .word 0x0000A38D
_0226632C: .word 0x0000DC70
_02266330: .word 0x0000BFFF
_02266334: .word 0x0000238E
_02266338: .word 0x00005C71
_0226633C: .word 0x00003FFF
_02266340: .word 0x0000E38F
_02266344: .word 0x00001C71
_02266348: .word 0x0000638D
_0226634C: .word 0x00009C71
_02266350: .word 0x00007FFF
	thumb_func_end ov49_02266088

