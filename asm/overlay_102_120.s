	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E93D4
	.public ov102_021EC410
	.public ov102_021EC478

	.text

	thumb_func_start ov102_021EC410
ov102_021EC410: ; 0x021EC410
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EC448 ; =0x04000050
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl G2x_SetBlendBrightness_
	ldr r1, [sp, #0x18]
	str r4, [r5]
	str r1, [r5, #0x14]
	lsl r0, r6, #0xc
	str r0, [r5, #8]
	lsl r2, r7, #0xc
	str r2, [r5, #0xc]
	ldr r0, [r5, #8]
	sub r0, r2, r0
	bl _s32_div_f
	str r0, [r5, #0x10]
	mov r2, #0
	ldr r0, _021EC44C ; =ov102_021EC478
	add r1, r5, #0
	str r2, [r5, #0x18]
	bl ov102_021E93D4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EC448: .word 0x04000050
_021EC44C: .word ov102_021EC478
	thumb_func_end ov102_021EC410

