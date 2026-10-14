	.include "macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022404B4
	.extern ov81_022405F0
	.extern ov81_02242EC4
	.extern ov81_02242F10
	.extern ov81_02242F30
	.extern ov81_02242F8C
	.extern ov81_02242F90

	.text

	.text
	thumb_func_start ov81_022404B4
ov81_022404B4: ; 0x022404B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x4c]
	mov r1, #6
	mov r2, #1
	mov r3, #8
	bl BgSetPosTextAndCommit
	ldr r0, [r5, #0x4c]
	mov r1, #6
	bl Bg_GetXpos
	str r0, [r5, #0xc]
	ldrb r0, [r5, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0224054A
	add r4, r5, #0
_022404DE:
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F30
	add r7, r0, #0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F8C
	ldr r2, [r7]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r1, r1, #0xc
	sub r1, #8
	cmp r1, r0
	bgt _0224052E
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F8C
	add r7, r0, #0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242F90
	add r2, r0, #0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r7, #0
	bl ov81_02242F10
	mov r0, #1
	str r0, [sp]
	b _02240540
_0224052E:
	mov r1, #0x36
	lsl r1, r1, #4
	mov r2, #7
	ldr r1, [r4, r1]
	add r0, sp, #4
	mvn r2, r2
	mov r3, #0
	bl ov81_02242EC4
_02240540:
	ldrb r0, [r5, #0x12]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _022404DE
_0224054A:
	add r0, r5, #0
	bl ov81_022405F0
	ldr r0, [sp]
	cmp r0, #1
	bne _0224055C
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224055C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_022404B4

