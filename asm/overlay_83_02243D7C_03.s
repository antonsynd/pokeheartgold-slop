	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_0224465C

    .text

	thumb_func_start ov83_0224465C
ov83_0224465C: ; 0x0224465C
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
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x30
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022446AE
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022446AE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2d
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0224465C

