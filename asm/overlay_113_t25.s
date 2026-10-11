	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E64DC

	.text

	.text
	thumb_func_start ov113_021E64DC
ov113_021E64DC: ; 0x021E64DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	str r3, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #1
	add r3, r4, #4
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [r4]
	ldr r0, [r4, #4]
	ldrh r0, [r0]
	lsr r0, r0, #3
	strb r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	lsr r0, r0, #3
	strb r0, [r4, #0xd]
	ldr r0, [r4, #4]
	add r0, #0xc
	str r0, [r4, #8]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov113_021E64DC

