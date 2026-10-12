	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260334

	.text

	.text
	thumb_func_start ov91_02260334
ov91_02260334: ; 0x02260334
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _02260360 ; =0x00000212
	add r5, r0, #0
	ldrh r2, [r5, r1]
	cmp r2, r4
	beq _0226035C
	cmp r4, #1
	bne _02260350
	sub r1, #0x7a
	add r1, r5, r1
	bl sub_020181D4
	b _02260358
_02260350:
	sub r1, #0x7a
	add r1, r5, r1
	bl sub_020181E0
_02260358:
	ldr r0, _02260360 ; =0x00000212
	strh r4, [r5, r0]
_0226035C:
	pop {r3, r4, r5, pc}
	nop
_02260360: .word 0x00000212
	thumb_func_end ov91_02260334

