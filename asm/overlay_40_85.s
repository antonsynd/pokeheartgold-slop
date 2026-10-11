	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_022309DC
	.public ov40_02230CDC
	.public ov40_02230D20
	.public ov40_02230D94

	.text

	thumb_func_start ov40_022309DC
ov40_022309DC: ; 0x022309DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	add r0, r3, #0
	ldr r2, [r5, #4]
	ldr r3, _02230C9C ; =0x00000504
	str r2, [r5, r3]
	ldr r4, [r5, #8]
	add r2, r3, #4
	str r4, [r5, r2]
	ldr r2, [r5, #0x10]
	ldr r4, [r2]
	add r2, r3, #0
	add r2, #8
	str r4, [r5, r2]
	mov r2, #1
	add r3, #0x18
	mov r4, #0xc2
	str r2, [r5, r3]
	cmp r0, #0
	beq _02230A12
	cmp r0, #1
	beq _02230A82
	cmp r0, #2
	beq _02230AD4
	b _02230CD2
_02230A12:
	cmp r1, #0xe
	bhi _02230A7C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230A22: ; jump table
	.short _02230A40 - _02230A22 - 2 ; case 0
	.short _02230A44 - _02230A22 - 2 ; case 1
	.short _02230A48 - _02230A22 - 2 ; case 2
	.short _02230A4C - _02230A22 - 2 ; case 3
	.short _02230A50 - _02230A22 - 2 ; case 4
	.short _02230A54 - _02230A22 - 2 ; case 5
	.short _02230A58 - _02230A22 - 2 ; case 6
	.short _02230A5C - _02230A22 - 2 ; case 7
	.short _02230A60 - _02230A22 - 2 ; case 8
	.short _02230A64 - _02230A22 - 2 ; case 9
	.short _02230A68 - _02230A22 - 2 ; case 10
	.short _02230A6C - _02230A22 - 2 ; case 11
	.short _02230A70 - _02230A22 - 2 ; case 12
	.short _02230A74 - _02230A22 - 2 ; case 13
	.short _02230A78 - _02230A22 - 2 ; case 14
_02230A40:
	mov r4, #0xf4
	b _02230CD2
_02230A44:
	mov r4, #0xf5
	b _02230CD2
_02230A48:
	mov r4, #0xf6
	b _02230CD2
_02230A4C:
	mov r4, #0xf7
	b _02230CD2
_02230A50:
	mov r4, #0xf8
	b _02230CD2
_02230A54:
	mov r4, #0xf9
	b _02230CD2
_02230A58:
	mov r4, #0xfa
	b _02230CD2
_02230A5C:
	mov r4, #0xfb
	b _02230CD2
_02230A60:
	mov r4, #0xfc
	b _02230CD2
_02230A64:
	mov r4, #0xfd
	b _02230CD2
_02230A68:
	mov r4, #0xfe
	b _02230CD2
_02230A6C:
	mov r4, #0xff
	b _02230CD2
_02230A70:
	add r4, #0x3e
	b _02230CD2
_02230A74:
	add r4, #0x3f
	b _02230CD2
_02230A78:
	add r4, #0x40
	b _02230CD2
_02230A7C:
	bl GF_AssertFail
	b _02230CD2
_02230A82:
	cmp r1, #9
	bhi _02230ACE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230A92: ; jump table
	.short _02230AA6 - _02230A92 - 2 ; case 0
	.short _02230AAA - _02230A92 - 2 ; case 1
	.short _02230AAE - _02230A92 - 2 ; case 2
	.short _02230AB2 - _02230A92 - 2 ; case 3
	.short _02230AB6 - _02230A92 - 2 ; case 4
	.short _02230ABA - _02230A92 - 2 ; case 5
	.short _02230ABE - _02230A92 - 2 ; case 6
	.short _02230AC2 - _02230A92 - 2 ; case 7
	.short _02230AC6 - _02230A92 - 2 ; case 8
	.short _02230ACA - _02230A92 - 2 ; case 9
_02230AA6:
	add r4, #0x41
	b _02230CD2
_02230AAA:
	add r4, #0x42
	b _02230CD2
_02230AAE:
	add r4, #0x43
	b _02230CD2
_02230AB2:
	add r4, #0x44
	b _02230CD2
_02230AB6:
	add r4, #0x45
	b _02230CD2
_02230ABA:
	add r4, #0x46
	b _02230CD2
_02230ABE:
	add r4, #0x47
	b _02230CD2
_02230AC2:
	add r4, #0x48
	b _02230CD2
_02230AC6:
	add r4, #0x49
	b _02230CD2
_02230ACA:
	add r4, #0x4a
	b _02230CD2
_02230ACE:
	bl GF_AssertFail
	b _02230CD2
_02230AD4:
	cmp r6, #8
	bls _02230ADA
	b _02230CCE
_02230ADA:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230AE6: ; jump table
	.short _02230AF8 - _02230AE6 - 2 ; case 0
	.short _02230B30 - _02230AE6 - 2 ; case 1
	.short _02230B5E - _02230AE6 - 2 ; case 2
	.short _02230B9E - _02230AE6 - 2 ; case 3
	.short _02230BCC - _02230AE6 - 2 ; case 4
	.short _02230BEC - _02230AE6 - 2 ; case 5
	.short _02230C26 - _02230AE6 - 2 ; case 6
	.short _02230C6C - _02230AE6 - 2 ; case 7
	.short _02230CA0 - _02230AE6 - 2 ; case 8
_02230AF8:
	cmp r1, #5
	bhi _02230B2A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230B08: ; jump table
	.short _02230B14 - _02230B08 - 2 ; case 0
	.short _02230B16 - _02230B08 - 2 ; case 1
	.short _02230B1A - _02230B08 - 2 ; case 2
	.short _02230B1E - _02230B08 - 2 ; case 3
	.short _02230B22 - _02230B08 - 2 ; case 4
	.short _02230B26 - _02230B08 - 2 ; case 5
_02230B14:
	b _02230CD2
_02230B16:
	mov r4, #0xc3
	b _02230CD2
_02230B1A:
	mov r4, #0xc4
	b _02230CD2
_02230B1E:
	mov r4, #0xc5
	b _02230CD2
_02230B22:
	mov r4, #0xc6
	b _02230CD2
_02230B26:
	mov r4, #0xc7
	b _02230CD2
_02230B2A:
	bl GF_AssertFail
	b _02230CD2
_02230B30:
	cmp r1, #3
	bhi _02230B58
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230B40: ; jump table
	.short _02230B48 - _02230B40 - 2 ; case 0
	.short _02230B4C - _02230B40 - 2 ; case 1
	.short _02230B50 - _02230B40 - 2 ; case 2
	.short _02230B54 - _02230B40 - 2 ; case 3
_02230B48:
	mov r4, #0xc8
	b _02230CD2
_02230B4C:
	mov r4, #0xc9
	b _02230CD2
_02230B50:
	mov r4, #0xca
	b _02230CD2
_02230B54:
	mov r4, #0xcb
	b _02230CD2
_02230B58:
	bl GF_AssertFail
	b _02230CD2
_02230B5E:
	cmp r1, #6
	bhi _02230B98
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230B6E: ; jump table
	.short _02230B7C - _02230B6E - 2 ; case 0
	.short _02230B80 - _02230B6E - 2 ; case 1
	.short _02230B84 - _02230B6E - 2 ; case 2
	.short _02230B88 - _02230B6E - 2 ; case 3
	.short _02230B8C - _02230B6E - 2 ; case 4
	.short _02230B90 - _02230B6E - 2 ; case 5
	.short _02230B94 - _02230B6E - 2 ; case 6
_02230B7C:
	mov r4, #0xcc
	b _02230CD2
_02230B80:
	mov r4, #0xcd
	b _02230CD2
_02230B84:
	mov r4, #0xce
	b _02230CD2
_02230B88:
	mov r4, #0xcf
	b _02230CD2
_02230B8C:
	mov r4, #0xd0
	b _02230CD2
_02230B90:
	mov r4, #0xd1
	b _02230CD2
_02230B94:
	mov r4, #0xd2
	b _02230CD2
_02230B98:
	bl GF_AssertFail
	b _02230CD2
_02230B9E:
	cmp r1, #3
	bhi _02230BC6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230BAE: ; jump table
	.short _02230BB6 - _02230BAE - 2 ; case 0
	.short _02230BBA - _02230BAE - 2 ; case 1
	.short _02230BBE - _02230BAE - 2 ; case 2
	.short _02230BC2 - _02230BAE - 2 ; case 3
_02230BB6:
	mov r4, #0xd3
	b _02230CD2
_02230BBA:
	mov r4, #0xd4
	b _02230CD2
_02230BBE:
	mov r4, #0xd5
	b _02230CD2
_02230BC2:
	mov r4, #0xd6
	b _02230CD2
_02230BC6:
	bl GF_AssertFail
	b _02230CD2
_02230BCC:
	cmp r1, #0
	beq _02230BDA
	cmp r1, #1
	beq _02230BDE
	cmp r1, #2
	beq _02230BE2
	b _02230BE6
_02230BDA:
	mov r4, #0xd7
	b _02230CD2
_02230BDE:
	mov r4, #0xd8
	b _02230CD2
_02230BE2:
	mov r4, #0xd9
	b _02230CD2
_02230BE6:
	bl GF_AssertFail
	b _02230CD2
_02230BEC:
	cmp r1, #5
	bhi _02230C20
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230BFC: ; jump table
	.short _02230C08 - _02230BFC - 2 ; case 0
	.short _02230C0C - _02230BFC - 2 ; case 1
	.short _02230C10 - _02230BFC - 2 ; case 2
	.short _02230C14 - _02230BFC - 2 ; case 3
	.short _02230C18 - _02230BFC - 2 ; case 4
	.short _02230C1C - _02230BFC - 2 ; case 5
_02230C08:
	mov r4, #0xda
	b _02230CD2
_02230C0C:
	mov r4, #0xdb
	b _02230CD2
_02230C10:
	mov r4, #0xdc
	b _02230CD2
_02230C14:
	mov r4, #0xdd
	b _02230CD2
_02230C18:
	mov r4, #0xde
	b _02230CD2
_02230C1C:
	mov r4, #0xdf
	b _02230CD2
_02230C20:
	bl GF_AssertFail
	b _02230CD2
_02230C26:
	cmp r1, #7
	bhi _02230C66
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230C36: ; jump table
	.short _02230C46 - _02230C36 - 2 ; case 0
	.short _02230C4A - _02230C36 - 2 ; case 1
	.short _02230C4E - _02230C36 - 2 ; case 2
	.short _02230C52 - _02230C36 - 2 ; case 3
	.short _02230C56 - _02230C36 - 2 ; case 4
	.short _02230C5A - _02230C36 - 2 ; case 5
	.short _02230C5E - _02230C36 - 2 ; case 6
	.short _02230C62 - _02230C36 - 2 ; case 7
_02230C46:
	mov r4, #0xe0
	b _02230CD2
_02230C4A:
	mov r4, #0xe1
	b _02230CD2
_02230C4E:
	mov r4, #0xe2
	b _02230CD2
_02230C52:
	mov r4, #0xe3
	b _02230CD2
_02230C56:
	mov r4, #0xe4
	b _02230CD2
_02230C5A:
	mov r4, #0xe5
	b _02230CD2
_02230C5E:
	mov r4, #0xe6
	b _02230CD2
_02230C62:
	mov r4, #0xe7
	b _02230CD2
_02230C66:
	bl GF_AssertFail
	b _02230CD2
_02230C6C:
	cmp r1, #3
	bhi _02230C94
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230C7C: ; jump table
	.short _02230C84 - _02230C7C - 2 ; case 0
	.short _02230C88 - _02230C7C - 2 ; case 1
	.short _02230C8C - _02230C7C - 2 ; case 2
	.short _02230C90 - _02230C7C - 2 ; case 3
_02230C84:
	mov r4, #0xe8
	b _02230CD2
_02230C88:
	mov r4, #0xe9
	b _02230CD2
_02230C8C:
	mov r4, #0xea
	b _02230CD2
_02230C90:
	mov r4, #0xeb
	b _02230CD2
_02230C94:
	bl GF_AssertFail
	b _02230CD2
	nop
_02230C9C: .word 0x00000504
_02230CA0:
	cmp r1, #3
	bhi _02230CC8
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230CB0: ; jump table
	.short _02230CB8 - _02230CB0 - 2 ; case 0
	.short _02230CBC - _02230CB0 - 2 ; case 1
	.short _02230CC0 - _02230CB0 - 2 ; case 2
	.short _02230CC4 - _02230CB0 - 2 ; case 3
_02230CB8:
	mov r4, #0xec
	b _02230CD2
_02230CBC:
	mov r4, #0xed
	b _02230CD2
_02230CC0:
	mov r4, #0xee
	b _02230CD2
_02230CC4:
	mov r4, #0xef
	b _02230CD2
_02230CC8:
	bl GF_AssertFail
	b _02230CD2
_02230CCE:
	bl GF_AssertFail
_02230CD2:
	mov r0, #0x51
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov40_022309DC

	thumb_func_start ov40_02230CDC
ov40_02230CDC: ; 0x02230CDC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r5, [r4, #4]
	ldr r7, _02230D1C ; =0x00000504
	str r5, [r4, r7]
	ldr r6, [r4, #8]
	add r5, r7, #4
	str r6, [r4, r5]
	ldr r5, [r4, #0x10]
	ldr r6, [r5]
	add r5, r7, #0
	add r5, #8
	str r6, [r4, r5]
	add r5, r7, #0
	mov r6, #0
	add r5, #0x10
	str r6, [r4, r5]
	add r7, #0x14
	str r6, [r4, r7]
	bl ov40_022309DC
	mov r1, #0x51
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	add r1, #0xc
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	mov r1, #0x12
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230D1C: .word 0x00000504
	thumb_func_end ov40_02230CDC

	thumb_func_start ov40_02230D20
ov40_02230D20: ; 0x02230D20
	push {r4, lr}
	ldr r2, _02230D90 ; =0x00000514
	add r4, r0, #0
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _02230D32
	cmp r1, #1
	beq _02230D58
	b _02230D70
_02230D32:
	add r1, r2, #4
	ldr r1, [r4, r1]
	cmp r1, #8
	bge _02230D46
	add r0, r2, #4
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02230D46:
	sub r1, r2, #4
	ldr r1, [r4, r1]
	bl ov40_0222DED0
	ldr r0, _02230D90 ; =0x00000514
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_02230D58:
	bl System_GetTouchNew
	cmp r0, #0
	beq _02230D8C
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r0, _02230D90 ; =0x00000514
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_02230D70:
	add r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02230D84
	add r0, r2, #4
	ldr r0, [r4, r0]
	sub r1, r0, #1
	add r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02230D84:
	sub r2, #8
	ldr r1, [r4, r2]
	ldr r0, [r4, #0x10]
	str r1, [r0]
_02230D8C:
	pop {r4, pc}
	nop
_02230D90: .word 0x00000514
	thumb_func_end ov40_02230D20

	thumb_func_start ov40_02230D94
ov40_02230D94: ; 0x02230D94
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #1
	add r5, r0, #4
_02230D9E:
	ldr r0, _02230DC8 ; =0x0000087C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230DBA
	mov r1, #4
	mov r2, #0
	bl sub_0203088C
	eor r1, r7
	eor r0, r6
	orr r0, r1
	bne _02230DBA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02230DBA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02230D9E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230DC8: .word 0x0000087C
	thumb_func_end ov40_02230D94

