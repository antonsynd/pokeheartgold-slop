	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_011
	.public ov80_0222C03C
	.public ov80_0223B9D8

	.text

	thumb_func_start FrtCmd_011
FrtCmd_011: ; 0x0222C058
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x1c]
	add r1, r2, #1
	str r1, [r5, #0x1c]
	ldrb r4, [r2]
	bl FrontierScriptContext_ReadWord
	add r1, r0, #0
	lsl r0, r4, #1
	add r4, r4, r0
	add r0, r5, #0
	add r0, #0x8c
	ldr r3, _0222C08C ; =ov80_0223B9D8
	ldrb r2, [r0]
	add r0, r3, r4
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _0222C088
	ldr r2, [r5, #0x1c]
	add r0, r5, #0
	add r1, r2, r1
	bl ov80_0222C03C
_0222C088:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222C08C: .word ov80_0223B9D8
	thumb_func_end FrtCmd_011

