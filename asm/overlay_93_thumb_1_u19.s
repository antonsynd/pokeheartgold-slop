	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225D674
	.extern ov93_0225D744
	.extern ov93_0225D768

	.text

	.text
	thumb_func_start ov93_0225D674
ov93_0225D674: ; 0x0225D674
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02014DA0
	mov r1, #0x12
	mov r0, #0x75
	lsl r1, r1, #0xa
	bl Heap_Alloc
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x75
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _0225D6D8 ; =ov93_0225D744
	ldr r1, _0225D6DC ; =ov93_0225D768
	lsl r3, r3, #0xa
	bl sub_02014DB4
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	bl sub_02015524
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	mov r0, #0xd5
	mov r1, #0
	mov r2, #0x75
	bl sub_02015264
	add r4, #0xa4
	add r1, r0, #0
	ldr r0, [r4]
	mov r2, #0xa
	mov r3, #1
	bl sub_0201526C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_0225D6D8: .word ov93_0225D744
_0225D6DC: .word ov93_0225D768
	thumb_func_end ov93_0225D674

