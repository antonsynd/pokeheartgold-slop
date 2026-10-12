	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A2D0
	.extern ov59_0223A194
	.extern ov59_0223C924

	.text

	.text
	thumb_func_start ov59_0223A2D0
ov59_0223A2D0: ; 0x0223A2D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0223A34C ; =ov59_0223C924
	add r5, r1, #0
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0223A2EA
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223A2EA:
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
	cmp r1, #7
	beq _0223A314
	cmp r1, #8
	beq _0223A31E
	b _0223A328
_0223A314:
	add r0, r4, #0
	mov r2, #2
	add r0, #0x49
	strb r2, [r0]
	b _0223A344
_0223A31E:
	add r0, r4, #0
	mov r2, #3
	add r0, #0x49
	strb r2, [r0]
	b _0223A344
_0223A328:
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
	strb r2, [r0]
_0223A344:
	add r0, r4, #0
	bl ov59_0223A194
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223A34C: .word ov59_0223C924
	thumb_func_end ov59_0223A2D0

