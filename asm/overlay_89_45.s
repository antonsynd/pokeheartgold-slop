	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225AA24
	.public ov89_0225AB64
	.extern ov89_0225C88C

	.text

	.text
	thumb_func_start ov89_0225AA24
ov89_0225AA24: ; 0x0225AA24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, r3, #0
	str r0, [sp, #4]
	add r5, r2, #0
	ldrh r0, [r3, #2]
	ldrb r1, [r1, #8]
	ldr r2, [sp, #0x38]
	str r3, [sp, #8]
	bl ov89_0225C88C
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x14]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225AA68
	mov r2, #1
	ldr r1, [sp, #8]
	str r2, [sp]
	ldrh r1, [r1, #2]
	add r0, r5, #0
	mov r3, #0x7d
	add r1, r1, #3
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	bl NNS_G2dGetUnpackedCharacterData
	b _0225AA80
_0225AA68:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x7d
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0x20
	str r0, [sp, #0x18]
	bl NNS_G2dGetUnpackedCharacterData
_0225AA80:
	ldr r1, [sp, #0x1c]
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	mov r0, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
_0225AA96:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	bhi _0225AB00
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225AAA8: ; jump table
	.short _0225AAB0 - _0225AAA8 - 2 ; case 0
	.short _0225AAC2 - _0225AAA8 - 2 ; case 1
	.short _0225AAD8 - _0225AAA8 - 2 ; case 2
	.short _0225AAEC - _0225AAA8 - 2 ; case 3
_0225AAB0:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225AABC
	ldr r1, [sp, #0xc]
	add r1, #0x80
	b _0225AABE
_0225AABC:
	ldr r1, [sp, #0xc]
_0225AABE:
	ldr r2, [sp, #0x1c]
	b _0225AB00
_0225AAC2:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225AACE
	ldr r1, [sp, #0xc]
	add r1, #0xa0
	b _0225AAD2
_0225AACE:
	ldr r1, [sp, #0xc]
	add r1, #0x20
_0225AAD2:
	ldr r0, [sp, #0x1c]
	add r2, r0, #2
	b _0225AB00
_0225AAD8:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225AAE2
	ldr r1, [sp, #0xc]
	b _0225AAE6
_0225AAE2:
	ldr r1, [sp, #0xc]
	add r1, #0x40
_0225AAE6:
	ldr r2, [sp, #0x1c]
	add r2, #0x20
	b _0225AB00
_0225AAEC:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0225AAF8
	ldr r1, [sp, #0xc]
	add r1, #0x20
	b _0225AAFC
_0225AAF8:
	ldr r1, [sp, #0xc]
	add r1, #0x60
_0225AAFC:
	ldr r2, [sp, #0x1c]
	add r2, #0x22
_0225AB00:
	mov r5, #0
	mov ip, r5
_0225AB04:
	mov r0, #0
	add r7, r0, #0
_0225AB08:
	ldrb r4, [r1, r5]
	mov r3, #0xf
	tst r3, r4
	beq _0225AB1A
	mov r3, #1
	ldrh r4, [r2]
	lsl r3, r0
	orr r3, r4
	strh r3, [r2]
_0225AB1A:
	ldrb r4, [r1, r5]
	mov r3, #0xf0
	tst r3, r4
	beq _0225AB2E
	ldrh r6, [r2]
	add r4, r0, #2
	mov r3, #1
	lsl r3, r4
	orr r3, r6
	strh r3, [r2]
_0225AB2E:
	add r7, r7, #1
	add r0, r0, #4
	add r5, r5, #1
	cmp r7, #4
	blt _0225AB08
	mov r0, ip
	add r0, r0, #1
	add r2, r2, #4
	mov ip, r0
	cmp r0, #8
	blt _0225AB04
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225AA96
	ldr r0, [sp, #8]
	ldrh r2, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x38]
	add r0, r0, r1
	strh r2, [r0, #2]
	ldr r0, [sp, #0x18]
	bl Heap_Free
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov89_0225AA24

	thumb_func_start ov89_0225AB64
ov89_0225AB64: ; 0x0225AB64
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x14]
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0x7d
	mov r1, #0x40
	bl Heap_Alloc
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	mov r2, #0x40
	add r0, r1, r0
	ldr r1, [sp, #4]
	bl MIi_CpuCopy16
	ldr r2, [sp]
	ldr r1, [sp, #8]
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x40
	bl MIi_CpuClear16
	cmp r4, #3
	beq _0225ABA0
	cmp r4, #4
	beq _0225ABD0
	b _0225AC06
_0225ABA0:
	ldr r3, [sp, #4]
	mov r2, #0x1e
	mov r7, #0
	mov r5, #3
_0225ABA8:
	ldr r4, [sp]
	ldr r0, [sp, #8]
	mov r1, #0
	add r4, r4, r0
_0225ABB0:
	ldr r6, [r3]
	ldr r0, [r4]
	lsr r6, r1
	and r6, r5
	lsl r6, r2
	orr r0, r6
	add r1, r1, #2
	stmia r4!, {r0}
	cmp r1, #0x20
	blt _0225ABB0
	add r7, r7, #1
	sub r2, r2, #2
	add r3, r3, #4
	cmp r7, #0x10
	blt _0225ABA8
	b _0225AC06
_0225ABD0:
	ldr r2, [sp]
	ldr r0, [sp, #8]
	mov r3, #0
	add r0, r2, r0
	add r0, #0x3c
	ldr r1, [sp, #4]
	add r7, r3, #0
	mov ip, r0
	mov r6, #3
_0225ABE2:
	mov r4, #0
	mov r2, ip
_0225ABE6:
	ldr r5, [r1]
	ldr r0, [r2]
	lsr r5, r4
	and r5, r6
	lsl r5, r3
	orr r0, r5
	str r0, [r2]
	add r4, r4, #2
	sub r2, r2, #4
	cmp r4, #0x20
	blt _0225ABE6
	add r7, r7, #1
	add r3, r3, #2
	add r1, r1, #4
	cmp r7, #0x10
	blt _0225ABE2
_0225AC06:
	ldr r0, [sp, #4]
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov89_0225AB64

