	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A7C0
	.public ov49_0225AA2C

    .text

	thumb_func_start ov49_0225AA2C
ov49_0225AA2C: ; 0x0225AA2C
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225CBF4
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225E3A0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov49_02258BD4
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_02265398
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r4, #0x3c
	add r0, r4, #0
	bl ov49_0225A7C0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AA2C

