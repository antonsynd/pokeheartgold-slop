	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A120
	.public ov59_0223A194
	.extern ov59_022387D0
	.extern ov59_022388C4
	.extern ov59_02238CFC
	.extern ov59_02238FF4
	.extern ov59_0223A07C
	.extern ov59_0223C924

	.text

	.text
	thumb_func_start ov59_0223A120
ov59_0223A120: ; 0x0223A120
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0223A190 ; =ov59_0223C924
	add r5, r1, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0223A13A
	cmp r1, #7
	bne _0223A13E
_0223A13A:
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223A13E:
	mov r0, #1
	str r0, [r5]
	add r2, r4, #0
	str r0, [r4, #0x40]
	mov r0, #0
	add r2, #0x4c
	strb r0, [r2]
	add r2, r4, #0
	add r2, #0x4c
	ldrb r3, [r2]
	add r2, r4, #0
	add r2, #0x4b
	strb r3, [r2]
	add r2, r4, #0
	add r2, #0x4a
	strb r0, [r2]
	cmp r1, #8
	bne _0223A16A
	add r0, r4, #0
	mov r2, #2
	add r0, #0x49
	b _0223A184
_0223A16A:
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r0, #0x1f
	ror r2, r0
	add r0, r4, #0
	add r2, r3, r2
	add r0, #0x49
	strb r2, [r0]
	add r3, r1, r3
	add r0, r4, #0
	asr r2, r3, #1
	add r0, #0x4a
_0223A184:
	strb r2, [r0]
	add r0, r4, #0
	bl ov59_0223A07C
	pop {r3, r4, r5, pc}
	nop
_0223A190: .word ov59_0223C924
	thumb_func_end ov59_0223A120

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

