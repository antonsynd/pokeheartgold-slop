	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225B398
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225B398
ov27_0225B398: ; 0x0225B398
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	str r1, [sp]
	cmp r1, #7
	blt _0225B3A6
	bl GF_AssertFail
_0225B3A6:
	ldr r0, _0225B3F0 ; =0x000004CC
	mov r4, #0
	add r5, r4, #0
	add r7, r6, r0
_0225B3AE:
	ldr r0, _0225B3F4 ; =0x0000051C
	ldr r0, [r6, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r1, r0, #3
	ldr r0, _0225B3F8 ; =ov27_0225CFC8
	add r0, r0, r1
	ldrb r1, [r4, r0]
	ldr r0, _0225B3FC ; =ov27_0225CF94
	lsl r2, r1, #2
	ldrh r0, [r0, r2]
	mov r2, #0
	cmp r1, #0xd
	beq _0225B3E4
	ldr r1, _0225B400 ; =0x0000FFFF
	cmp r0, r1
	beq _0225B3E4
	ldr r0, [sp]
	cmp r4, r0
	bne _0225B3D8
	mov r2, #0x10
_0225B3D8:
	lsl r0, r2, #1
	add r0, r7, r0
	add r1, r5, #0
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_0225B3E4:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blt _0225B3AE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B3F0: .word 0x000004CC
_0225B3F4: .word 0x0000051C
_0225B3F8: .word ov27_0225CFC8
_0225B3FC: .word ov27_0225CF94
_0225B400: .word 0x0000FFFF
	thumb_func_end ov27_0225B398

