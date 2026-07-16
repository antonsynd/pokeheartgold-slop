	.include "asm/macros.inc"
	.include "overlay_49_022649F4.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_022649F4
ov49_022649F4: ; 0x022649F4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov49_0225EF84
	add r0, r4, #0
	bl ov49_02259FE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02264A1E
	cmp r0, #1
	bne _02264A16
	b _02264B56
_02264A16:
	cmp r0, #2
	bne _02264A1C
	b _02264B6A
_02264A1C:
	b _02264B8A
_02264A1E:
	ldr r0, _02264B90 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	bl ov45_0222A330
	cmp r0, #0
	bne _02264A54
	add r0, r6, #0
	bl ov45_0222A374
	cmp r0, #1
	bne _02264A70
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02264B8A
_02264A54:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02264B8A
_02264A70:
	add r0, r6, #0
	bl ov45_0222B134
	cmp r0, #8
	bhi _02264B3A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264A86: ; jump table
	.short _02264A98 - _02264A86 - 2 ; case 0
	.short _02264AB0 - _02264A86 - 2 ; case 1
	.short _02264AC8 - _02264A86 - 2 ; case 2
	.short _02264AE0 - _02264A86 - 2 ; case 3
	.short _02264AF8 - _02264A86 - 2 ; case 4
	.short _02264B10 - _02264A86 - 2 ; case 5
	.short _02264B1E - _02264A86 - 2 ; case 6
	.short _02264B2C - _02264A86 - 2 ; case 7
	.short _02264B3A - _02264A86 - 2 ; case 8
_02264A98:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264AB0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264AC8:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x49
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264AE0:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264AF8:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4d
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264B10:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4a
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264B1E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4f
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264B2C:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4b
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264B46
_02264B3A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4c
	bl ov49_0225A30C
	add r1, r0, #0
_02264B46:
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02264B8A
_02264B56:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _02264B8A
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02264B8A
_02264B6A:
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02264B8A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02264B90: .word 0x000005DC
	thumb_func_end ov49_022649F4

	thumb_func_start ov49_02264B94
ov49_02264B94: ; 0x02264B94
	push {r3, lr}
	sub sp, #8
	bl ov45_0222A9C8
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #0x18
	bhi _02264BF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264BB4: ; jump table
	.short _02264BF2 - _02264BB4 - 2 ; case 0
	.short _02264BF2 - _02264BB4 - 2 ; case 1
	.short _02264BF2 - _02264BB4 - 2 ; case 2
	.short _02264BF2 - _02264BB4 - 2 ; case 3
	.short _02264BE6 - _02264BB4 - 2 ; case 4
	.short _02264BE6 - _02264BB4 - 2 ; case 5
	.short _02264BE6 - _02264BB4 - 2 ; case 6
	.short _02264BE6 - _02264BB4 - 2 ; case 7
	.short _02264BE6 - _02264BB4 - 2 ; case 8
	.short _02264BE6 - _02264BB4 - 2 ; case 9
	.short _02264BE6 - _02264BB4 - 2 ; case 10
	.short _02264BEC - _02264BB4 - 2 ; case 11
	.short _02264BEC - _02264BB4 - 2 ; case 12
	.short _02264BEC - _02264BB4 - 2 ; case 13
	.short _02264BEC - _02264BB4 - 2 ; case 14
	.short _02264BEC - _02264BB4 - 2 ; case 15
	.short _02264BEC - _02264BB4 - 2 ; case 16
	.short _02264BEC - _02264BB4 - 2 ; case 17
	.short _02264BEC - _02264BB4 - 2 ; case 18
	.short _02264BF2 - _02264BB4 - 2 ; case 19
	.short _02264BF2 - _02264BB4 - 2 ; case 20
	.short _02264BF2 - _02264BB4 - 2 ; case 21
	.short _02264BF2 - _02264BB4 - 2 ; case 22
	.short _02264BF2 - _02264BB4 - 2 ; case 23
	.short _02264BF2 - _02264BB4 - 2 ; case 24
_02264BE6:
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_02264BEC:
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02264BF2:
	add sp, #8
	mov r0, #2
	pop {r3, pc}
_02264BF8:
	bl GF_AssertFail
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02264B94

	thumb_func_start ov49_02264C04
ov49_02264C04: ; 0x02264C04
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl ov49_02259FE8
	add r1, r6, #0
	bl ov45_0222AB28
	cmp r0, #1
	bne _02264C36
	ldr r3, _02264C44 ; =ov49_02269EC4
	ldr r0, _02264C48 ; =0x00000163
	mov r2, #0
_02264C20:
	ldrh r1, [r3]
	cmp r4, r1
	bne _02264C2E
	ldr r0, _02264C4C ; =ov49_02269EC6
	lsl r1, r2, #2
	ldrh r4, [r0, r1]
	b _02264C36
_02264C2E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r0
	blo _02264C20
_02264C36:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov49_0225A30C
	pop {r4, r5, r6, pc}
	nop
_02264C44: .word ov49_02269EC4
_02264C48: .word 0x00000163
_02264C4C: .word ov49_02269EC6
	thumb_func_end ov49_02264C04

	thumb_func_start ov49_02264C50
ov49_02264C50: ; 0x02264C50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	bl ov49_02259FE8
	add r7, r0, #0
	add r1, r5, #0
	bl ov45_0222AB28
	add r5, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov45_0222AB28
	mov r2, #0x29
	cmp r5, #1
	bne _02264C7C
	cmp r0, #1
	bne _02264C7C
	ldr r2, _02264C9C ; =0x000002AA
	b _02264C92
