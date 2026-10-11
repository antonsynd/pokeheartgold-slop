	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E93D4
	.public ov102_021EC37C
	.public ov102_021EC3D4

	.text

	thumb_func_start ov102_021EC37C
ov102_021EC37C: ; 0x021EC37C
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r4, #4]
	str r1, [r4, #0x14]
	str r3, [r4, #8]
	sub r0, r0, r3
	bl _s32_div_f
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [r4, #0xc]
	ldr r0, _021EC3A8 ; =ov102_021EC3D4
	add r1, r4, #0
	str r2, [r4, #0x18]
	bl ov102_021E93D4
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.balign 4, 0
_021EC3A8: .word ov102_021EC3D4
	thumb_func_end ov102_021EC37C

