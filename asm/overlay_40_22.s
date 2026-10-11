	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D6D0

	.text

	thumb_func_start ov40_0222D6D0
ov40_0222D6D0: ; 0x0222D6D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02013938
	ldr r0, [r4, #8]
	bl TextOBJ_Destroy
	add r4, #0x10
	add r0, r4, #0
	bl sub_02021B5C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_0222D6D0

