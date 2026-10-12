	.include "asm/macros.inc"
	.include "overlay_86.inc"
	.include "global.inc"
	.public ov86_021E73EC

	.text

	.text
	thumb_func_start ov86_021E73EC
ov86_021E73EC: ; 0x021E73EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl GetPokedexDataNarcID
	mov r1, #1
	str r1, [sp]
	add r1, sp, #8
	add r5, #0x12
	str r1, [sp, #4]
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x79
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov86_021E73EC

