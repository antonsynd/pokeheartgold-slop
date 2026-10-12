	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249A60

	.text

	.text
	thumb_func_start ov71_02249A60
ov71_02249A60: ; 0x02249A60
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0
	beq _02249A96
	ldr r0, [r5, #0x44]
	sub r0, r1, r0
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	sub r0, r6, r0
	bl _s32_div_f
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x54]
	add r1, r4, #0
	sub r0, r7, r0
	bl _s32_div_f
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x5c]
_02249A96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov71_02249A60

