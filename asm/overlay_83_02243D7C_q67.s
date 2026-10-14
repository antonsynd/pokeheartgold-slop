	.include "macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245838
	.extern ov83_022448AC
	.extern ov83_022448E4
	.extern ov83_022449D4
	.extern ov83_02244AB0
	.extern ov83_02245D48
	.extern ov83_02246114

    .text

	.text
	thumb_func_start ov83_02245838
ov83_02245838: ; 0x02245838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245994 ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r4, r0, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02244AB0
	cmp r7, #1
	bne _0224588E
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	ldr r0, _02245998 ; =0x00000632
	bl PlaySE
	b _022458A0
_0224588E:
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	ldr r0, _0224599C ; =0x00000633
	bl PlaySE
_022458A0:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrb r0, [r5, #0x14]
	bne _022458C6
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	strb r7, [r1, r0]
	b _022458D6
_022458C6:
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0
	strb r2, [r1, r0]
_022458D6:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224590E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x32
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
	b _02245968
_0224590E:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02245946
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x37
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
	b _02245968
_02245946:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x2d
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
_02245968:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov83_022448E4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov83_022449D4
	ldrb r0, [r5, #0xd]
	cmp r0, r6
	bne _02245990
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246114
_02245990:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245994: .word 0x0000055C
_02245998: .word 0x00000632
_0224599C: .word 0x00000633
	thumb_func_end ov83_02245838

