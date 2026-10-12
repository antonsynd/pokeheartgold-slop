	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02244920
	.extern ov40_02244A84

	.text

	.text
	thumb_func_start ov40_02244920
ov40_02244920: ; 0x02244920
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r0, #0xaa
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl sub_0202FEB8
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl String_New
	add r4, r0, #0
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl String_New
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #0x80
	bl Heap_Alloc
	add r5, r0, #0
	mov r0, #0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _022449EA
	ldr r0, [sp]
	mov r7, #0
	mvn r7, r7
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, #0x3c
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	lsr r6, r7, #0x10
_0224496E:
	ldr r2, [sp, #0x14]
	mov r1, #7
	add r2, #0xe
_02244974:
	ldrh r0, [r2, #0x3c]
	cmp r0, r6
	beq _02244982
	sub r1, r1, #1
	sub r2, r2, #2
	cmp r1, r7
	bgt _02244974
_02244982:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0224499E
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov40_02244A84
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl CopyStringToU16Array
	b _022449CC
_0224499E:
	add r0, r4, #0
	bl String_SetEmpty
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl CopyU16ArrayToString
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _022449CC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov40_02244A84
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl CopyStringToU16Array
_022449CC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x28]
	add r0, #0x34
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0224496E
_022449EA:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	ble _02244A6E
_022449F2:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl Party_GetCount
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02244A5C
_02244A02:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl Party_GetMonByIndex
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02244A5C
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x80
	bl MIi_CpuClear16
	add r0, r7, #0
	mov r1, #0x75
	add r2, r5, #0
	bl GetMonData
	add r0, r4, #0
	bl String_SetEmpty
	add r0, r4, #0
	add r1, r5, #0
	bl CopyU16ArrayToString
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _02244A54
	add r0, r7, #0
	mov r1, #0xb3
	mov r2, #0
	bl SetMonData
_02244A54:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02244A02
_02244A5C:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _022449F2
_02244A6E:
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov40_02244920

