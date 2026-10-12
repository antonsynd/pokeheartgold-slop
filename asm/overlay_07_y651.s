	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231B60
	.extern ov07_02231A70

	.text

	.text
	thumb_func_start ov07_02231B60
ov07_02231B60: ; 0x02231B60
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #9
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B60

