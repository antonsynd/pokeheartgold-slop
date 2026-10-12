	.include "asm/macros.inc"
	.include "unk_02058AEC.inc"
	.include "global.inc"
	.public sub_02059538
	.extern sub_02058D4C
	.extern sub_02059B08

	.text
	thumb_func_start sub_02059538
sub_02059538: ; 0x02059538
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	cmp r0, #0
	beq _02059546
	b _0205964A
_02059546:
	mov r0, #0xb
	mov r1, #0x8c
	bl Heap_AllocAtEnd
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x8c
	bl MI_CpuFill8
	add r0, r4, #0
	mov r1, #5
	add r0, #0x43
	strb r1, [r0]
	str r5, [r4, #0x24]
	str r6, [r4, #8]
	mov r0, #0xb
	bl MessageFormat_New
	str r0, [r4, #0x28]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xe
	mov r3, #0xb
	bl NewMsgDataFromNarc
	str r0, [r4, #0x2c]
	mov r0, #0xc8
	mov r1, #0xb
	bl String_New
	str r0, [r4, #0xc]
	mov r0, #0xc8
	mov r1, #0xb
	bl String_New
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	bl InitWindow
	add r0, r4, #0
	add r0, #0x54
	bl InitWindow
	add r0, r4, #0
	add r0, #0x64
	bl InitWindow
	mov r0, #0xb
	bl ListMenuCursorNew
	str r0, [r4, #0x78]
	bl sub_0203993C
	add r1, r4, #0
	add r1, #0x88
	strb r0, [r1]
	mov r1, #0
	str r1, [r4, #0x4c]
	str r1, [r4, #0x48]
	add r0, r4, #0
	str r1, [r4, #0x50]
	add r0, #0x89
	strb r1, [r0]
	bl sub_0203769C
	add r1, r4, #0
	add r1, #0x86
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x86
	ldrh r1, [r0]
	mov r0, #1
	eor r0, r1
	bl sub_02034818
	str r0, [r4, #0x74]
	add r0, r4, #0
	add r0, #0x88
	ldrb r0, [r0]
	cmp r0, #3
	beq _020595F0
	cmp r0, #4
	beq _02059626
	b _0205962C
_020595F0:
	bl sub_02059B08
	add r6, r0, #0
	mov r0, #0xb
	add r1, r6, #0
	bl Heap_AllocAtEnd
	str r0, [r4, #0x4c]
	mov r0, #0xb
	add r1, r6, #0
	bl Heap_AllocAtEnd
	str r0, [r4, #0x48]
	mov r0, #0xb
	bl SaveArray_Party_Alloc
	mov r1, #3
	str r0, [r4, #0x50]
	bl Party_InitWithMaxSize
	add r0, r4, #0
	mov r1, #5
	add r0, #0x44
	strb r1, [r0]
	mov r0, #0x17
	str r0, [r4, #0x34]
	b _02059640
_02059626:
	mov r0, #9
	str r0, [r4, #0x34]
	b _02059640
_0205962C:
	ldr r0, [r4, #0x24]
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, #0
	beq _0205963C
	mov r0, #9
	str r0, [r4, #0x34]
	b _02059640
_0205963C:
	mov r0, #0
	str r0, [r4, #0x34]
_02059640:
	ldr r1, _0205964C ; =sub_02058D4C
	add r0, r5, #0
	add r2, r4, #0
	bl FieldSystem_CreateTask
_0205964A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0205964C: .word sub_02058D4C
	thumb_func_end sub_02059538

