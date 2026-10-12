	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225BDFC
	.extern ov27_0225B630
	.extern ov27_0225BB38
	.extern ov27_0225BEB0

	.text

	.text
	thumb_func_start ov27_0225BDFC
ov27_0225BDFC: ; 0x0225BDFC
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl GearPhoneRingManager_IsRinging
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	bne _0225BE8A
	cmp r0, #1
	bne _0225BEAA
	cmp r1, #0
	bne _0225BEAA
	ldr r0, [r5, #4]
	mov r1, #8
	bl GetPhoneBookEntryName
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	asr r1, r0, #2
	lsr r1, r1, #0x1d
	add r1, r0, r1
	asr r0, r1, #3
	add r1, r0, #2
	cmp r1, #9
	ble _0225BE3A
	mov r1, #9
_0225BE3A:
	mov r0, #0x13
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5]
	add r1, #0xc
	mov r2, #5
	mov r3, #0xb
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0xc
	mov r1, #1
	bl ov27_0225B630
	add r0, r5, #0
	add r0, #0xc
	add r1, r4, #0
	mov r2, #1
	bl ov27_0225BB38
	add r0, r4, #0
	bl String_Delete
	ldr r0, [r5, #8]
	mov r1, #5
	bl Sprite_TryChangeAnimSeq
	mov r0, #1
	add sp, #0x14
	str r0, [r5, #0x1c]
	pop {r4, r5, pc}
_0225BE8A:
	cmp r0, #0
	ldr r0, [r5, #8]
	beq _0225BE9A
	mov r1, #5
	bl Sprite_TryChangeAnimSeq
	add sp, #0x14
	pop {r4, r5, pc}
_0225BE9A:
	mov r1, #0
	bl Sprite_TryChangeAnimSeq
	add r0, r5, #0
	bl ov27_0225BEB0
	mov r0, #0
	str r0, [r5, #0x1c]
_0225BEAA:
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov27_0225BDFC

