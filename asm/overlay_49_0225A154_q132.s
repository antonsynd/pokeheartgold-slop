	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225BBD0
	.extern ov49_0225B3A8
	.extern ov49_0225B438
	.extern ov49_0225BA40
	.extern ov49_0225BB14
	.extern ov49_0225BEA0
	.extern ov49_0225BFF0
	.extern ov49_0225C180
	.extern ov49_0225C3C0
	.extern ov49_0225C3DC
	.extern ov49_0225C414
	.extern ov49_0225C460
	.extern ov49_0225C470
	.extern ov49_0225C480
	.extern ov49_0225C4B0
	.extern ov49_0225C4CC

    .text

	.text
	thumb_func_start ov49_0225BBD0
ov49_0225BBD0: ; 0x0225BBD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	add r6, r3, #0
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl ov49_0225B438
	ldr r0, [sp, #0x38]
	bl ov45_0222A9CC
	cmp r0, #0
	bne _0225BC1C
	ldr r0, [sp, #0x40]
	ldr r7, _0225BE98 ; =0x00070800
	cmp r0, #0
	bne _0225BC0E
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x56
	bl ov49_0225BA40
	b _0225BC40
_0225BC0E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov49_0225BA40
	b _0225BC40
_0225BC1C:
	ldr r0, [sp, #0x40]
	mov r7, #0xc1
	lsl r7, r7, #0xa
	cmp r0, #0
	bne _0225BC34
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x57
	bl ov49_0225BA40
	b _0225BC40
_0225BC34:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	mov r2, #0x58
	bl ov49_0225BA40
_0225BC40:
	ldr r0, [r6]
	mov r1, #4
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	ldr r0, [r6]
	mov r1, #5
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	ldr r0, [r6]
	mov r1, #6
	mov r2, #0
	bl BgFillTilemapBufferAndSchedule
	add r0, r5, #0
	bl ov49_0225C3C0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x5c
	mov r3, #4
	bl ov49_0225BB14
	ldr r0, [sp, #0x34]
	bl PlayerProfile_New
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	bl ov45_0222A844
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2c
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r0, [sp, #0x10]
	bl PlayerProfile_GetTrainerID_VisibleHalf
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	mov r0, #0x7a
	str r0, [sp]
	mov r2, #0
	ldr r0, _0225BE9C ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x31
	bl ov49_0225C414
	mov r2, #0
	str r2, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x2d
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C470
	mov r0, #0x7a
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #0x32
	bl ov49_0225C414
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225C460
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #0x2e
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r0, [sp, #0x38]
	bl ov45_0222AA84
	cmp r0, #0
	bne _0225BD3E
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x37
	bl ov49_0225C3DC
	b _0225BD60
_0225BD3E:
	ldr r2, [sp, #0x38]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C480
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x33
	bl ov49_0225C3DC
_0225BD60:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225C460
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225BE06
	mov r0, #1
	str r0, [r5]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C470
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x38
	str r7, [sp, #8]
	bl ov49_0225C3DC
	ldr r2, [sp, #0x48]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225C4B0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3b
	bl ov49_0225C3DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3c
	bl ov49_0225C3DC
	mov r0, #6
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3d
	bl ov49_0225C3DC
	mov r0, #0x5a
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225BE9C ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r2, #4
	mov r3, #0x3e
	bl ov49_0225C3DC
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225C460
	b _0225BE3A
_0225BE06:
	mov r1, #0
	str r1, [r5]
	mov r0, #8
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #4
	mov r3, #0x30
	str r7, [sp, #8]
	bl ov49_0225C3DC
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225C460
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225C4CC
_0225BE3A:
	ldr r0, [sp, #0x38]
	bl ov45_0222AAC8
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225BFF0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225BE6A
	ldr r0, [sp, #0x38]
	bl ov45_0222A9CC
	cmp r0, #1
	bne _0225BE66
	mov r0, #0x61
	b _0225BE70
_0225BE66:
	mov r0, #0
	b _0225BE70
_0225BE6A:
	ldr r0, [sp, #0x38]
	bl ov45_0222AA5C
_0225BE70:
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x34]
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225C180
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_0225BEA0
	ldr r0, [sp, #0x10]
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BE98: .word 0x00070800
_0225BE9C: .word 0x00010200
	thumb_func_end ov49_0225BBD0

