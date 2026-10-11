	.include "asm/macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_022313C0
	.public ov80_022313C8
	.public ov80_022314A0
	.public ov80_022314DC
	.public ov80_02231518
	.public ov80_0223151C
	.public ov80_0223157C
	.public ov80_022317C0
	.public ov80_022317CC
	.public ov80_022317D0
	.public ov80_02231804
	.public ov80_02231828
	.extern ov80_02231930
	.extern ov80_02231A14

    .text

	.text
	thumb_func_start ov80_022313C0
ov80_022313C0: ; 0x022313C0
	ldr r3, _022313C4 ; =ov80_022313C8
	bx r3
	.balign 4, 0
_022313C4: .word ov80_022313C8
	thumb_func_end ov80_022313C0

	thumb_func_start ov80_022313C8
ov80_022313C8: ; 0x022313C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r2, [r5, #4]
	mov r4, #0
	mov r6, #1
	cmp r2, #0
	beq _022313DA
	mov r6, #2
_022313DA:
	ldr r1, _02231490 ; =0x000006F5
	lsl r3, r2, #3
	ldrb r0, [r5, r1]
	add r1, #0xf
	add r1, r5, r1
	add r2, r2, r3
	add r1, r1, r2
	bl sub_02030BD0
	add r7, r0, #0
	add r0, r5, #0
	bl ov80_02231A14
	strb r0, [r5, #7]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp]
	ldr r0, _02231490 ; =0x000006F5
	ldrb r3, [r5, #5]
	ldrb r0, [r5, r0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov80_022372D8
	ldrb r0, [r5, #5]
	add r1, r6, #0
	add r3, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r5, #4]
	ldrh r2, [r5, #0xa]
	bl ov80_02237334
	ldrb r0, [r5, #5]
	add r6, r5, #0
	add r6, #0x18
	lsl r0, r0, #0x19
	lsr r0, r0, #0x17
	ldrh r1, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, _02231494 ; =0x0000FECD
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02231444
	add r0, r5, #0
	bl ov80_0223793C
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_02231444:
	ldr r0, [sp, #0xc]
	ldrh r1, [r6, r0]
	ldr r0, _02231498 ; =0x00000133
	cmp r1, r0
	bne _02231450
	mov r4, #1
_02231450:
	mov r0, #0x4d
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223145A
	mov r4, #2
_0223145A:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldr r1, _0223149C ; =0x000006F4
	ldrb r3, [r5, #5]
	ldrb r1, [r5, r1]
	mov r0, #1
	add r2, r7, #0
	bl ov80_02237448
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02231490: .word 0x000006F5
_02231494: .word 0x0000FECD
_02231498: .word 0x00000133
_0223149C: .word 0x000006F4
	thumb_func_end ov80_022313C8

	thumb_func_start ov80_022314A0
ov80_022314A0: ; 0x022314A0
	push {r4, lr}
	add r4, r0, #0
	beq _022314D0
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022314B4
	bl Heap_Free
_022314B4:
	ldr r0, _022314D4 ; =0x00000D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022314C0
	bl Heap_Free
_022314C0:
	ldr r2, _022314D8 ; =0x00000D98
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl Heap_Free
_022314D0:
	pop {r4, pc}
	nop
_022314D4: .word 0x00000D8C
_022314D8: .word 0x00000D98
	thumb_func_end ov80_022314A0

	thumb_func_start ov80_022314DC
ov80_022314DC: ; 0x022314DC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0
	bl ov80_02231518
	ldr r1, _02231510 ; =0x000006F2
	strh r0, [r4, r1]
	ldrh r2, [r4, r1]
	add r0, r1, #3
	strb r2, [r4, r0]
	ldrh r0, [r4, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov80_02237920
	ldr r1, _02231514 ; =0x000006F4
	strb r0, [r4, r1]
	add r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x11
	blo _0223150E
	mov r2, #0x11
	add r0, r1, #1
	strb r2, [r4, r0]
_0223150E:
	pop {r4, pc}
	.balign 4, 0
_02231510: .word 0x000006F2
_02231514: .word 0x000006F4
	thumb_func_end ov80_022314DC

	thumb_func_start ov80_02231518
ov80_02231518: ; 0x02231518
	ldrh r0, [r0, #6]
	bx lr
	thumb_func_end ov80_02231518

	thumb_func_start ov80_0223151C
ov80_0223151C: ; 0x0223151C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldrb r6, [r5, #4]
	add r4, r1, #0
	cmp r6, #3
	beq _0223156E
	add r0, r6, #0
	bl sub_0205C0F4
	add r7, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205C11C
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205C0F4
	bl sub_0205C268
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl sub_0205C144
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	add r0, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, _02231578 ; =0x000006FC
	ldr r2, [sp, #0x10]
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	add r1, r7, #0
	bl sub_020313C4
	add sp, #0x20
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0223156E:
	mov r0, #0
	strh r0, [r4]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231578: .word 0x000006FC
	thumb_func_end ov80_0223151C

	thumb_func_start ov80_0223157C
ov80_0223157C: ; 0x0223157C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _022317B4 ; =0x000006FC
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl sub_02030C5C
	str r0, [sp, #4]
	ldr r0, _022317B4 ; =0x000006FC
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [sp, #0xc]
	ldrb r1, [r5, #4]
	add r0, sp, #0x14
	strb r1, [r0, #8]
	mov r1, #0
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022317B8 ; =0x000006F8
	add r2, r1, #0
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl sub_02030B30
	ldr r0, _022317B8 ; =0x000006F8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02030B1C
	ldr r0, _022317B4 ; =0x000006FC
	ldr r0, [r5, r0]
	bl SaveArray_Party_Get
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	str r0, [sp, #8]
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrb r0, [r5, #4]
	bl sub_0205C11C
	add r7, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205C11C
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl FrontierSave_GetStat
	add r7, r0, #0
	mov r2, #0
	ldrb r1, [r5, #5]
	add r0, sp, #0x14
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r0, _022317B8 ; =0x000006F8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02030B30
	ldrb r0, [r5, #4]
	bl sub_0205C0CC
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	bl sub_0205C0CC
	bl sub_0205C268
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_02031108
	cmp r4, #2
	beq _022316C8
	ldrb r4, [r5, #4]
	cmp r4, #3
	beq _02231658
	add r0, r4, #0
	bl sub_0205C0F4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205C0F4
	bl sub_0205C268
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_02031108
	b _0223169A
_02231658:
	cmp r7, r6
	beq _0223167C
	add r0, r4, #0
	bl sub_0205C0F4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205C0F4
	bl sub_0205C268
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_02031108
	b _0223169A
_0223167C:
	add r0, r4, #0
	bl sub_0205C0F4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205C0F4
	bl sub_0205C268
	add r2, r0, #0
	ldrh r3, [r5, #8]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0203126C
_0223169A:
	ldrb r1, [r5, #6]
	add r0, sp, #0x14
	mov r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x1c
	str r0, [sp]
	ldrb r2, [r5, #4]
	ldr r0, [sp, #4]
	mov r1, #5
	bl sub_02030C6C
	ldrb r0, [r5, #4]
	cmp r0, #3
	bne _022316C8
	mov r0, #0x6a
	bl sub_0205C268
	add r2, r0, #0
	ldrb r3, [r5, #6]
	ldr r0, [sp, #0xc]
	mov r1, #0x6a
	bl sub_02031108
_022316C8:
	mov r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_022316CE:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #0x18]
	lsl r2, r4, #0x18
	mov r1, #2
	strh r0, [r7]
	ldr r0, _022317B8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030B30
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x14
	blo _022316CE
	mov r4, #0
	add r6, sp, #0x1c
	add r7, sp, #0x14
_022316F8:
	mov r0, #0x26
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	lsl r2, r4, #0x18
	mov r1, #3
	strb r0, [r7, #8]
	ldr r0, _022317B8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030B30
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _022316F8
	ldr r0, _022317BC ; =0x00000704
	mov r4, #0
	add r6, r5, r0
	add r7, sp, #0x14
_02231726:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	bl sub_02030BD0
	strb r0, [r7, #8]
	ldr r0, _022317B4 ; =0x000006FC
	lsl r2, r4, #0x18
	ldrb r1, [r5, #4]
	ldrb r3, [r7, #8]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	bl ov80_02231930
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x12
	blo _02231726
	mov r4, #0
	add r6, sp, #0x14
	add r7, sp, #0x14
_02231758:
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	lsl r2, r4, #0x18
	mov r1, #4
	strh r0, [r7]
	ldr r0, _022317B8 ; =0x000006F8
	str r6, [sp]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030B30
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x14
	blo _02231758
	ldrb r0, [r5, #4]
	bl sub_0205C11C
	add r4, r0, #0
	ldrb r0, [r5, #4]
	bl sub_0205C11C
	bl sub_0205C268
	add r5, r0, #0
	ldr r0, [sp, #8]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r3, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	add r2, r5, #0
	lsr r3, r3, #0x10
	bl sub_02031108
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022317B4: .word 0x000006FC
_022317B8: .word 0x000006F8
_022317BC: .word 0x00000704
	thumb_func_end ov80_0223157C

	thumb_func_start ov80_022317C0
ov80_022317C0: ; 0x022317C0
	ldrb r1, [r0, #5]
	add r1, r1, #1
	strb r1, [r0, #5]
	ldrb r0, [r0, #5]
	bx lr
	.balign 4, 0
	thumb_func_end ov80_022317C0

	thumb_func_start ov80_022317CC
ov80_022317CC: ; 0x022317CC
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov80_022317CC

	thumb_func_start ov80_022317D0
ov80_022317D0: ; 0x022317D0
	push {r3, lr}
	sub sp, #0x30
	add r2, r0, #0
	ldrb r3, [r2, #5]
	add r0, sp, #0
	lsl r3, r3, #1
	add r1, r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x17
	add r1, r2, r1
	ldrh r1, [r1, #0x18]
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov80_0222A30C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov80_022317D0

	thumb_func_start ov80_02231804
ov80_02231804: ; 0x02231804
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	ldr r0, _02231824 ; =0x00000704
	add r2, r4, r0
	lsl r0, r1, #3
	add r0, r1, r0
	add r0, r2, r0
	bl sub_02030C34
	add r0, r4, #0
	mov r1, #1
	bl ov80_0223157C
	pop {r4, pc}
	nop
_02231824: .word 0x00000704
	thumb_func_end ov80_02231804

	thumb_func_start ov80_02231828
ov80_02231828: ; 0x02231828
	mov r1, #1
	strb r1, [r0, #6]
	ldrh r1, [r0, #0xa]
	cmp r1, #0x12
	bhs _02231836
	add r1, r1, #1
	strh r1, [r0, #0xa]
_02231836:
	ldr r3, _02231840 ; =ov80_0223157C
	mov r1, #0
	strb r1, [r0, #5]
	bx r3
	nop
_02231840: .word ov80_0223157C
	thumb_func_end ov80_02231828

