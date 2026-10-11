	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7A58
	.public ov102_021E8820
	.public ov102_021E8A34
	.public ov102_021E8B18

	.text

	thumb_func_start ov102_021E8B18
ov102_021E8B18: ; 0x021E8B18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov102_021E7A58
	cmp r0, #0
	bne _021E8B3E
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _021E8B36
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8820
	pop {r3, r4, r5, pc}
_021E8B36:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8A34
_021E8B3E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E8B18

