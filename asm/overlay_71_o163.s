	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A694

	.text

	.text
	thumb_func_start ov71_0224A694
ov71_0224A694: ; 0x0224A694
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp]
	cmp r0, #0
	beq _0224A6D4
	ldr r0, [r5, #0x44]
	ldr r1, [sp]
	sub r0, r4, r0
	bl _s32_div_f
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	ldr r1, [sp]
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	ldr r1, [sp]
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x60]
	str r4, [r5, #0x54]
	str r6, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x64]
	str r0, [r5, #0x68]
_0224A6D4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov71_0224A694

