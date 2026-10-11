	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9090
	.public ov102_021E94A4
	.public ov102_021EA0D0
	.public ov102_021EAE40
	.public ov102_021EAF44
	.public ov102_021EB0C0
	.public ov102_021EB2EC
	.public ov102_021EB50C

	.text

	thumb_func_start ov102_021EA0D0
ov102_021EA0D0: ; 0x021EA0D0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov102_021EAE40
	mov r0, #0x79
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	bl ov102_021EB2EC
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021EA106
	sub r0, #0x10
	ldr r0, [r4, r0]
	bl ov102_021EB50C
	b _021EA10E
_021EA106:
	sub r0, #0x14
	ldr r0, [r4, r0]
	bl ov102_021EAF44
_021EA10E:
	ldr r0, [r5, #4]
	bl ov102_021E9090
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EB0C0
	add r0, r5, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021EA0D0

