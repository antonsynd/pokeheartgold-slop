	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7A58
	.public ov102_021E8294
	.public ov102_021E848C
	.public ov102_021E8580

	.text

	thumb_func_start ov102_021E8580
ov102_021E8580: ; 0x021E8580
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov102_021E7A58
	cmp r0, #0
	bne _021E85A6
	ldr r0, [r5, #0x74]
	cmp r0, #0
	bne _021E859E
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8294
	pop {r3, r4, r5, pc}
_021E859E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E848C
_021E85A6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E8580

