	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225CA30
	.public ov49_0225CAD4

    .text

	thumb_func_start ov49_0225CA30
ov49_0225CA30: ; 0x0225CA30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x28]
	cmp r7, #3
	blo _0225CA46
	bl GF_AssertFail
_0225CA46:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	mov r1, #0x37
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #1
	strh r0, [r5, #8]
	mov r0, #5
	strh r7, [r5, #0xa]
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	add r1, #0x5d
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0225CA96
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov49_0225CAD4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0225CA96:
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #2
	bl ov49_0225CAD4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225CA30

