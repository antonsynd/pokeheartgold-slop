	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02014DB4
	.public sub_02014EBC
	.extern _020F6078
	.extern _020F6084
	.extern _020F6090
	.extern _020F609C
	.extern _021D10A8
	.extern sub_020154B8
	.extern sub_020154E4

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02014DB4
sub_02014DB4: ; 0x02014DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _02014EA8 ; =_021D10A8
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp, #0xc]
	mov r5, #0
_02014DC4:
	ldr r0, [r1]
	cmp r0, #0
	beq _02014DD2
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, #0x10
	blt _02014DC4
_02014DD2:
	cmp r5, #0x10
	blt _02014DDC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02014DDC:
	ldr r0, [sp, #0x2c]
	mov r1, #0xdc
	bl Heap_Alloc
	add r4, r0, #0
	bne _02014DEC
	bl GF_AssertFail
_02014DEC:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xdc
	bl memset
	add r2, r4, #0
	ldr r0, [sp, #8]
	str r7, [r4, #0x18]
	ldr r3, _02014EAC ; =_020F6090
	str r0, [r4, #0x1c]
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _02014EB0 ; =_020F6078
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x40
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _02014EB4 ; =_020F6084
	str r0, [r2]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x4c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl memset
	ldr r0, [sp, #0xc]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0xda
	strb r5, [r0]
	ldr r0, _02014EA8 ; =_021D10A8
	lsl r5, r5, #2
	str r4, [r0, r5]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _02014E80
	ldr r0, [sp, #0x2c]
	bl Camera_New
	str r0, [r4, #0x20]
	mov r3, #0
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #2
	str r3, [r4, #0x2c]
	lsl r0, r0, #0xc
	strh r0, [r4, #0x30]
	str r3, [sp]
	ldr r0, [r4, #0x20]
	ldr r1, _02014EAC ; =_020F6090
	str r0, [sp, #4]
	ldrh r2, [r4, #0x30]
	ldr r0, _02014EB4 ; =_020F6084
	bl Camera_Init_FromTargetAndPos
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdb
	strb r1, [r0]
	ldr r0, [r4, #0x20]
	bl Camera_SetStaticPtr
_02014E80:
	mov r0, #6
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	ldr r0, _02014EB8 ; =_020F609C
	mov r1, #0x14
	ldr r0, [r0, r5]
	mov r2, #0xc8
	mov r3, #5
	bl SPL_Init
	str r0, [r4]
	ldr r1, _02014EB0 ; =_020F6078
	add r0, r4, #0
	bl sub_020154E4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014EA8: .word _021D10A8
_02014EAC: .word _020F6090
_02014EB0: .word _020F6078
_02014EB4: .word _020F6084
_02014EB8: .word _020F609C
	thumb_func_end sub_02014DB4

	thumb_func_start sub_02014EBC
sub_02014EBC: ; 0x02014EBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_020154B8
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _02014EDA
	add r0, r5, #0
	add r0, #0x58
	bl NNS_GfdSetFrmTexVramState
	b _02014EFA
_02014EDA:
	mov r0, #2
	tst r0, r1
	beq _02014EFA
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014EE6:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02014EF2
	bl NNS_GfdFreeLnkTexVram
	str r7, [r4, #0x58]
_02014EF2:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014EE6
_02014EFA:
	add r0, r5, #0
	add r0, #0xd8
	ldrb r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02014F10
	add r0, r5, #0
	add r0, #0x98
	bl NNS_GfdSetFrmPlttVramState
	b _02014F38
_02014F10:
	mov r0, #8
	tst r0, r1
	beq _02014F38
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_02014F1C:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _02014F30
	bl NNS_GfdFreeLnkPlttVram
	add r0, r4, #0
	add r0, #0x98
	str r7, [r0]
_02014F30:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0x10
	blt _02014F1C
_02014F38:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xd8
	strb r1, [r0]
	str r1, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02014F50
	bl Heap_Free
	mov r0, #0
	str r0, [r5, #4]
_02014F50:
	ldr r2, _02014F80 ; =_021D10A8
	mov r1, #0
_02014F54:
	ldr r0, [r2]
	cmp r0, r5
	bne _02014F64
	ldr r0, _02014F80 ; =_021D10A8
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _02014F6C
_02014F64:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #0x10
	blt _02014F54
_02014F6C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02014F76
	bl Camera_Delete
_02014F76:
	add r0, r5, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02014F80: .word _021D10A8
	thumb_func_end sub_02014EBC

