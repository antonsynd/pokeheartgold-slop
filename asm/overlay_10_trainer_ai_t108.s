	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221ED48
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221ED48
ov10_0221ED48: ; 0x0221ED48
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	mov r0, #0x3d
	lsl r0, r0, #4
	ldrb r2, [r4, r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0221ED7C ; =0x00002DC8
	ldr r0, [r2, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	bne _0221ED78
	add r0, r4, #0
	bl ov10_0221EF24
_0221ED78:
	pop {r4, pc}
	nop
_0221ED7C: .word 0x00002DC8
	thumb_func_end ov10_0221ED48

