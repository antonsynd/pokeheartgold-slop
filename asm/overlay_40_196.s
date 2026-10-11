	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222DEAC
	.public ov40_02230944
	.public ov40_0223CE38
	.public ov40_0223CE64
	.public ov40_0223CF00
	.public ov40_0223CF70

	.text

	thumb_func_start ov40_0223CE64
ov40_0223CE64: ; 0x0223CE64
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r5, [r4, r2]
	cmp r1, #0
	bne _0223CEF8
	cmp r0, #3
	bhi _0223CEF8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223CE82: ; jump table
	.short _0223CE8A - _0223CE82 - 2 ; case 0
	.short _0223CE9A - _0223CE82 - 2 ; case 1
	.short _0223CEC2 - _0223CE82 - 2 ; case 2
	.short _0223CEEA - _0223CE82 - 2 ; case 3
_0223CE8A:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223CE9A:
	add r0, r4, #0
	bl ov40_02230944
	bl sub_0202FC48
	cmp r0, #0
	beq _0223CEB2
	add r0, r4, #0
	mov r1, #9
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223CEB2:
	ldr r0, _0223CEFC ; =0x00002034
	mov r1, #9
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223CEC2:
	add r0, r4, #0
	bl ov40_02230944
	bl sub_0202FC48
	cmp r0, #0
	beq _0223CEDA
	add r0, r4, #0
	mov r1, #0xb
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223CEDA:
	ldr r0, _0223CEFC ; =0x00002034
	mov r1, #0xb
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223CEEA:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	mov r1, #0xa
	bl ov40_0222BF80
_0223CEF8:
	pop {r3, r4, r5, pc}
	nop
_0223CEFC: .word 0x00002034
	thumb_func_end ov40_0223CE64

	thumb_func_start ov40_0223CF00
ov40_0223CF00: ; 0x0223CF00
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _0223CF68
	cmp r0, #3
	bhi _0223CF68
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223CF1E: ; jump table
	.short _0223CF26 - _0223CF1E - 2 ; case 0
	.short _0223CF26 - _0223CF1E - 2 ; case 1
	.short _0223CF26 - _0223CF1E - 2 ; case 2
	.short _0223CF54 - _0223CF1E - 2 ; case 3
_0223CF26:
	add r1, r0, #1
	ldr r0, _0223CF6C ; =0x00002028
	add r2, #0x2c
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _0223CF44
	add r0, r4, #0
	mov r1, #0xe
	bl ov40_0222BF80
	b _0223CF4C
_0223CF44:
	add r0, r4, #0
	mov r1, #0x11
	bl ov40_0222BF80
_0223CF4C:
	add r0, r4, #0
	bl ov40_02230944
	pop {r4, pc}
_0223CF54:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_0222DEAC
	add r0, r4, #0
	mov r1, #0xd
	bl ov40_0222BF80
_0223CF68:
	pop {r4, pc}
	nop
_0223CF6C: .word 0x00002028
	thumb_func_end ov40_0223CF00

	thumb_func_start ov40_0223CF70
ov40_0223CF70: ; 0x0223CF70
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #0
	bne _0223CFA6
	cmp r0, #0
	beq _0223CF82
	cmp r0, #1
	beq _0223CF98
	pop {r4, pc}
_0223CF82:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_0223CE38
	add r0, r4, #0
	mov r1, #0x11
	bl ov40_0222BF80
	pop {r4, pc}
_0223CF98:
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	mov r1, #0x10
	bl ov40_0222BF80
_0223CFA6:
	pop {r4, pc}
	thumb_func_end ov40_0223CF70

