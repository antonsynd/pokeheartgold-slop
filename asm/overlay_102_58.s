	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94A4
	.public ov102_021EA164
	.public ov102_021EAE40
	.public ov102_021EAF50
	.public ov102_021EB2EC
	.public ov102_021EB518

	.text

	thumb_func_start ov102_021EA164
ov102_021EA164: ; 0x021EA164
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x1e
	ldr r4, [r5]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov102_021EAE40
	mov r0, #0x7d
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _021EA198
	sub r0, #0x10
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl ov102_021EB2EC
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov102_021EB518
	b _021EA1AE
_021EA198:
	sub r0, #0x10
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl ov102_021EB2EC
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EAF50
_021EA1AE:
	add r0, r5, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EA164

