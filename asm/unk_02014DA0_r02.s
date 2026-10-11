	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02014EBC
	.extern _021D10A8
	.extern sub_020154B8

	.public NNS_G3dGlb

	.text
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

