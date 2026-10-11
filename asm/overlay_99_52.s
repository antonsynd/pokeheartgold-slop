	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E86D4
	.public ov99_021E8788
	.public ov99_021E87D0
	.public ov99_021E89EC

	.text

	thumb_func_start ov99_021E8788
ov99_021E8788: ; 0x021E8788
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E879A
	mov r5, #1
	b _021E87B0
_021E879A:
	mov r0, #0xac
	ldrsb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	bne _021E87AE
	mov r5, #1
	b _021E87B0
_021E87AE:
	mov r5, #0
_021E87B0:
	add r0, r4, #0
	bl ov99_021E89EC
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r4, #0xac
	ldrb r1, [r4]
	mov r2, #0x1a
	mov r3, #0
	bl ov99_021E86D4
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov99_021E8788

	thumb_func_start ov99_021E87D0
ov99_021E87D0: ; 0x021E87D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E87E2
	mov r0, #2
	b _021E87E4
_021E87E2:
	mov r0, #1
_021E87E4:
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x18
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r1, #0x33
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	mov r2, #0
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffsetFromOpenNarc
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r1, #0x33
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	mov r2, #4
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffsetFromOpenNarc
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov99_021E87D0

