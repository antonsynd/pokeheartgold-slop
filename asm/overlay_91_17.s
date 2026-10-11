	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D1DC
	.public ov91_0225DCC4
	.public ov91_0225E40C
	.public ov91_0225E62C
	.public ov91_0225EA7C
	.public ov91_0225EF70
	.public ov91_0225F008
	.public ov91_0225F3D4
	.public ov91_0225F3E4
	.public ov91_0225F3E8
	.public ov91_0225F74C
	.public ov91_02260370
	.public ov91_022619E8
	.public ov91_02261A00
	.public ov91_02261C44

	.text

	thumb_func_start ov91_0225D1DC
ov91_0225D1DC: ; 0x0225D1DC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4]
	cmp r2, #2
	bhs _0225D202
	ldr r0, _0225D2A8 ; =ov91_02261C44
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	ldr r0, [r4, #8]
	cmp r1, r0
	bhi _0225D202
	add r0, r2, #1
	str r0, [r4]
	cmp r0, #1
	bne _0225D202
	ldr r0, _0225D2AC ; =0x000087E4
	add r0, r4, r0
	bl ov91_022619E8
_0225D202:
	ldr r0, _0225D2B0 ; =0x000086EC
	mov r1, #1
	add r0, r4, r0
	mov r2, #0
	bl sub_02021280
	add r0, r4, #0
	bl ov91_0225EA7C
	ldr r0, _0225D2B4 ; =0x00008730
	add r0, r4, r0
	bl ov91_0225EF70
	cmp r0, #0
	bne _0225D22A
	ldr r1, _0225D2B4 ; =0x00008730
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225F008
_0225D22A:
	ldr r0, _0225D2B8 ; =0x000087CC
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	bl ov91_0225F3E8
	cmp r0, #1
	bne _0225D258
	ldr r0, _0225D2B8 ; =0x000087CC
	add r0, r4, r0
	bl ov91_0225F3E4
	add r1, r0, #0
	ldr r0, _0225D2BC ; =0x0000FFFF
	cmp r1, r0
	beq _0225D250
	ldr r0, _0225D2C0 ; =0x00001F74
	add r0, r4, r0
	bl ov91_02260370
_0225D250:
	ldr r0, _0225D2B8 ; =0x000087CC
	add r0, r4, r0
	bl ov91_0225F3D4
_0225D258:
	add r0, r4, #0
	bl ov91_0225E40C
	ldr r1, _0225D2C4 ; =0x000019CC
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225DCC4
	ldr r1, _0225D2C8 ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225F74C
	add r0, r4, #0
	bl ov91_0225E62C
	ldr r0, _0225D2AC ; =0x000087E4
	ldr r1, _0225D2CC ; =0x00001C54
	ldr r2, _0225D2C0 ; =0x00001F74
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, r2
	bl ov91_02261A00
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0225D294
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0225D294:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	cmp r0, r1
	blt _0225D2A2
	str r1, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_0225D2A2:
	mov r0, #0
	pop {r4, pc}
	nop
_0225D2A8: .word ov91_02261C44
_0225D2AC: .word 0x000087E4
_0225D2B0: .word 0x000086EC
_0225D2B4: .word 0x00008730
_0225D2B8: .word 0x000087CC
_0225D2BC: .word 0x0000FFFF
_0225D2C0: .word 0x00001F74
_0225D2C4: .word 0x000019CC
_0225D2C8: .word 0x00001AB4
_0225D2CC: .word 0x00001C54
	thumb_func_end ov91_0225D1DC

