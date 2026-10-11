	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED144
	.public ov103_021ED53C

	.text

	thumb_func_start ov103_021ED53C
ov103_021ED53C: ; 0x021ED53C
	push {r4, lr}
	add r4, r0, #0
	bl ov103_021ED144
	cmp r0, #0
	bne _021ED54C
	ldr r0, [r4, #0x28]
	pop {r4, pc}
_021ED54C:
	mov r0, #5
	pop {r4, pc}
	thumb_func_end ov103_021ED53C

