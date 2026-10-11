	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FA00

    .text

	thumb_func_start ov83_0223FA00
ov83_0223FA00: ; 0x0223FA00
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x22
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0223FA4E
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x23
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0223FA4E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	ldr r0, _0223FA70 ; =0x000007A8
	ldr r2, [r5, #0x4c]
	ldr r0, [r5, r0]
	mov r1, #0x24
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223FA70: .word 0x000007A8
	thumb_func_end ov83_0223FA00

