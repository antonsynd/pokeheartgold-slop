	.include "macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_022310C4
	.extern ov80_022318D0
	.extern ov80_02231930
	.extern ov80_0223DD44

    .text

	.text
	thumb_func_start ov80_022310C4
ov80_022310C4: ; 0x022310C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r1, _022313A0 ; =0x00000D98
	mov r0, #0xb
	add r6, r2, #0
	str r3, [sp, #8]
	bl Heap_Alloc
	ldr r1, _022313A4 ; =ov80_0223DD44
	ldr r2, _022313A0 ; =0x00000D98
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r4, [r0]
	ldr r0, [sp, #4]
	bl sub_02030B04
	ldr r1, _022313A8 ; =0x000006F8
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xb
	ldr r1, _022313A4 ; =ov80_0223DD44
	str r0, [r4]
	ldr r4, [r1]
	bl SaveArray_Party_Alloc
	mov r1, #0x99
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb
	bl AllocMonZeroed
	ldr r1, _022313AC ; =0x00000D8C
	str r0, [r4, r1]
	ldr r0, _022313A8 ; =0x000006F8
	ldr r4, [r4, r0]
	ldr r0, [sp, #4]
	bl sub_02030C5C
	str r0, [sp, #0xc]
	cmp r5, #0
	bne _022311E0
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	strb r6, [r0, #4]
	ldrb r0, [r0, #4]
	bl ov80_0223787C
	add r6, r0, #0
	ldr r0, _022313A4 ; =ov80_0223DD44
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #5]
	add r0, r4, #0
	bl sub_02030AF8
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r1, [r0]
	ldrb r2, [r1, #4]
	cmp r2, #3
	bne _02231158
	ldr r0, _022313B0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl Save_VarsFlags_Get
	bl Save_VarsFlags_GetVar4052
	b _02231164
_02231158:
	ldr r0, [sp, #0xc]
	mov r3, #0
	mov r1, #5
	str r3, [sp]
	bl sub_02030CA0
_02231164:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _022311A6
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r1, [r0]
	ldr r0, _022313B0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl Save_Frontier_GetStatic
	add r4, r0, #0
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl sub_0205C0CC
	add r5, r0, #0
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl sub_0205C0CC
	bl sub_0205C268
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl FrontierSave_GetStat
	ldr r1, _022313A4 ; =ov80_0223DD44
	ldr r1, [r1]
	strh r0, [r1, #8]
	b _022311CA
_022311A6:
	ldr r5, _022313A4 ; =ov80_0223DD44
	mov r4, #0
	ldr r0, [r5]
	ldr r7, _022313B0 ; =0x000006FC
	strh r4, [r0, #8]
_022311B0:
	ldr r1, [r5]
	lsl r2, r4, #0x18
	ldr r0, [r1, r7]
	ldrb r1, [r1, #4]
	lsr r2, r2, #0x18
	mov r3, #0
	bl ov80_02231930
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _022311B0
_022311CA:
	ldr r0, _022313A4 ; =ov80_0223DD44
	mov r1, #0x26
	ldr r3, [r0]
	ldr r0, [sp, #8]
	lsl r1, r1, #4
	strb r0, [r3, r1]
	add r0, sp, #0x20
	ldrb r2, [r0, #0x10]
	add r0, r1, #1
	strb r2, [r3, r0]
	b _022312CA
_022311E0:
	ldr r0, _022313A4 ; =ov80_0223DD44
	mov r1, #0
	ldr r5, [r0]
	str r1, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030B88
	strb r0, [r5, #4]
	ldrb r0, [r5, #4]
	bl ov80_0223787C
	mov r2, #0
	add r6, r0, #0
	ldr r0, _022313A4 ; =ov80_0223DD44
	str r2, [sp]
	ldr r5, [r0]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02030B88
	strb r0, [r5, #5]
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r1, [r0]
	ldr r0, _022313B0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl sub_0205C0CC
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205C0CC
	bl sub_0205C268
	add r2, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl FrontierSave_GetStat
	ldr r1, _022313A4 ; =ov80_0223DD44
	mov r5, #0
	ldr r1, [r1]
	cmp r6, #0
	strh r0, [r1, #8]
	ble _02231272
	add r7, r5, #0
_0223124C:
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #3
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r7, [sp]
	bl sub_02030B88
	ldr r1, _022313A4 ; =ov80_0223DD44
	ldr r1, [r1]
	add r2, r1, r5
	mov r1, #0x26
	lsl r1, r1, #4
	strb r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blt _0223124C
_02231272:
	mov r5, #0
	add r7, r5, #0
_02231276:
	lsl r2, r5, #0x18
	add r0, r4, #0
	mov r1, #2
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r7, [sp]
	bl sub_02030B88
	ldr r1, _022313A4 ; =ov80_0223DD44
	ldr r2, [r1]
	lsl r1, r5, #1
	add r1, r2, r1
	strh r0, [r1, #0x18]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x14
	blo _02231276
	mov r5, #0
_0223129C:
	ldr r0, _022313A4 ; =ov80_0223DD44
	lsl r2, r5, #0x18
	ldr r7, [r0]
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030B88
	lsl r1, r5, #1
	lsl r0, r0, #0x18
	add r2, r7, r1
	mov r1, #0x9a
	lsr r0, r0, #0x18
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x14
	blo _0223129C
_022312CA:
	mov r5, #0
	cmp r6, #0
	ble _02231304
	ldr r7, _022313A4 ; =ov80_0223DD44
_022312D2:
	ldr r4, [r7]
	ldr r0, _022313B0 ; =0x000006FC
	ldr r0, [r4, r0]
	bl SaveArray_Party_Get
	mov r1, #0x26
	add r2, r4, r5
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	bl Party_GetMonByIndex
	ldr r4, [r7]
	mov r1, #6
	mov r2, #0
	bl GetMonData
	lsl r1, r5, #1
	add r2, r4, r1
	ldr r1, _022313B4 ; =0x00000728
	strh r0, [r2, r1]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r6
	blt _022312D2
_02231304:
	ldr r0, _022313A4 ; =ov80_0223DD44
	mov r1, #0xa
	ldr r4, [r0]
	mov r0, #0
	str r0, [r4, #0x10]
	ldrh r0, [r4, #8]
	bl _s32_div_f
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #4]
	cmp r0, #2
	bne _0223133E
	ldr r4, _022313A4 ; =ov80_0223DD44
	ldr r6, _022313B8 ; =0x00000716
	mov r5, #0
	mov r7, #9
_02231324:
	ldr r1, [r4]
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r1, r1, r6
	add r2, r7, #0
	bl sub_02030BF4
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x12
	blo _02231324
	b _0223137E
_0223133E:
	ldr r5, _022313A4 ; =ov80_0223DD44
	mov r4, #0
	add r7, sp, #0x14
_02231344:
	ldr r1, [r5]
	str r7, [sp]
	ldrb r1, [r1, #4]
	lsl r2, r4, #0x18
	add r3, sp, #0x14
	ldr r0, [sp, #4]
	lsr r2, r2, #0x18
	add r3, #2
	bl ov80_022318D0
	add r2, r0, #0
	lsl r0, r4, #0x18
	lsl r2, r2, #0x18
	ldr r1, [r5]
	ldr r3, _022313BC ; =0x00000704
	lsr r0, r0, #0x18
	add r6, r1, r3
	ldrb r3, [r1, #4]
	lsr r2, r2, #0x18
	lsl r1, r3, #3
	add r1, r3, r1
	add r1, r6, r1
	bl sub_02030BF4
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _02231344
_0223137E:
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	bl ov80_0223792C
	cmp r0, #1
	bne _02231398
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r1, [r0]
	ldr r0, _022313B0 ; =0x000006FC
	ldr r0, [r1, r0]
	bl ov80_0222A840
_02231398:
	ldr r0, _022313A4 ; =ov80_0223DD44
	ldr r0, [r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022313A0: .word 0x00000D98
_022313A4: .word ov80_0223DD44
_022313A8: .word 0x000006F8
_022313AC: .word 0x00000D8C
_022313B0: .word 0x000006FC
_022313B4: .word 0x00000728
_022313B8: .word 0x00000716
_022313BC: .word 0x00000704
	thumb_func_end ov80_022310C4

