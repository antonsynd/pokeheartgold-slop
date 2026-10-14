	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D2F4

	.text

	.text
	thumb_func_start ov07_0221D2F4
ov07_0221D2F4: ; 0x0221D2F4
	push {r3, lr}
	cmp r1, #0
	beq _0221D314
	mov r1, #1
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0
	mov r3, #0x3c
	bl StartBrightnessTransition
	pop {r3, pc}
_0221D314:
	mov r1, #1
	str r1, [sp]
	ldr r0, [r0, #4]
	mov r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r2, #0x10
	mov r3, #0x3c
	bl StartBrightnessTransition
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov07_0221D2F4

