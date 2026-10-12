	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224AAF8
	.extern ov71_02247000

	.text

	.text
	thumb_func_start ov71_0224AAF8
ov71_0224AAF8: ; 0x0224AAF8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0224AB10
	cmp r0, #1
	beq _0224AB38
	cmp r0, #2
	beq _0224AB62
	b _0224AB76
_0224AB10:
	mov r0, #0x4a
	lsl r0, r0, #2
	mov r3, #1
	str r0, [sp]
	add r0, r5, #0
	str r3, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	lsl r1, r3, #0xc
	lsl r2, r3, #0xa
	bl ov71_02247000
	str r0, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224AB76
_0224AB38:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xd
	ble _0224AB76
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224AB76
_0224AB62:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224AB76
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _0224AB76
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0224AB76:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov71_0224AAF8

