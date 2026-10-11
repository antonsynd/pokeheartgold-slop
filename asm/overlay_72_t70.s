	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A200
	.extern ov72_0223AF1C

	.text

	.text
	thumb_func_start ov72_0223A200
ov72_0223A200: ; 0x0223A200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223A274 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223A26E
	ldr r0, _0223A278 ; =0x00000E14
	ldr r1, [r4, r0]
	ldr r0, _0223A27C ; =0x00001370
	str r1, [r4, r0]
	ldr r2, [r4, #4]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0x43
	add r1, #0x24
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x28
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0xa
	add r1, #0x2a
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #6
	add r1, #0x2b
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #4
	add r1, #0x2e
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0xb
	add r1, #0x2c
	strb r2, [r4, r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x2d
	strb r2, [r4, r1]
	add r1, r0, #0
	sub r0, r0, #4
	add r2, #0xff
	add r1, #0x30
	add r0, r4, r0
	str r2, [r4, r1]
	bl ov72_0223AF1C
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_0223A26E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223A274: .word 0x00000BF4
_0223A278: .word 0x00000E14
_0223A27C: .word 0x00001370
	thumb_func_end ov72_0223A200

