	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E8540
	.extern ov108_021E84F8

	.text

	.text
	thumb_func_start ov108_021E8540
ov108_021E8540: ; 0x021E8540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	str r3, [sp, #0x2c]
	add r6, r1, #0
	ldr r0, [r5]
	mov r1, #0x10
	add r7, r2, #0
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x10
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5]
	mov r1, #8
	bl Heap_Alloc
	str r0, [r4, #8]
	ldr r0, [r5]
	mov r1, #0x24
	bl Heap_Alloc
	ldr r1, [r4, #8]
	mov r3, #0xe
	str r0, [r1]
	ldr r0, [r4, #8]
	lsl r3, r3, #0xc
	ldr r0, [r0]
	mov r1, #0
	str r0, [r4, #4]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, sp, #0x68
	ldrb r1, [r1, #0x14]
	ldr r0, [r4, #4]
	add r1, r1, r3
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021E85C8
	str r0, [sp, #0x30]
	b _021E85CC
_021E85C8:
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x30]
_021E85CC:
	ldr r0, [r4, #4]
	cmp r6, #0
	str r0, [sp, #0x34]
	beq _021E85E6
	lsl r0, r6, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E85F4
_021E85E6:
	lsl r0, r6, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E85F4:
	bl _ffix
	str r0, [sp, #0x38]
	cmp r7, #0
	beq _021E8610
	lsl r0, r7, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021E861E
_021E8610:
	lsl r0, r7, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021E861E:
	bl _ffix
	mov r1, #0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x84]
	str r0, [sp, #0x3c]
	cmp r1, #2
	bne _021E8636
	mov r1, #3
	lsl r1, r1, #0x12
	add r0, r0, r1
	str r0, [sp, #0x3c]
_021E8636:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r1, #0
	add r0, sp, #0x30
	add r2, sp, #0x68
	strh r1, [r0, #0x20]
	ldrb r0, [r2, #0x10]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x58]
	ldr r0, [r5]
	str r0, [sp, #0x5c]
	ldrb r1, [r2, #0x14]
	ldrb r2, [r2, #0x18]
	add r0, r5, #0
	bl ov108_021E84F8
	add r0, sp, #0x30
	bl Sprite_CreateAffine
	str r0, [r4]
	cmp r0, #0
	bne _021E866E
	bl GF_AssertFail
_021E866E:
	add r0, r4, #0
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov108_021E8540

