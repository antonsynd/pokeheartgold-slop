	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A194
	.extern ov59_022387D0
	.extern ov59_022388C4
	.extern ov59_02238CFC
	.extern ov59_02238FF4

	.text

	.text
	thumb_func_start ov59_0223A194
ov59_0223A194: ; 0x0223A194
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	bhi _0223A1C8
	bl ov59_022388C4
	add r0, r5, r4
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0223A1AE
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223A1AE:
	ldr r0, _0223A260 ; =0x000005EB
	bl PlaySE
	add r0, r5, #0
	add r0, #0x4d
	strb r4, [r0]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _0223A1C4
	mov r0, #7
	pop {r3, r4, r5, pc}
_0223A1C4:
	mov r0, #8
	pop {r3, r4, r5, pc}
_0223A1C8:
	cmp r4, #8
	bne _0223A1DE
	ldr r0, _0223A264 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov59_022387D0
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223A1DE:
	cmp r4, #7
	bne _0223A25A
	ldr r0, _0223A264 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	bl ov59_022388C4
	add r0, r5, #0
	add r0, #0x4d
	strb r4, [r0]
	ldrb r1, [r5, #0x14]
	cmp r1, #0
	bne _0223A216
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0223A216
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #0xff
	bl ov59_02238CFC
	add r0, r5, #0
	mov r1, #1
	bl ov59_02238FF4
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0223A216:
	cmp r1, #0
	bne _0223A236
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0223A236
	add r0, r5, #0
	mov r1, #0x1b
	mov r2, #0xff
	bl ov59_02238CFC
	add r0, r5, #0
	mov r1, #1
	bl ov59_02238FF4
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0223A236:
	cmp r1, #0
	beq _0223A256
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	beq _0223A256
	add r0, r5, #0
	mov r1, #0x1c
	mov r2, #0xff
	bl ov59_02238CFC
	add r0, r5, #0
	mov r1, #1
	bl ov59_02238FF4
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0223A256:
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0223A25A:
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_0223A260: .word 0x000005EB
_0223A264: .word 0x000005DC
	thumb_func_end ov59_0223A194

