	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258B2C
	.public ov90_0225B53C

	.text

	thumb_func_start ov90_02258B2C
ov90_02258B2C: ; 0x02258B2C
	push {r3, lr}
	add r3, r0, #0
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _02258B42
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r3, r0
	ldrb r3, [r3, #0x14]
	bl ov90_0225B53C
_02258B42:
	pop {r3, pc}
	thumb_func_end ov90_02258B2C

