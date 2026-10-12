	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241CEC
	.extern ov81_02241CA0
	.extern ov81_02242D94

	.text

	.text
	thumb_func_start ov81_02241CEC
ov81_02241CEC: ; 0x02241CEC
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl ov81_02241CA0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242D94
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov81_02241CEC