_02264C7C:
	cmp r5, #1
	bne _02264C88
	cmp r0, #0
	bne _02264C88
	ldr r2, _02264CA0 ; =0x00000226
	b _02264C92
_02264C88:
	cmp r5, #0
	bne _02264C92
	cmp r0, #1
	bne _02264C92
	ldr r2, _02264CA4 ; =0x000002A9
_02264C92:
	add r0, r4, #0
	mov r1, #3
	bl ov49_0225A30C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02264C9C: .word 0x000002AA
_02264CA0: .word 0x00000226
_02264CA4: .word 0x000002A9
	thumb_func_end ov49_02264C50

	thumb_func_start ov49_02264CA8
ov49_02264CA8: ; 0x02264CA8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r6, r2, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r6, r0
	bne _02264CBC
	bl GF_AssertFail
_02264CBC:
	strb r6, [r5, #3]
	add r0, r4, #0
	bl ov45_0222A53C
	strh r0, [r5, #8]
	mov r0, #1
	strh r0, [r5, #0xa]
	add r0, r4, #0
	bl ov45_0222A5C0
	add r6, r0, #0
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl ov45_0222A578
	add r4, r0, #0
	bne _02264CE2
	mov r0, #0
	pop {r4, r5, r6, pc}
_02264CE2:
	add r0, r6, #0
	bl ov49_02264B94
	strb r0, [r5, #4]
	add r0, r4, #0
	bl ov49_02264B94
	strb r0, [r5, #5]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_02264CA8

	thumb_func_start ov49_02264CF8
ov49_02264CF8: ; 0x02264CF8
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02264CF8

	thumb_func_start ov49_02264CFC
ov49_02264CFC: ; 0x02264CFC
	strb r1, [r0, #6]
	ldr r1, _02264D0C ; =0xFFFFFFF0
	strb r2, [r0, #7]
	add r0, r3, #0
	add r1, sp
	ldr r3, _02264D10 ; =ov49_0225EF8C
	ldrb r1, [r1, #0x10]
	bx r3
	.balign 4, 0
_02264D0C: .word 0xFFFFFFF0
_02264D10: .word ov49_0225EF8C
	thumb_func_end ov49_02264CFC

	thumb_func_start ov49_02264D14
ov49_02264D14: ; 0x02264D14
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _02264D24
	sub r0, r0, #1
	strb r0, [r2, #6]
	pop {r3, pc}
_02264D24:
	add r0, r1, #0
	ldrb r1, [r2, #7]
	bl ov49_0225EF8C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02264D14

	thumb_func_start ov49_02264D30
ov49_02264D30: ; 0x02264D30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _02264D48
	ldrb r1, [r5, #7]
	add r0, r4, #0
	bl ov49_0225EF8C
_02264D48:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_02264D30

	thumb_func_start ov49_02264D4C
ov49_02264D4C: ; 0x02264D4C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov49_02264D9C
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov49_02264D9C
	ldr r0, [sp, #0x10]
	bl ov45_0222AA10
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ov45_0222AA10
	add r3, r0, #0
	ldr r2, _02264D98 ; =ov49_02269E44
	lsl r4, r4, #4
	lsl r3, r3, #1
	add r2, r2, r4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	pop {r3, r4, r5, pc}
	nop
_02264D98: .word ov49_02269E44
	thumb_func_end ov49_02264D4C

	thumb_func_start ov49_02264D9C
ov49_02264D9C: ; 0x02264D9C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov45_0222AA10
	cmp r0, #7
	bhi _02264E12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264DBA: ; jump table
	.short _02264E12 - _02264DBA - 2 ; case 0
	.short _02264DCA - _02264DBA - 2 ; case 1
	.short _02264DD6 - _02264DBA - 2 ; case 2
	.short _02264DE2 - _02264DBA - 2 ; case 3
	.short _02264DEE - _02264DBA - 2 ; case 4
	.short _02264DFA - _02264DBA - 2 ; case 5
	.short _02264E12 - _02264DBA - 2 ; case 6
	.short _02264E06 - _02264DBA - 2 ; case 7
_02264DCA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3AC
	pop {r4, r5, r6, pc}
_02264DD6:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3BC
	pop {r4, r5, r6, pc}
_02264DE2:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3CC
	pop {r4, r5, r6, pc}
_02264DEE:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3DC
	pop {r4, r5, r6, pc}
_02264DFA:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3EC
	pop {r4, r5, r6, pc}
_02264E06:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3FC
	pop {r4, r5, r6, pc}
_02264E12:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225A3BC
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_02264D9C

	thumb_func_start ov49_02264E20
ov49_02264E20: ; 0x02264E20
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov45_0222A5C0
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r6, #0
	bl ov45_0222A578
	add r6, r0, #0
	ldr r0, [sp]
	bl ov45_0222AA28
	cmp r0, #0
	bne _02264E48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264E48:
	add r0, r6, #0
	bl ov45_0222AA28
	cmp r0, #0
	bne _02264E56
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264E56:
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #4]
	cmp r0, r1
	beq _02264E8C
	cmp r1, #0
	beq _02264E6C
	cmp r1, #1
	beq _02264E70
	cmp r1, #2
	beq _02264E74
	b _02264E76
_02264E6C:
	mov r4, #0x27
	b _02264E76
_02264E70:
	mov r4, #0x25
	b _02264E76
_02264E74:
	mov r4, #0x26
_02264E76:
	add r0, r7, #0
	mov r1, #3
	add r2, r4, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r7, #0
	bl ov49_0225A08C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264E8C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02264E20

	thumb_func_start ov49_02264E90
ov49_02264E90: ; 0x02264E90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov45_0222A5C0
	str r0, [sp]
	ldrb r1, [r5, #3]
	add r0, r4, #0
	bl ov45_0222A578
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _02264EB6
	bl ov45_0222AAC8
	b _02264EBC
_02264EB6:
	ldr r0, [sp]
	bl ov45_0222AAC8
_02264EBC:
	add r1, r0, #0
	add r0, r6, #0
	add r2, r7, #0
	bl ov49_0225A39C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02264E90

	thumb_func_start ov49_02264EC8
ov49_02264EC8: ; 0x02264EC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	bl ov45_0222B094
	ldr r1, _02264F0C ; =0x000001C2
	cmp r0, r1
	bne _02264F08
	add r0, r4, #0
	bl ov49_0225A0CC
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A334
	mov r2, #0xab
	ldrb r1, [r5, #3]
	add r0, r4, #0
	lsl r2, r2, #2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r4, #0
	bl ov49_0225A0BC
_02264F08:
	pop {r3, r4, r5, pc}
	nop
_02264F0C: .word 0x000001C2
	thumb_func_end ov49_02264EC8

	thumb_func_start ov49_02264F10
ov49_02264F10: ; 0x02264F10
	mov r1, #0
	strh r1, [r0, #0xe]
	mov r1, #1
	strb r1, [r0, #0xd]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02264F10

	thumb_func_start ov49_02264F1C
ov49_02264F1C: ; 0x02264F1C
	mov r1, #0
	strh r1, [r0, #0xe]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end ov49_02264F1C

	thumb_func_start ov49_02264F24
ov49_02264F24: ; 0x02264F24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xd]
	add r4, r1, #0
	cmp r0, #1
	bne _02264F56
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	ldr r0, _02264F58 ; =0x000001C2
	cmp r1, r0
	bne _02264F56
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r5, #3]
	ldr r2, _02264F5C ; =0x000002AB
	add r0, r4, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
_02264F56:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02264F58: .word 0x000001C2
_02264F5C: .word 0x000002AB
	thumb_func_end ov49_02264F24

	thumb_func_start ov49_02264F60
ov49_02264F60: ; 0x02264F60
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _02264F76
	mov r1, #0xe
	ldrsh r2, [r0, r1]
	mov r1, #0xe1
	lsl r1, r1, #2
	cmp r2, r1
	bgt _02264F76
	add r1, r2, #1
	strh r1, [r0, #0xe]
_02264F76:
	bx lr
	thumb_func_end ov49_02264F60

	thumb_func_start ov49_02264F78
ov49_02264F78: ; 0x02264F78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov45_0222A9A4
	add r1, r5, #0
	mov r2, #1
	add r1, #0x44
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r4, #0
	bl ov45_0222A99C
	str r0, [r5, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02264F78

	thumb_func_start ov49_02264F9C
ov49_02264F9C: ; 0x02264F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl ov49_0225A10C
	ldr r0, [sp]
	mov r4, #0
	str r7, [r0, #0x20]
	cmp r7, #0
	bls _02265006
	sub r0, r7, #1
	str r0, [sp, #8]
_02264FC0:
	cmp r6, #0
	beq _02264FEA
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02264FEA
	cmp r6, #1
	bne _02264FDC
	ldr r2, _0226503C ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264FF8
_02264FDC:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264FF8
_02264FEA:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r4
	bl ov49_0225A30C
	add r1, r0, #0
_02264FF8:
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, r7
	blo _02264FC0
_02265006:
	ldr r3, _02265040 ; =ov49_02269E24
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _0226502C
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_0226502C:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226503C: .word 0x00000205
_02265040: .word ov49_02269E24
	thumb_func_end ov49_02264F9C

	thumb_func_start ov49_02265044
ov49_02265044: ; 0x02265044
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r3, [sp, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r3, #0
	add r4, r2, #0
	bl ov49_0225A120
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	str r1, [r0, #0x20]
	add r0, r1, #0
	beq _022650D4
	sub r0, r0, #1
	str r0, [sp, #8]
_02265070:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022650A0
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _022650A0
	ldr r0, [sp, #0x24]
	add r6, r4, #0
	cmp r0, #1
	bne _02265092
	ldr r2, _02265108 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	b _022650C4
_02265092:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov49_0225A30C
	add r1, r0, #0
	b _022650C4
_022650A0:
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	add r0, r5, #0
	add r6, r1, #0
	bl ov49_0225A164
	cmp r0, #1
	beq _022650A0
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r6
	bl ov49_0225A30C
	add r1, r0, #0
_022650C4:
	add r0, r5, #0
	add r2, r6, #0
	bl ov49_0225A144
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blo _02265070
_022650D4:
	ldr r3, _0226510C ; =ov49_02269E24
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _022650FA
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_022650FA:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02265108: .word 0x00000205
_0226510C: .word ov49_02269E24
	thumb_func_end ov49_02265044

	thumb_func_start ov49_02265110
ov49_02265110: ; 0x02265110
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225A10C
	mov r0, #8
	ldr r5, _02265168 ; =ov49_02269E1C
	str r0, [r7, #0x20]
	mov r4, #0
_02265126:
	ldrb r2, [r5]
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _02265126
	ldr r3, _0226516C ; =ov49_02269E24
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	add r0, r6, #0
	bl ov49_0225A154
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265168: .word ov49_02269E1C
_0226516C: .word ov49_02269E24
	thumb_func_end ov49_02265110

	thumb_func_start ov49_02265170
ov49_02265170: ; 0x02265170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225A10C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_02265186:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_0225A38C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x27
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #3
	blt _02265186
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov49_0225A144
	ldr r3, _022651E4 ; =ov49_02269E24
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov49_0225A154
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022651E4: .word ov49_02269E24
	thumb_func_end ov49_02265170

	thumb_func_start ov49_022651E8
ov49_022651E8: ; 0x022651E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225A10C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_022651FE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_0225A37C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x26
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #3
	blt _022651FE
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov49_0225A144
	ldr r3, _0226525C ; =ov49_02269E24
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov49_0225A154
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226525C: .word ov49_02269E24
	thumb_func_end ov49_022651E8

	thumb_func_start ov49_02265260
ov49_02265260: ; 0x02265260
	ldr r3, _02265268 ; =ov49_0225A134
	add r0, r1, #0
	bx r3
	nop
_02265268: .word ov49_0225A134
	thumb_func_end ov49_02265260

	thumb_func_start ov49_0226526C
ov49_0226526C: ; 0x0226526C
	mov r1, #0
	strh r1, [r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0226526C

	thumb_func_start ov49_02265274
ov49_02265274: ; 0x02265274
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _02265288
	bl GF_AssertFail
_02265288:
	mov r0, #1
	strh r0, [r5]
	strh r4, [r5, #2]
	add r0, r7, #0
	strh r6, [r5, #4]
	bl ov45_0222B034
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02265274

	thumb_func_start ov49_0226529C
ov49_0226529C: ; 0x0226529C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _022652CE
	add r0, r4, #0
	bl ov45_0222B034
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bne _022652C4
	ldrh r1, [r5, #2]
	add r0, r4, #0
	bl ov45_0222AED8
	mov r0, #0
	strh r0, [r5]
	pop {r3, r4, r5, pc}
_022652C4:
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _022652CE
	mov r0, #0
	strh r0, [r5]
_022652CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0226529C

	thumb_func_start ov49_022652D0
ov49_022652D0: ; 0x022652D0
	ldrh r0, [r0]
	cmp r0, #1
	beq _022652DA
	mov r0, #1
	bx lr
_022652DA:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_022652D0

	thumb_func_start ov49_022652E0
ov49_022652E0: ; 0x022652E0
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end ov49_022652E0

	thumb_func_start ov49_022652E8
ov49_022652E8: ; 0x022652E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, _02265354 ; =0x0001082C
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x24]
	bl Heap_Alloc
	ldr r2, _02265354 ; =0x0001082C
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, [sp, #4]
	str r6, [r4]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	str r0, [r4, #8]
	mov r0, #0xd1
	str r7, [r4, #0xc]
	bl NARC_New
	add r6, r0, #0
	ldr r0, _02265358 ; =0x0001081C
	add r1, r5, #0
	add r0, r4, r0
	mov r2, #4
	bl HeapExp_FndInitAllocator
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_02265698
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_02265738
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_022657B4
	add r0, r6, #0
	bl NARC_Delete
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265354: .word 0x0001082C
_02265358: .word 0x0001081C
	thumb_func_end ov49_022652E8

	thumb_func_start ov49_0226535C
ov49_0226535C: ; 0x0226535C
	push {r4, lr}
	add r4, r0, #0
	bl ov49_0226571C
	add r0, r4, #0
	bl ov49_02265760
	add r0, r4, #0
	bl ov49_02265858
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov49_0226535C

	thumb_func_start ov49_02265378
ov49_02265378: ; 0x02265378
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_02265386:
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_022658E4
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _02265386
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02265378

	thumb_func_start ov49_02265398
ov49_02265398: ; 0x02265398
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	bl ov49_02258DAC
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_022653AC:
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_02265920
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _022653AC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02265398

	thumb_func_start ov49_022653C0
ov49_022653C0: ; 0x022653C0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _022653D0
	bl GF_AssertFail
_022653D0:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov49_02258D70
	add r2, r0, #0
	beq _022653EE
	mov r1, #0xd1
	lsl r1, r1, #4
	add r0, r5, #0
	add r5, #0x10
	mul r1, r4
	add r1, r5, r1
	add r3, r6, #0
	bl ov49_02265890
_022653EE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_022653C0

	thumb_func_start ov49_022653F0
ov49_022653F0: ; 0x022653F0
	push {r3, lr}
	mov r2, #0xd1
	lsl r2, r2, #4
	add r0, #0x10
	mul r2, r1
	add r0, r0, r2
	bl ov49_02265958
	cmp r0, #1
	beq _02265408
	mov r0, #1
	pop {r3, pc}
_02265408:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov49_022653F0

	thumb_func_start ov49_0226540C
ov49_0226540C: ; 0x0226540C
	push {r3, r4}
	ldr r4, [sp, #0x14]
	sub r2, r2, r1
	str r4, [r0]
	str r1, [r0, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r3, [r0, #8]
	sub r1, r1, r3
	str r1, [r0, #0x18]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x1c]
	str r2, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end ov49_0226540C

	thumb_func_start ov49_02265434
ov49_02265434: ; 0x02265434
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	mov r7, #0
	cmp r4, r0
	ble _02265448
	add r4, r0, #0
	mov r7, #1
_02265448:
	ldr r6, [r5, #0x10]
	cmp r6, #0
	beq _022654CC
	cmp r0, #0
	ble _02265466
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	str r0, [sp, #8]
	b _02265476
_02265466:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
	str r0, [sp, #8]
_02265476:
	cmp r4, #0
	ble _0226548C
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226549A
_0226548C:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226549A:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #8]
	bl _ffix
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #4]
_022654CC:
	ldr r6, [r5, #0x18]
	cmp r6, #0
	beq _02265552
	ldr r0, [r5]
	cmp r0, #0
	ble _022654EC
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	str r0, [sp, #4]
	b _022654FC
_022654EC:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
	str r0, [sp, #4]
_022654FC:
	cmp r4, #0
	ble _02265512
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02265520
_02265512:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02265520:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #4]
	bl _ffix
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #0x1c]
	add r0, r1, r0
	str r0, [r5, #8]
_02265552:
	ldr r6, [r5, #0x20]
	cmp r6, #0
	beq _022655D8
	ldr r0, [r5]
	cmp r0, #0
	ble _02265572
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	str r0, [sp]
	b _02265582
_02265572:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
	str r0, [sp]
_02265582:
	cmp r4, #0
	ble _02265598
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022655A6
_02265598:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022655A6:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [sp]
	bl _ffix
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	ldr r1, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #0xc]
_022655D8:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02265434


    .rodata

ov49_02269E1C: ; 0x02269E1C
	.byte 0x1F, 0x20, 0x21, 0x22
	.byte 0x23, 0x28, 0x24, 0x25

ov49_02269E24: ; 0x02269E24
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov49_02269E44: ; 0x02269E44
	.byte 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00
	.byte 0x1F, 0x00, 0x1F, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x03, 0x00, 0x05, 0x00, 0x07, 0x00
	.byte 0x01, 0x00, 0x09, 0x00, 0x20, 0x00, 0x02, 0x00, 0x20, 0x00, 0x0B, 0x00, 0x0D, 0x00, 0x0F, 0x00
	.byte 0x20, 0x00, 0x11, 0x00, 0x0C, 0x00, 0x04, 0x00, 0x0C, 0x00, 0x21, 0x00, 0x13, 0x00, 0x15, 0x00
	.byte 0x0C, 0x00, 0x17, 0x00, 0x0E, 0x00, 0x06, 0x00, 0x0E, 0x00, 0x14, 0x00, 0x22, 0x00, 0x19, 0x00
	.byte 0x0E, 0x00, 0x1B, 0x00, 0x10, 0x00, 0x08, 0x00, 0x10, 0x00, 0x16, 0x00, 0x1A, 0x00, 0x23, 0x00
	.byte 0x10, 0x00, 0x1D, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00, 0x1F, 0x00
	.byte 0x1F, 0x00, 0x1F, 0x00, 0x12, 0x00, 0x0A, 0x00, 0x12, 0x00, 0x18, 0x00, 0x1C, 0x00, 0x1E, 0x00
	.byte 0x12, 0x00, 0x24, 0x00

ov49_02269EC4: ; 0x02269EC4
	.byte 0x28, 0x00

ov49_02269EC6: ; 0x02269EC6
	.byte 0x25, 0x02, 0x29, 0x00, 0x26, 0x02, 0x2B, 0x00, 0x27, 0x02
	.byte 0x2C, 0x00, 0x28, 0x02, 0x2E, 0x00, 0x2A, 0x02, 0x2F, 0x00, 0x2B, 0x02, 0x30, 0x00, 0x2C, 0x02
	.byte 0x31, 0x00, 0x2D, 0x02, 0x32, 0x00, 0x2E, 0x02, 0x33, 0x00, 0x2F, 0x02, 0x34, 0x00, 0x30, 0x02
	.byte 0x35, 0x00, 0x31, 0x02, 0x36, 0x00, 0x32, 0x02, 0x37, 0x00, 0x33, 0x02, 0x38, 0x00, 0x34, 0x02
	.byte 0x39, 0x00, 0x35, 0x02, 0x3A, 0x00, 0x36, 0x02, 0x3B, 0x00, 0x37, 0x02, 0x3C, 0x00, 0x38, 0x02
	.byte 0x3D, 0x00, 0x39, 0x02, 0x3E, 0x00, 0x3A, 0x02, 0x3F, 0x00, 0x3B, 0x02, 0x40, 0x00, 0x3C, 0x02
	.byte 0x55, 0x00, 0x3D, 0x02, 0x56, 0x00, 0x3E, 0x02, 0x57, 0x00, 0x3F, 0x02, 0x58, 0x00, 0x40, 0x02
	.byte 0x59, 0x00, 0x41, 0x02, 0x5A, 0x00, 0x42, 0x02, 0x5B, 0x00, 0x43, 0x02, 0x5C, 0x00, 0x44, 0x02
	.byte 0x5D, 0x00, 0x45, 0x02, 0x5E, 0x00, 0x46, 0x02, 0xEC, 0x00, 0x47, 0x02, 0xED, 0x00, 0x48, 0x02
	.byte 0xEE, 0x00, 0x49, 0x02, 0xEF, 0x00, 0x4A, 0x02, 0xF0, 0x00, 0x4B, 0x02, 0xF1, 0x00, 0x4C, 0x02
	.byte 0xF2, 0x00, 0x4D, 0x02, 0xF3, 0x00, 0x4E, 0x02, 0xF4, 0x00, 0x4F, 0x02, 0xF5, 0x00, 0x50, 0x02
	.byte 0xF6, 0x00, 0x51, 0x02, 0xF7, 0x00, 0x52, 0x02, 0xF8, 0x00, 0x53, 0x02, 0xF9, 0x00, 0x54, 0x02
	.byte 0xFA, 0x00, 0x55, 0x02, 0xFB, 0x00, 0x56, 0x02, 0xFC, 0x00, 0x57, 0x02, 0xFD, 0x00, 0x58, 0x02
	.byte 0xFE, 0x00, 0x59, 0x02, 0xFF, 0x00, 0x5A, 0x02, 0x00, 0x01, 0x5B, 0x02, 0x01, 0x01, 0x5C, 0x02
	.byte 0x02, 0x01, 0x5D, 0x02, 0x03, 0x01, 0x5E, 0x02, 0x04, 0x01, 0x5F, 0x02, 0x05, 0x01, 0x60, 0x02
	.byte 0x06, 0x01, 0x61, 0x02, 0x07, 0x01, 0x62, 0x02, 0x08, 0x01, 0x63, 0x02, 0x09, 0x01, 0x64, 0x02
	.byte 0x0A, 0x01, 0x65, 0x02, 0x0B, 0x01, 0x66, 0x02, 0x0C, 0x01, 0x67, 0x02, 0x0D, 0x01, 0x68, 0x02
	.byte 0x0E, 0x01, 0x69, 0x02, 0x0F, 0x01, 0x6A, 0x02, 0x10, 0x01, 0x6B, 0x02, 0x11, 0x01, 0x6C, 0x02
	.byte 0x12, 0x01, 0x6D, 0x02, 0x13, 0x01, 0x6E, 0x02, 0x64, 0x01, 0x6F, 0x02, 0x65, 0x01, 0x70, 0x02
	.byte 0x66, 0x01, 0x71, 0x02, 0x67, 0x01, 0x72, 0x02, 0x68, 0x01, 0x73, 0x02, 0x69, 0x01, 0x74, 0x02
	.byte 0x6A, 0x01, 0x75, 0x02, 0x6B, 0x01, 0x76, 0x02, 0x6C, 0x01, 0x77, 0x02, 0x6D, 0x01, 0x78, 0x02
	.byte 0x6E, 0x01, 0x79, 0x02, 0x6F, 0x01, 0x7A, 0x02, 0x70, 0x01, 0x7B, 0x02, 0x71, 0x01, 0x7C, 0x02
	.byte 0x72, 0x01, 0x7D, 0x02, 0x73, 0x01, 0x7E, 0x02, 0x74, 0x01, 0x7F, 0x02, 0x75, 0x01, 0x80, 0x02
	.byte 0x76, 0x01, 0x81, 0x02, 0x77, 0x01, 0x82, 0x02, 0x78, 0x01, 0x83, 0x02, 0x79, 0x01, 0x84, 0x02
	.byte 0x7A, 0x01, 0x85, 0x02, 0x7B, 0x01, 0x86, 0x02, 0x7C, 0x01, 0x87, 0x02, 0x7D, 0x01, 0x88, 0x02
	.byte 0x7E, 0x01, 0x89, 0x02, 0x7F, 0x01, 0x8A, 0x02, 0x80, 0x01, 0x8B, 0x02, 0x81, 0x01, 0x8C, 0x02
	.byte 0x82, 0x01, 0x8D, 0x02, 0x83, 0x01, 0x8E, 0x02, 0x84, 0x01, 0x8F, 0x02, 0x85, 0x01, 0x90, 0x02
	.byte 0x86, 0x01, 0x91, 0x02, 0x87, 0x01, 0x92, 0x02, 0x88, 0x01, 0x93, 0x02, 0x89, 0x01, 0x94, 0x02
	.byte 0x8A, 0x01, 0x95, 0x02, 0x8B, 0x01, 0x96, 0x02, 0x8C, 0x01, 0x97, 0x02, 0xDD, 0x01, 0x98, 0x02
	.byte 0xDE, 0x01, 0x99, 0x02, 0xDF, 0x01, 0x9A, 0x02, 0xE0, 0x01, 0x9B, 0x02, 0xE1, 0x01, 0x9C, 0x02
	.byte 0xE2, 0x01, 0x9D, 0x02, 0xE3, 0x01, 0x9E, 0x02, 0xE4, 0x01, 0x9F, 0x02, 0xE5, 0x01, 0xA0, 0x02
	.byte 0xE6, 0x01, 0xA1, 0x02, 0xFB, 0x01, 0xA2, 0x02, 0xFC, 0x01, 0xA3, 0x02, 0xFD, 0x01, 0xA4, 0x02
	.byte 0xFE, 0x01, 0xA5, 0x02, 0xFF, 0x01, 0xA6, 0x02, 0x00, 0x02, 0xA7, 0x02, 0x01, 0x02, 0x8D, 0x03
	.byte 0x02, 0x02, 0xA8, 0x02, 0xAB, 0x02, 0xAD, 0x02, 0xAC, 0x02, 0xAE, 0x02, 0xAF, 0x02, 0xB0, 0x02
	.byte 0x41, 0x00, 0xB1, 0x02, 0x42, 0x00, 0xB2, 0x02, 0x43, 0x00, 0xB3, 0x02, 0x44, 0x00, 0xB4, 0x02
	.byte 0x45, 0x00, 0xB5, 0x02, 0x46, 0x00, 0xB6, 0x02, 0x47, 0x00, 0xB7, 0x02, 0x48, 0x00, 0xB8, 0x02
	.byte 0x49, 0x00, 0xB9, 0x02, 0x4A, 0x00, 0xBA, 0x02, 0x4B, 0x00, 0xBB, 0x02, 0x4C, 0x00, 0xBC, 0x02
	.byte 0x4D, 0x00, 0xBD, 0x02, 0x4E, 0x00, 0xBE, 0x02, 0x4F, 0x00, 0xBF, 0x02, 0x50, 0x00, 0xC0, 0x02
	.byte 0x51, 0x00, 0xC1, 0x02, 0x52, 0x00, 0xC2, 0x02, 0x53, 0x00, 0xC3, 0x02, 0x54, 0x00, 0xC4, 0x02
	.byte 0x5F, 0x00, 0xC5, 0x02, 0x60, 0x00, 0xC6, 0x02, 0x61, 0x00, 0xC7, 0x02, 0x62, 0x00, 0xC8, 0x02
	.byte 0x63, 0x00, 0xC9, 0x02, 0x64, 0x00, 0xCA, 0x02, 0x65, 0x00, 0xCB, 0x02, 0x66, 0x00, 0xCC, 0x02
	.byte 0x67, 0x00, 0xCD, 0x02, 0x68, 0x00, 0xCE, 0x02, 0x69, 0x00, 0xCF, 0x02, 0x6A, 0x00, 0xD0, 0x02
	.byte 0x6B, 0x00, 0xD1, 0x02, 0x6C, 0x00, 0xD2, 0x02, 0x6D, 0x00, 0xD3, 0x02, 0x6E, 0x00, 0xD4, 0x02
	.byte 0x6F, 0x00, 0xD5, 0x02, 0x70, 0x00, 0xD6, 0x02, 0x71, 0x00, 0xD7, 0x02, 0x72, 0x00, 0xD8, 0x02
	.byte 0x14, 0x01, 0xD9, 0x02, 0x15, 0x01, 0xDA, 0x02, 0x16, 0x01, 0xDB, 0x02, 0x17, 0x01, 0xDC, 0x02
	.byte 0x18, 0x01, 0xDD, 0x02, 0x19, 0x01, 0xDE, 0x02, 0x1A, 0x01, 0xDF, 0x02, 0x1B, 0x01, 0xE0, 0x02
	.byte 0x1C, 0x01, 0xE1, 0x02, 0x1D, 0x01, 0xE2, 0x02, 0x1E, 0x01, 0xE3, 0x02, 0x1F, 0x01, 0xE4, 0x02
	.byte 0x20, 0x01, 0xE5, 0x02, 0x21, 0x01, 0xE6, 0x02, 0x22, 0x01, 0xE7, 0x02, 0x23, 0x01, 0xE8, 0x02
	.byte 0x24, 0x01, 0xE9, 0x02, 0x25, 0x01, 0xEA, 0x02, 0x26, 0x01, 0xEB, 0x02, 0x27, 0x01, 0xEC, 0x02
	.byte 0x28, 0x01, 0xED, 0x02, 0x29, 0x01, 0xEE, 0x02, 0x2A, 0x01, 0xEF, 0x02, 0x2B, 0x01, 0xF0, 0x02
	.byte 0x2C, 0x01, 0xF1, 0x02, 0x2D, 0x01, 0xF2, 0x02, 0x2E, 0x01, 0xF3, 0x02, 0x2F, 0x01, 0xF4, 0x02
	.byte 0x30, 0x01, 0xF5, 0x02, 0x31, 0x01, 0xF6, 0x02, 0x32, 0x01, 0xF7, 0x02, 0x33, 0x01, 0xF8, 0x02
	.byte 0x34, 0x01, 0xF9, 0x02, 0x35, 0x01, 0xFA, 0x02, 0x36, 0x01, 0xFB, 0x02, 0x37, 0x01, 0xFC, 0x02
	.byte 0x38, 0x01, 0xFD, 0x02, 0x39, 0x01, 0xFE, 0x02, 0x3A, 0x01, 0xFF, 0x02, 0x3B, 0x01, 0x00, 0x03
	.byte 0x3C, 0x01, 0x01, 0x03, 0x3D, 0x01, 0x02, 0x03, 0x3E, 0x01, 0x03, 0x03, 0x3F, 0x01, 0x04, 0x03
	.byte 0x40, 0x01, 0x05, 0x03, 0x41, 0x01, 0x06, 0x03, 0x42, 0x01, 0x07, 0x03, 0x43, 0x01, 0x08, 0x03
	.byte 0x44, 0x01, 0x09, 0x03, 0x45, 0x01, 0x0A, 0x03, 0x46, 0x01, 0x0B, 0x03, 0x47, 0x01, 0x0C, 0x03
	.byte 0x48, 0x01, 0x0D, 0x03, 0x49, 0x01, 0x0E, 0x03, 0x4A, 0x01, 0x0F, 0x03, 0x4B, 0x01, 0x10, 0x03
	.byte 0x4C, 0x01, 0x11, 0x03, 0x4D, 0x01, 0x12, 0x03, 0x4E, 0x01, 0x13, 0x03, 0x4F, 0x01, 0x14, 0x03
	.byte 0x50, 0x01, 0x15, 0x03, 0x51, 0x01, 0x16, 0x03, 0x52, 0x01, 0x17, 0x03, 0x53, 0x01, 0x18, 0x03
	.byte 0x54, 0x01, 0x19, 0x03, 0x55, 0x01, 0x1A, 0x03, 0x56, 0x01, 0x1B, 0x03, 0x57, 0x01, 0x1C, 0x03
	.byte 0x58, 0x01, 0x1D, 0x03, 0x59, 0x01, 0x1E, 0x03, 0x5A, 0x01, 0x1F, 0x03, 0x5B, 0x01, 0x20, 0x03
	.byte 0x5C, 0x01, 0x21, 0x03, 0x5D, 0x01, 0x22, 0x03, 0x5E, 0x01, 0x23, 0x03, 0x5F, 0x01, 0x24, 0x03
	.byte 0x60, 0x01, 0x25, 0x03, 0x61, 0x01, 0x26, 0x03, 0x62, 0x01, 0x27, 0x03, 0x63, 0x01, 0x28, 0x03
	.byte 0x8D, 0x01, 0x29, 0x03, 0x8E, 0x01, 0x2A, 0x03, 0x8F, 0x01, 0x2B, 0x03, 0x90, 0x01, 0x2C, 0x03
	.byte 0x91, 0x01, 0x2D, 0x03, 0x92, 0x01, 0x2E, 0x03, 0x93, 0x01, 0x2F, 0x03, 0x94, 0x01, 0x30, 0x03
	.byte 0x95, 0x01, 0x31, 0x03, 0x96, 0x01, 0x32, 0x03, 0x97, 0x01, 0x33, 0x03, 0x98, 0x01, 0x34, 0x03
	.byte 0x99, 0x01, 0x35, 0x03, 0x9A, 0x01, 0x36, 0x03, 0x9B, 0x01, 0x37, 0x03, 0x9C, 0x01, 0x38, 0x03
	.byte 0x9D, 0x01, 0x39, 0x03, 0x9E, 0x01, 0x3A, 0x03, 0x9F, 0x01, 0x3B, 0x03, 0xA0, 0x01, 0x3C, 0x03
	.byte 0xA1, 0x01, 0x3D, 0x03, 0xA2, 0x01, 0x3E, 0x03, 0xA3, 0x01, 0x3F, 0x03, 0xA4, 0x01, 0x40, 0x03
	.byte 0xA5, 0x01, 0x41, 0x03, 0xA6, 0x01, 0x42, 0x03, 0xA7, 0x01, 0x43, 0x03, 0xA8, 0x01, 0x44, 0x03
	.byte 0xA9, 0x01, 0x45, 0x03, 0xAA, 0x01, 0x46, 0x03, 0xAB, 0x01, 0x47, 0x03, 0xAC, 0x01, 0x48, 0x03
	.byte 0xAD, 0x01, 0x49, 0x03, 0xAE, 0x01, 0x4A, 0x03, 0xAF, 0x01, 0x4B, 0x03, 0xB0, 0x01, 0x4C, 0x03
	.byte 0xB1, 0x01, 0x4D, 0x03, 0xB2, 0x01, 0x4E, 0x03, 0xB3, 0x01, 0x4F, 0x03, 0xB4, 0x01, 0x50, 0x03
	.byte 0xB5, 0x01, 0x51, 0x03, 0xB6, 0x01, 0x52, 0x03, 0xB7, 0x01, 0x53, 0x03, 0xB8, 0x01, 0x54, 0x03
	.byte 0xB9, 0x01, 0x55, 0x03, 0xBA, 0x01, 0x56, 0x03, 0xBB, 0x01, 0x57, 0x03, 0xBC, 0x01, 0x58, 0x03
	.byte 0xBD, 0x01, 0x59, 0x03, 0xBE, 0x01, 0x5A, 0x03, 0xBF, 0x01, 0x5B, 0x03, 0xC0, 0x01, 0x5C, 0x03
	.byte 0xC1, 0x01, 0x5D, 0x03, 0xC2, 0x01, 0x5E, 0x03, 0xC3, 0x01, 0x5F, 0x03, 0xC4, 0x01, 0x60, 0x03
	.byte 0xC5, 0x01, 0x61, 0x03, 0xC6, 0x01, 0x62, 0x03, 0xC7, 0x01, 0x63, 0x03, 0xC8, 0x01, 0x64, 0x03
	.byte 0xC9, 0x01, 0x65, 0x03, 0xCA, 0x01, 0x66, 0x03, 0xCB, 0x01, 0x67, 0x03, 0xCC, 0x01, 0x68, 0x03
	.byte 0xCD, 0x01, 0x69, 0x03, 0xCE, 0x01, 0x6A, 0x03, 0xCF, 0x01, 0x6B, 0x03, 0xD0, 0x01, 0x6C, 0x03
	.byte 0xD1, 0x01, 0x6D, 0x03, 0xD2, 0x01, 0x6E, 0x03, 0xD3, 0x01, 0x6F, 0x03, 0xD4, 0x01, 0x70, 0x03
	.byte 0xD5, 0x01, 0x71, 0x03, 0xD6, 0x01, 0x72, 0x03, 0xD7, 0x01, 0x73, 0x03, 0xD8, 0x01, 0x74, 0x03
	.byte 0xD9, 0x01, 0x75, 0x03, 0xDA, 0x01, 0x76, 0x03, 0xDB, 0x01, 0x77, 0x03, 0xDC, 0x01, 0x78, 0x03
	.byte 0xE7, 0x01, 0x79, 0x03, 0xE8, 0x01, 0x7A, 0x03, 0xE9, 0x01, 0x7B, 0x03, 0xEA, 0x01, 0x7C, 0x03
	.byte 0xEB, 0x01, 0x7D, 0x03, 0xEC, 0x01, 0x7E, 0x03, 0xED, 0x01, 0x7F, 0x03, 0xEE, 0x01, 0x80, 0x03
	.byte 0xEF, 0x01, 0x81, 0x03, 0xF0, 0x01, 0x82, 0x03, 0xF1, 0x01, 0x83, 0x03, 0xF2, 0x01, 0x84, 0x03
	.byte 0xF3, 0x01, 0x85, 0x03, 0xF4, 0x01, 0x86, 0x03, 0xF5, 0x01, 0x87, 0x03, 0xF6, 0x01, 0x88, 0x03
	.byte 0xF7, 0x01, 0x89, 0x03, 0xF8, 0x01, 0x8A, 0x03, 0xF9, 0x01, 0x8B, 0x03, 0xFA, 0x01, 0x8C, 0x03

