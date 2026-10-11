	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225DCC4
	.extern ov91_0225DD24
	.extern ov91_0225DD50
	.extern ov91_0225E044
	.extern ov91_0225E070
	.extern ov91_02261C58

	.text

	.text
	thumb_func_start ov91_0225DCC4
ov91_0225DCC4: ; 0x0225DCC4
	push {r3, r4, r5, lr}
	add r3, r0, #0
	ldr r0, [r3]
	add r4, r1, #0
	cmp r0, #1
	bne _0225DCD4
	mov r0, #0
	b _0225DCD6
_0225DCD4:
	mov r0, #1
_0225DCD6:
	strb r0, [r4, #1]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3]
	add r0, r4, #0
	lsl r5, r3, #2
	ldr r3, _0225DD1C ; =ov91_02261C58
	ldr r3, [r3, r5]
	blx r3
	add r1, r0, #0
	add r0, r4, #0
	bl ov91_0225DD24
	ldrh r1, [r4, #4]
	add r0, r4, #0
	bl ov91_0225E044
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	add r0, r4, #0
	bl ov91_0225E070
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1]
	ldrh r2, [r4, #2]
	ldrh r1, [r4, #6]
	add r0, r4, #0
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov91_0225DD50
	pop {r3, r4, r5, pc}
	nop
_0225DD1C: .word ov91_02261C58
	thumb_func_end ov91_0225DCC4

