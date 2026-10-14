	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240BB0
	.extern ov81_02240458
	.extern ov81_02241364
	.extern ov81_02241FC0
	.extern ov81_02242170
	.extern ov81_0224275C
	.extern ov81_02242B38
	.extern ov81_02242D74
	.extern ov81_02242EA4
	.extern ov81_0224300C

	.text

	.text
	thumb_func_start ov81_02240BB0
ov81_02240BB0: ; 0x02240BB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov81_0224275C
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _02240BE0
	mov r7, #0x36
	add r4, r5, #0
	lsl r7, r7, #4
_02240BC6:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240BD6
	bl ov81_02242EA4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r4, r1]
_02240BD6:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02240BC6
_02240BE0:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov81_02242D74
	add r0, r5, #0
	bl ov81_02241364
	add r0, r5, #0
	bl ov81_02241FC0
	add r0, r5, #0
	bl ov81_02242170
	bl sub_0203A914
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl PaletteData_Free
	mov r0, #0x1a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, #0x24
	add r0, r5, r0
	bl ov81_02242B38
	mov r7, #0x6b
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02240C62:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02240C6C
	bl Pokepic_Delete
_02240C6C:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02240C62
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl PokepicManager_Delete
	ldr r0, [r5, #0x1c]
	bl DestroyMsgData
	ldr r0, [r5, #0x20]
	bl MessageFormat_Delete
	ldr r0, [r5, #0x24]
	bl String_Delete
	ldr r0, [r5, #0x28]
	bl String_Delete
	mov r6, #0
	add r4, r5, #0
_02240C9A:
	ldr r0, [r4, #0x2c]
	bl String_Delete
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02240C9A
	mov r0, #4
	bl FontID_Release
	add r0, r5, #0
	add r0, #0x50
	bl ov81_0224300C
	ldr r0, [r5, #0x4c]
	bl ov81_02240458
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl NARC_Delete
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl GF_3DVramMan_Delete
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_02240BB0

