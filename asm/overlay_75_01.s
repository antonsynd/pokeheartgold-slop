	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_022469D8
	.extern _02249BE0
	.extern ov75_02246B48
	.extern ov75_02246B98
	.extern ov75_02246BF0
	.extern ov75_02246C18
	.extern ov75_02249904
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_022469D8
ov75_022469D8: ; 0x022469D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _022469FC
	bl ov00_021ECB40
	bl ov70_022378DC
	bl ov00_021EC9D4
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
_022469FC:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02246ADE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246A0E: ; jump table
	.short _02246A18 - _02246A0E - 2 ; case 0
	.short _02246A24 - _02246A0E - 2 ; case 1
	.short _02246A44 - _02246A0E - 2 ; case 2
	.short _02246A82 - _02246A0E - 2 ; case 3
	.short _02246ADA - _02246A0E - 2 ; case 4
_02246A18:
	add r0, r4, #0
	bl ov75_02246B48
	mov r0, #1
	str r0, [r5]
	b _02246ADE
_02246A24:
	bl sub_02034DB8
	cmp r0, #0
	beq _02246ADE
	ldr r1, [r4, #0x10]
	ldr r0, _02246AE4 ; =_02249BE0
	str r1, [r0]
	ldr r0, _02246AE8 ; =ov75_02246BF0
	ldr r1, _02246AEC ; =ov75_02246C18
	bl ov00_021EC294
	mov r0, #1
	str r0, [r4, #0x7c]
	mov r0, #2
	str r0, [r5]
	b _02246ADE
_02246A44:
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #4
	ldr r1, _02246AF0 ; =ov75_02249904
	ldr r1, [r1, r2]
	blx r1
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	lsl r2, r0, #4
	ldr r0, _02246AF4 ; =ov75_02249904 + 8
	ldr r0, [r0, r2]
	mov r2, #0x73
	bl OverlayManager_New
	str r0, [r4]
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0]
	mov r0, #6
	add r4, #0x88
	str r0, [r4]
	mov r0, #3
	str r0, [r5]
	b _02246ADE
_02246A82:
	ldr r0, [r4]
	bl OverlayManager_Run
	cmp r0, #1
	bne _02246ADE
	add r1, r4, #0
	add r1, #0x80
	ldr r1, [r1]
	add r0, r4, #0
	lsl r2, r1, #4
	ldr r1, _02246AF8 ; =ov75_02249904 + 4
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4]
	bl OverlayManager_Delete
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bne _02246AB2
	mov r0, #4
	str r0, [r5]
	b _02246ADE
_02246AB2:
	lsl r1, r0, #4
	ldr r0, _02246AFC ; =ov75_02249904 + 12
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02246AC8
	add r0, r4, #0
	bl ov75_02246B98
	mov r0, #2
	str r0, [r5]
	b _02246ADE
_02246AC8:
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246AD4
	mov r0, #2
	str r0, [r5]
	b _02246ADE
_02246AD4:
	mov r0, #0
	str r0, [r5]
	b _02246ADE
_02246ADA:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246ADE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02246AE4: .word _02249BE0
_02246AE8: .word ov75_02246BF0
_02246AEC: .word ov75_02246C18
_02246AF0: .word ov75_02249904
_02246AF4: .word ov75_02249904 + 8
_02246AF8: .word ov75_02249904 + 4
_02246AFC: .word ov75_02249904 + 12
	thumb_func_end ov75_022469D8

