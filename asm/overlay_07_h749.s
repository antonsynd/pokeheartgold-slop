	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022332F4
	.extern ov07_02232F74
	.extern ov07_02237254

	.text

	.text
	thumb_func_start ov07_022332F4
ov07_022332F4: ; 0x022332F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02233304
	cmp r0, #1
	beq _02233314
	b _0223337C
_02233304:
	ldr r0, [r5, #0x18]
	cmp r0, #3
	blt _0223330E
	bl GF_AssertFail
_0223330E:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02233314:
	ldr r1, [r5, #0x18]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r0, _02233380 ; =ov07_02237254
	ldr r1, [r5, #0xc]
	add r0, r0, r3
	lsl r2, r1, #1
	ldrsh r4, [r2, r0]
	add r0, r1, #1
	str r0, [r5, #0xc]
	cmp r0, #0xb
	bgt _02233332
	cmp r4, #0xff
	bne _02233352
_02233332:
	ldr r0, [r5, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r5, #0x18]
	add r0, r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x30]
	bl ManagedSprite_SetAffineZRotation
	add r0, r5, #0
	mov r1, #0x12
	bl ov07_02232F74
	mov r0, #1
	pop {r3, r4, r5, pc}
_02233352:
	cmp r0, #5
	bne _0223335E
	ldr r0, _02233384 ; =0x000005FD
	mov r1, #0x75
	bl sub_0200602C
_0223335E:
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, _02233388 ; =0x0001FFFE
	mov r1, #0x5a
	mul r0, r4
	lsl r1, r1, #2
	bl _s32_div_f
	add r1, r0, #0
	ldr r0, [r5, #0x30]
	bl ManagedSprite_OffsetAffineZRotation
_0223337C:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02233380: .word ov07_02237254
_02233384: .word 0x000005FD
_02233388: .word 0x0001FFFE
	thumb_func_end ov07_022332F4

