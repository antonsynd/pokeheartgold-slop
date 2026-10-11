	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225BA20
	.public ov49_0225CAA8

    .text

	thumb_func_start ov49_0225BA20
ov49_0225BA20: ; 0x0225BA20
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225CAA8
	mov r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov49_0225BA20

