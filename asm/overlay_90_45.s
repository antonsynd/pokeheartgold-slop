	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258E54
	.public ov90_022596C8
	.public ov90_0225A2B0
	.public ov90_0225A65C

	.text

	thumb_func_start ov90_022596C8
ov90_022596C8: ; 0x022596C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0xc8
	add r4, r1, #0
	bl NARC_New
	mov r1, #0x12
	lsl r1, r1, #4
	str r1, [sp]
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r6, r0, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r6, #0
	mov r1, #6
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r3, #2
	lsl r3, r3, #8
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	add r3, r5, r3
	str r4, [sp]
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r6, #0
	mov r1, #8
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldrh r1, [r5, #4]
	add r0, r6, #0
	add r2, r4, #0
	bl ov90_0225A65C
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	ldr r0, _02259780 ; =0x00001388
	add r1, r6, #0
	str r0, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0xb
	mov r3, #5
	str r4, [sp, #0x10]
	bl ov90_02258E54
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	str r6, [sp]
	str r4, [sp, #4]
	add r1, r5, #0
	add r2, r5, #0
	ldrh r3, [r5, #4]
	add r0, r5, r0
	add r1, #0x30
	add r2, #0x3c
	bl ov90_0225A2B0
	add r0, r6, #0
	bl NARC_Delete
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02259780: .word 0x00001388
	thumb_func_end ov90_022596C8

