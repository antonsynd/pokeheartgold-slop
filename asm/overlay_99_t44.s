	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7158
	.public ov99_021E7180

	.text

	.text
	thumb_func_start ov99_021E7158
ov99_021E7158: ; 0x021E7158
	push {r3, lr}
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	lsl r0, r1, #0xd
	lsr r2, r0, #0x1b
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1b
	cmp r2, r0
	bne _021E717C
	lsl r0, r1, #0x12
	lsr r0, r0, #0x17
	mov r1, #0x1e
	bl _u32_div_f
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bne _021E717E
_021E717C:
	mov r0, #0x1e
_021E717E:
	pop {r3, pc}
	thumb_func_end ov99_021E7158

	thumb_func_start ov99_021E7180
ov99_021E7180: ; 0x021E7180
	ldr r0, [r0, #0x10]
	ldr r2, [r0, #4]
	sub r0, r1, #1
	ldrb r0, [r2, r0]
	bx lr
	.balign 4, 0
	thumb_func_end ov99_021E7180

