	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E878C
	.public ov102_021E87A8
	.public ov102_021E9028
	.public ov102_021E9044

	.text

	thumb_func_start ov102_021E9028
ov102_021E9028: ; 0x021E9028
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x60
	ldrh r1, [r1]
	cmp r1, #0
	beq _021E903A
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_021E903A:
	add r0, #0x54
	bl ov102_021E878C
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021E9028

	thumb_func_start ov102_021E9044
ov102_021E9044: ; 0x021E9044
	ldr r3, _021E904C ; =ov102_021E87A8
	add r0, #0x54
	bx r3
	nop
_021E904C: .word ov102_021E87A8
	thumb_func_end ov102_021E9044

