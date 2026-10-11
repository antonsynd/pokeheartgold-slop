	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BB6C
	.public ov27_0225BC34
	.public ov27_0225BC84
	.public ov27_0225BCE8
	.public ov27_0225BD44
	.extern ov27_0225CED8
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225BB6C
ov27_0225BB6C: ; 0x0225BB6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, _0225BC10 ; =0x000004AC
	mov r1, #0
	ldr r0, [r5, r0]
	bl BufferPlayersName
	ldr r7, _0225BC14 ; =ov27_0225CFC8
	mov r4, #0
	add r6, r5, #0
_0225BB8A:
	ldr r0, _0225BC18 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r0, r0, #3
	add r0, r7, r0
	ldrb r2, [r4, r0]
	cmp r2, #0xd
	beq _0225BBBA
	lsl r3, r2, #2
	ldr r2, _0225BC1C ; =ov27_0225CF94
	ldr r0, _0225BC10 ; =0x000004AC
	add r2, r2, r3
	ldrh r2, [r2, #2]
	ldr r1, _0225BC20 ; =0x000004A8
	ldr r0, [r5, r0]
	lsl r2, r2, #0x11
	ldr r1, [r5, r1]
	lsr r2, r2, #0x11
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC24 ; =0x00000474
	str r0, [r6, r1]
_0225BBBA:
	add r4, r4, #1
	add r6, #8
	cmp r4, #7
	blt _0225BB8A
	ldr r4, _0225BC28 ; =ov27_0225CED8
	mov r7, #0
	add r6, r5, #0
_0225BBC8:
	ldr r0, _0225BC20 ; =0x000004A8
	ldr r1, [r4]
	ldr r0, [r5, r0]
	bl NewString_ReadMsgData
	mov r1, #0x4b
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, #5
	blt _0225BBC8
	sub r1, r1, #4
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0xc
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC2C ; =0x000004C4
	mov r2, #0xd
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x18
	sub r1, #0x1c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r3, #8
	bl ReadMsgData_ExpandPlaceholders
	ldr r1, _0225BC30 ; =0x000004C8
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC10: .word 0x000004AC
_0225BC14: .word ov27_0225CFC8
_0225BC18: .word 0x0000051C
_0225BC1C: .word ov27_0225CF94
_0225BC20: .word 0x000004A8
_0225BC24: .word 0x00000474
_0225BC28: .word ov27_0225CED8
_0225BC2C: .word 0x000004C4
_0225BC30: .word 0x000004C8
	thumb_func_end ov27_0225BB6C

	thumb_func_start ov27_0225BC34
ov27_0225BC34: ; 0x0225BC34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225BC78 ; =0x000004C8
	ldr r0, [r5, r0]
	bl String_Delete
	ldr r0, _0225BC7C ; =0x000004C4
	ldr r0, [r5, r0]
	bl String_Delete
	mov r7, #0x4b
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #4
_0225BC50:
	ldr r0, [r4, r7]
	bl String_Delete
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _0225BC50
	ldr r6, _0225BC80 ; =0x00000474
	mov r4, #0
_0225BC62:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0225BC6C
	bl String_Delete
_0225BC6C:
	add r4, r4, #1
	add r5, #8
	cmp r4, #7
	blt _0225BC62
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC78: .word 0x000004C8
_0225BC7C: .word 0x000004C4
_0225BC80: .word 0x00000474
	thumb_func_end ov27_0225BC34

	thumb_func_start ov27_0225BC84
ov27_0225BC84: ; 0x0225BC84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	mov r7, #0
	str r0, [sp]
	add r4, r7, #0
	add r5, sp, #4
_0225BC90:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x10]
	bl FieldSystem_ShouldDrawStartMenuIcon
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #8
	blt _0225BC90
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	mov r6, #0
	add r4, sp, #4
	add r5, r0, r1
_0225BCAE:
	ldr r0, [r4]
	cmp r0, #0
	beq _0225BCBC
	add r0, r5, #0
	bl CopyWindowToVram
	add r7, r7, #1
_0225BCBC:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #8
	blt _0225BCAE
	cmp r7, #0
	beq _0225BCE4
	mov r1, #0xf2
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r1, #0x3e
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	bl CopyWindowToVram
_0225BCE4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov27_0225BC84

	thumb_func_start ov27_0225BCE8
ov27_0225BCE8: ; 0x0225BCE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	mov r6, #0
	add r4, r5, r0
_0225BCF6:
	ldr r0, _0225BD3C ; =0x00000474
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0225BD2C
	mov r0, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x48
	sub r3, r1, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225BD40 ; =0x000E0200
	lsr r7, r3, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, _0225BD3C ; =0x00000474
	add r7, r3, r7
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #0
	asr r3, r7, #1
	bl AddTextPrinterParameterizedWithColor
_0225BD2C:
	add r6, r6, #1
	add r5, #8
	add r4, #0x10
	cmp r6, #7
	blt _0225BCF6
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BD3C: .word 0x00000474
_0225BD40: .word 0x000E0200
	thumb_func_end ov27_0225BCE8

	thumb_func_start ov27_0225BD44
ov27_0225BD44: ; 0x0225BD44
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
	.balign 4, 0
	thumb_func_end ov27_0225BD44

