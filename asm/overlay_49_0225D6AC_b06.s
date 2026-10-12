	.include "asm/macros.inc"
	.include "overlay_49_0225D6AC.inc"
	.include "global.inc"
	.public ov49_0225D854

    .text

	.text
	thumb_func_start ov49_0225D854
ov49_0225D854: ; 0x0225D854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	mov r7, #0x4a
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r3, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x20]
	add r0, #0x20
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x20]
	lsl r7, r7, #2
_0225D878:
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	mov r6, #0
_0225D87E:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	bl ov49_02258830
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _0225D87E
	ldr r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #2
	blt _0225D878
	ldr r4, [sp, #8]
	ldr r6, [sp, #0x14]
	mov r7, #0
	add r5, r4, #0
_0225D8B2:
	mov r0, #0
	mov r1, #0x12
	str r0, [sp]
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	ldr r3, [sp, #0x58]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _0225D8F2
	add r1, r0, #0
	add r1, #8
	beq _0225D8E6
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _0225D8E6
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _0225D8E8
_0225D8E6:
	mov r1, #0
_0225D8E8:
	cmp r1, #0
	beq _0225D8F2
	ldr r1, [r1]
	add r0, r0, r1
	b _0225D8F4
_0225D8F2:
	mov r0, #0
_0225D8F4:
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	add r5, #0xc
	cmp r7, #2
	blt _0225D8B2
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x38]
	add r0, #0x38
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	str r0, [sp, #0x30]
_0225D924:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x30]
	str r0, [sp, #0x28]
_0225D934:
	mov r0, #5
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r1, [sp, #0x14]
	sub r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, r3
	beq _0225D988
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	bl sub_020180BC
	ldr r0, [sp, #0x18]
	cmp r0, #1
	blt _0225D988
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	bls _0225D988
_0225D96A:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	beq _0225D97C
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl NNS_G3dAnmObjDisableID
_0225D97C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r4, r4, #1
	cmp r4, r0
	blo _0225D96A
_0225D988:
	ldr r0, [sp, #0x2c]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r5, #0x14
	add r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225D934
	ldr r0, [sp, #0x3c]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0225D924
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D854

