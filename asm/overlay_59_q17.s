	.include "macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022383B4
	.extern ov59_022385AC
	.extern ov59_02238768
	.extern ov59_0223892C
	.extern ov59_02238C40
	.extern ov59_02238CFC
	.extern ov59_02238D74
	.extern ov59_02238FF4
	.extern ov59_022390A8
	.extern ov59_0223919C

	.text

	.text
	thumb_func_start ov59_022383B4
ov59_022383B4: ; 0x022383B4
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #4
	bls _022383C0
	b _022384DA
_022383C0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022383CC: ; jump table
	.short _022383D6 - _022383CC - 2 ; case 0
	.short _02238404 - _022383CC - 2 ; case 1
	.short _0223841A - _022383CC - 2 ; case 2
	.short _0223845A - _022383CC - 2 ; case 3
	.short _022384A0 - _022383CC - 2 ; case 4
_022383D6:
	ldrb r1, [r4, #0x18]
	cmp r1, #5
	blo _022383F2
	mov r1, #7
	bl ov59_02238C40
	add r0, r4, #0
	mov r1, #0x1a
	mov r2, #0xff
	bl ov59_02238CFC
	mov r0, #1
	strh r0, [r4, #0x3c]
	b _022384DA
_022383F2:
	mov r2, #2
	add r0, #0x49
	strb r2, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
	strh r2, [r4, #0x3c]
	b _022384DA
_02238404:
	bl ov59_022385AC
	cmp r0, #0
	beq _022384DA
	add r0, r4, #0
	bl ov59_02238D74
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #9
	pop {r4, pc}
_0223841A:
	mov r1, #0
	bl ov59_022390A8
	cmp r0, #0
	beq _022384DA
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_ResetAnimCtrlState
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _022384DA
_0223845A:
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _022384DA
	ldr r0, _022384E0 ; =0x000008E6
	bl PlaySE
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl Sprite_SetAnimCtrlSeq
	add r1, r4, #0
	add r1, #0x4d
	ldrb r1, [r1]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x38]
	bl sub_02031C30
	add r0, r4, #0
	bl ov59_02238768
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov59_0223919C
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _022384DA
_022384A0:
	add r1, r4, #0
	add r1, #0x50
	ldrb r1, [r1]
	cmp r1, #0
	bne _022384DA
	ldrb r1, [r4, #0x18]
	cmp r1, #5
	blo _022384B8
	mov r1, #7
	bl ov59_02238C40
	b _022384BE
_022384B8:
	mov r1, #6
	bl ov59_02238C40
_022384BE:
	add r1, r4, #0
	add r1, #0x4d
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov59_0223892C
	add r0, r4, #0
	mov r1, #0
	bl ov59_02238FF4
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #4
	pop {r4, pc}
_022384DA:
	mov r0, #0xa
	pop {r4, pc}
	nop
_022384E0: .word 0x000008E6
	thumb_func_end ov59_022383B4

