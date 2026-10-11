	.include "asm/macros.inc"
	.include "overlay_80_0222FD08.inc"
	.include "global.inc"
	.public ov80_0222FD08
	.extern _0223DD40

    .text

	.text
	thumb_func_start ov80_0222FD08
ov80_0222FD08: ; 0x0222FD08
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	ldr r1, _0222FED4 ; =0x00000708
	mov r0, #0xb
	add r7, r2, #0
	str r3, [sp]
	bl Heap_Alloc
	ldr r1, _0222FED8 ; =_0223DD40
	ldr r2, _0222FED4 ; =0x00000708
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r5, [r0]
	add r0, r4, #0
	bl sub_0203094C
	ldr r1, _0222FEDC ; =0x000004F4
	str r0, [r5, r1]
	add r0, r1, #4
	str r4, [r5, r0]
	mov r0, #0xb
	ldr r1, _0222FED8 ; =_0223DD40
	str r0, [r5]
	ldr r5, [r1]
	bl SaveArray_Party_Alloc
	ldr r1, _0222FEE0 ; =0x000004D4
	str r0, [r5, r1]
	mov r0, #0xb
	bl SaveArray_Party_Alloc
	ldr r1, _0222FEE4 ; =0x000004D8
	str r0, [r5, r1]
	add r1, #0x1c
	add r0, r4, #0
	ldr r5, [r5, r1]
	bl sub_02030AE8
	add r4, r0, #0
	cmp r6, #0
	bne _0222FE1A
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r1, [r0]
	strb r7, [r1, #4]
	ldr r0, [sp]
	strb r0, [r1, #5]
	mov r0, #0
	strb r0, [r1, #6]
	add r0, r5, #0
	bl sub_02030940
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r2, [r0]
	ldrb r3, [r2, #4]
	cmp r3, #3
	bne _0222FD8E
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r2, r0]
	bl Save_VarsFlags_Get
	bl Save_VarsFlags_GetVar4052
	b _0222FDA2
_0222FD8E:
	ldrb r2, [r2, #5]
	add r0, r4, #0
	mov r1, #0xa
	lsl r2, r2, #2
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_02030AD4
_0222FDA2:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _0222FE0A
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r5, [r0]
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	add r4, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205BFF0
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205BFF0
	bl sub_0205C268
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl FrontierSave_GetStat
	strh r0, [r5, #0xc]
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r4, [r0]
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r4, r0]
	bl Save_Frontier_GetStatic
	add r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205C048
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205C048
	bl sub_0205C268
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl FrontierSave_GetStat
	b _0222FE12
_0222FE0A:
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r4, [r0]
	mov r0, #0
	strh r0, [r4, #0xc]
_0222FE12:
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	b _0222FEA8
_0222FE1A:
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02030A24
	ldr r1, _0222FED8 ; =_0223DD40
	ldr r4, [r1]
	mov r1, #0
	strb r0, [r4, #4]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02030A24
	mov r2, #0
	strb r0, [r4, #5]
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02030A24
	strb r0, [r4, #6]
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r5, [r0]
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205BFF0
	add r7, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205BFF0
	bl sub_0205C268
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl FrontierSave_GetStat
	strh r0, [r5, #0xc]
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r4, [r0]
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r4, r0]
	bl Save_Frontier_GetStatic
	add r6, r0, #0
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #4]
	bl sub_0205C048
	add r7, r0, #0
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #4]
	bl sub_0205C048
	bl sub_0205C268
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl FrontierSave_GetStat
	strh r0, [r4, #8]
_0222FEA8:
	ldr r0, _0222FED8 ; =_0223DD40
	mov r1, #7
	ldr r4, [r0]
	ldrh r0, [r4, #0xc]
	bl _s32_div_f
	strh r0, [r4, #0xe]
	ldrb r0, [r4, #4]
	bl ov80_02237254
	cmp r0, #1
	bne _0222FECC
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r1, [r0]
	ldr r0, _0222FEE8 ; =0x000004F8
	ldr r0, [r1, r0]
	bl ov80_0222A840
_0222FECC:
	ldr r0, _0222FED8 ; =_0223DD40
	ldr r0, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222FED4: .word 0x00000708
_0222FED8: .word _0223DD40
_0222FEDC: .word 0x000004F4
_0222FEE0: .word 0x000004D4
_0222FEE4: .word 0x000004D8
_0222FEE8: .word 0x000004F8
	thumb_func_end ov80_0222FD08

