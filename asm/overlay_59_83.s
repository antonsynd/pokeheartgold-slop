	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C3AC

	.text

	thumb_func_start ov59_0223C3AC
ov59_0223C3AC: ; 0x0223C3AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0223C3BE
	bl Pokepic_Delete
	mov r0, #0
	str r0, [r4, #0x20]
_0223C3BE:
	pop {r4, pc}
	thumb_func_end ov59_0223C3AC

