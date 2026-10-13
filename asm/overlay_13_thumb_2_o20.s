	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02221C78
	.public ov13_02221D34
	.extern _0224CF98
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_02222A5C
	.extern ov13_02222A84

	.text

	.text
	thumb_func_start ov13_02221C78
ov13_02221C78: ; 0x02221C78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r2, #0x41
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl ov13_02222978
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0x80
_02221C90:
	ldrh r0, [r4, #2]
	bl ov13_02222A84
	add r2, r0, #0
	cmp r2, #0
	bgt _02221CA2
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221CA2:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _02221D18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221CB4: ; jump table
	.short _02221CC2 - _02221CB4 - 2 ; case 0
	.short _02221CCC - _02221CB4 - 2 ; case 1
	.short _02221CD6 - _02221CB4 - 2 ; case 2
	.short _02221CE4 - _02221CB4 - 2 ; case 3
	.short _02221CE4 - _02221CB4 - 2 ; case 4
	.short _02221CF4 - _02221CB4 - 2 ; case 5
	.short _02221D06 - _02221CB4 - 2 ; case 6
_02221CC2:
	add r0, r5, #0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CCC:
	add r0, r7, #0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CD6:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #6
	bl ov13_02222968
	b _02221D1E
_02221CE4:
	ldrb r0, [r4, #6]
	bl ov13_02222A84
	cmp r0, #0
	bgt _02221D1E
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221CF4:
	add r0, r4, #6
	add r1, r2, #0
	bl ov13_02221D34
	bl ov13_02222A5C
	ldr r1, _02221D30 ; =_0224CF98
	str r0, [r1, #0x34]
	b _02221D1E
_02221D06:
	add r0, r4, #6
	add r1, r2, #0
	bl ov13_02221D34
	bl ov13_02222A5C
	ldr r1, _02221D30 ; =_0224CF98
	str r0, [r1, #0x38]
	b _02221D1E
_02221D18:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02221D1E:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _02221D2C
	bl ov13_02222A84
	add r4, r6, r0
	b _02221C90
_02221D2C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221D30: .word _0224CF98
	thumb_func_end ov13_02221C78

	thumb_func_start ov13_02221D34
ov13_02221D34: ; 0x02221D34
	push {r4, r5}
	mov r3, #0
	sub r2, r1, #1
	add r5, r0, r2
	add r4, r3, #0
	cmp r1, #0
	ble _02221D50
_02221D42:
	ldrb r0, [r5]
	lsl r2, r3, #8
	add r4, r4, #1
	sub r5, r5, #1
	add r3, r2, r0
	cmp r4, r1
	blt _02221D42
_02221D50:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	.balign 4, 0
	thumb_func_end ov13_02221D34

