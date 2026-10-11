	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A338

	.text

	thumb_func_start ov43_0222A338
ov43_0222A338: ; 0x0222A338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	beq _0222A348
	ldr r0, [r5, #0x58]
	bl String_Copy
_0222A348:
	cmp r4, #0
	beq _0222A354
	ldr r0, [r5, #0x5c]
	add r1, r4, #0
	bl String_Copy
_0222A354:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A338

