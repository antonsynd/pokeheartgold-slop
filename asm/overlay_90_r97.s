	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A3E0
	.extern ov90_02258CF0
	.extern ov90_0225A60C
	.extern ov90_0225C1F8
	.extern ov90_0225C204
	.extern ov90_0225C228

	.text

	.text
	thumb_func_start ov90_0225A3E0
ov90_0225A3E0: ; 0x0225A3E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r3, r0, #2
	ldr r1, _0225A41C ; =ov90_0225C228
	ldr r2, _0225A420 ; =ov90_0225C1F8
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _0225A424 ; =ov90_0225C204
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r6, r3]
	add r0, #0x18
	bl ov90_02258CF0
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0xc
	bl ov90_0225A60C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225A41C: .word ov90_0225C228
_0225A420: .word ov90_0225C1F8
_0225A424: .word ov90_0225C204
	thumb_func_end ov90_0225A3E0

