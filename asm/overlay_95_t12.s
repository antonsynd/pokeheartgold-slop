	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E5D98
	.public ov95_021E5DB4
	.public ov95_021E5DD0

	.text

	.text
	thumb_func_start ov95_021E5D98
ov95_021E5D98: ; 0x021E5D98
	push {r4, lr}
	ldr r3, _021E5DB0 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r2, #0
	ldr r3, [r3]
	blx r3
	add r4, r0, #0
	bl sub_02015354
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021E5DB0: .word NNS_GfdDefaultFuncAllocTexVram
	thumb_func_end ov95_021E5D98

	thumb_func_start ov95_021E5DB4
ov95_021E5DB4: ; 0x021E5DB4
	push {r4, lr}
	ldr r3, _021E5DCC ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r2, #0
	ldr r3, [r3]
	blx r3
	add r4, r0, #0
	bl sub_02015394
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021E5DCC: .word NNS_GfdDefaultFuncAllocPlttVram
	thumb_func_end ov95_021E5DB4

	thumb_func_start ov95_021E5DD0
ov95_021E5DD0: ; 0x021E5DD0
	push {r4, lr}
	sub sp, #8
	mov r1, #0x12
	lsl r1, r1, #0xa
	add r4, r0, #0
	bl Heap_Alloc
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0x12
	ldr r0, _021E5E10 ; =ov95_021E5D98
	ldr r1, _021E5E14 ; =ov95_021E5DB4
	lsl r3, r3, #0xa
	str r4, [sp, #4]
	bl sub_02014DB4
	add r4, r0, #0
	bl sub_02015524
	add r2, r0, #0
	beq _021E5E08
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
_021E5E08:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}
	nop
_021E5E10: .word ov95_021E5D98
_021E5E14: .word ov95_021E5DB4
	thumb_func_end ov95_021E5DD0

