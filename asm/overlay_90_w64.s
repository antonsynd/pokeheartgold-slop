	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259B38
	.public ov90_02259B68
	.public ov90_02259BCC
	.public ov90_02259D50
	.public ov90_02259DAC
	.extern ov90_02258EB4
	.extern ov90_022591F4
	.extern ov90_02259200
	.extern ov90_02259210
	.extern ov90_02259220
	.extern ov90_022592A8
	.extern ov90_02259350
	.extern ov90_02259F7C
	.extern ov90_0225A050
	.extern ov90_0225A134
	.extern ov90_0225C274
	.extern ov90_0225C276
	.extern ov90_0225C310
	.extern ov90_0225C314
	.extern ov90_0225C318

	.text

	.text
	thumb_func_start ov90_02259B38
ov90_02259B38: ; 0x02259B38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MTRandom
	mov r1, #0x64
	bl _u32_div_f
	mov r3, #0
	add r0, r3, #0
	cmp r4, #0
	bls _02259B5E
_02259B50:
	ldrb r2, [r5, r0]
	add r3, r3, r2
	cmp r3, r1
	bhi _02259B64
	add r0, r0, #1
	cmp r0, r4
	blo _02259B50
_02259B5E:
	bl GF_AssertFail
	sub r0, r4, #1
_02259B64:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov90_02259B38

	thumb_func_start ov90_02259B68
ov90_02259B68: ; 0x02259B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r7, #0x10]
	cmp r0, #0
	ble _02259BC6
	mov r0, #0x81
	lsl r0, r0, #2
	add r6, r7, r0
	add r4, r7, #0
	add r5, r6, #0
_02259B86:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02259BB0
	add r0, r6, #0
	bl ov90_02259F7C
	str r0, [sp, #8]
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	bl ov90_0225A134
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02259BB4
	mov r0, #0
	str r0, [sp]
	b _02259BB4
_02259BB0:
	mov r0, #0
	str r0, [sp]
_02259BB4:
	ldr r0, [sp, #4]
	ldrb r1, [r7, #0x10]
	add r0, r0, #1
	add r4, #0x38
	add r6, #0x38
	add r5, #0x38
	str r0, [sp, #4]
	cmp r0, r1
	blt _02259B86
_02259BC6:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov90_02259B68

	thumb_func_start ov90_02259BCC
ov90_02259BCC: ; 0x02259BCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [sp, #0x48]
	add r6, r3, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x1c]
	ldr r4, [sp, #0x4c]
	str r0, [sp, #0x54]
	cmp r2, #0
	beq _02259BEC
	cmp r2, #1
	beq _02259BFA
	cmp r2, #2
	bne _02259C10
_02259BEC:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	add r1, r4, #0
	bl ov90_0225A050
	add r7, r0, #0
	b _02259C12
_02259BFA:
	ldr r0, [sp, #0x50]
	cmp r0, r4
	bls _02259C04
	add r7, r4, #1
	b _02259C12
_02259C04:
	cmp r0, r4
	bne _02259C0C
	mov r7, #0
	b _02259C12
_02259C0C:
	add r7, r4, #0
	b _02259C12
_02259C10:
	add r7, r4, #0
_02259C12:
	mov r0, #1
	mov r1, #2
	bl SetBgPriority
	mov r0, #0
	mov r1, #1
	bl SetBgPriority
	ldr r1, [sp, #0x1c]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	str r2, [sp, #0x2c]
	ldr r2, _02259D38 ; =ov90_0225C310
	ldr r1, [sp, #0x2c]
	mov r3, #5
	add r1, r2, r1
	ldrb r1, [r7, r1]
	mov r2, #0
	str r1, [sp, #0x28]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0x1a
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x68
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02259D3C ; =0x00000201
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	add r1, r5, #0
	ldr r0, [r0]
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x20
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0xc
	str r0, [sp, #8]
	mov r2, #0
	ldr r1, _02259D40 ; =ov90_0225C314
	ldr r0, [sp, #0x2c]
	str r2, [sp, #0xc]
	add r0, r1, r0
	ldrb r0, [r4, r0]
	ldr r3, [sp, #0x28]
	mov r1, #1
	str r0, [sp, #0x10]
	ldrh r0, [r6]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r6, #2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	ldr r0, [r0]
	bl CopyToBgTilemapRect
	ldr r0, [sp, #0x28]
	ldr r1, _02259D44 ; =ov90_0225C318
	lsl r0, r0, #3
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	ldr r2, _02259D48 ; =ov90_0225C274
	add r0, r1, r0
	ldrb r0, [r7, r0]
	ldr r3, _02259D4C ; =ov90_0225C276
	ldr r1, [sp, #0x54]
	lsl r6, r0, #2
	ldrsh r2, [r2, r6]
	str r0, [sp, #0x24]
	mov r0, #0
	ldrsh r6, [r3, r6]
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #4]
	add r3, r6, r3
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x58]
	ldr r1, [r1]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov90_02258EB4
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x10]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl Sprite_SetPalOffset
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #4]
	ldr r1, [sp, #0x54]
	add r3, #0x15
	str r3, [sp, #0x20]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x58]
	ldr r1, [r1]
	mov r2, #0x18
	lsr r3, r3, #0x18
	bl ov90_02258EB4
	str r0, [r5, #0x14]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl Sprite_SetDrawFlag
	strb r4, [r5, #0x1a]
	ldr r0, [sp, #0x1c]
	strb r7, [r5, #0x1b]
	strh r0, [r5, #0x18]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02259D38: .word ov90_0225C310
_02259D3C: .word 0x00000201
_02259D40: .word ov90_0225C314
_02259D44: .word ov90_0225C318
_02259D48: .word ov90_0225C274
_02259D4C: .word ov90_0225C276
	thumb_func_end ov90_02259BCC

	thumb_func_start ov90_02259D50
ov90_02259D50: ; 0x02259D50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r2, #0
	add r4, r3, #0
	bl ov90_02259200
	ldr r0, [sp, #0x1c]
	add r1, sp, #8
	cmp r0, #1
	bne _02259D8A
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	lsl r3, r4, #0x18
	mov r1, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _02259DA8 ; =0x00050600
	add r2, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl ov90_02259350
	add sp, #8
	pop {r4, r5, r6, pc}
_02259D8A:
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	lsl r3, r4, #0x18
	mov r1, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592A8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02259DA8: .word 0x00050600
	thumb_func_end ov90_02259D50

	thumb_func_start ov90_02259DAC
ov90_02259DAC: ; 0x02259DAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r3, #0
	cmp r2, #0
	beq _02259DE8
	cmp r4, #0
	beq _02259E14
	add r0, r5, #0
	bl ov90_022591F4
	add r0, r5, #0
	add r1, r4, #0
	bl ov90_02259210
	mov r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	mov r3, #0x14
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xb
	lsl r3, r3, #0x18
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592A8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02259DE8:
	cmp r4, #0
	beq _02259E14
	add r0, r5, #0
	bl ov90_022591F4
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl ov90_02259220
	mov r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	mov r3, #0x14
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xc
	lsl r3, r3, #0x18
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592A8
_02259E14:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov90_02259DAC

