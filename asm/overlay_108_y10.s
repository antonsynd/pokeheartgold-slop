	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E5B98
	.public ov108_021E5BFC
	.extern ov108_021E846C

	.text

	.text
	thumb_func_start ov108_021E5B98
ov108_021E5B98: ; 0x021E5B98
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5BAA
	cmp r0, #1
	beq _021E5BD8
	b _021E5BF0
_021E5BAA:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5BF0
_021E5BD8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5BF0
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov108_021E846C
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, pc}
_021E5BF0:
	add r0, r4, #0
	bl ov108_021E846C
	mov r0, #5
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov108_021E5B98

	thumb_func_start ov108_021E5BFC
ov108_021E5BFC: ; 0x021E5BFC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5C0E
	cmp r0, #1
	beq _021E5C2E
	b _021E5C46
_021E5C0E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5C46
_021E5C2E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5C46
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	bl ov108_021E846C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021E5C46:
	add r0, r4, #0
	bl ov108_021E846C
	mov r0, #6
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov108_021E5BFC

