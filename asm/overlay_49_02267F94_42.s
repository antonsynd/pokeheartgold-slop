	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268D0C
	.extern ov49_0226A81C
	.extern ov49_0226A820
	.extern ov49_0226A824
	.extern ov49_0226A828
	.extern ov49_0226A82C
	.extern ov49_0226A830
	.extern ov49_0226A834

    .text

	.text
	thumb_func_start ov49_02268D0C
ov49_02268D0C: ; 0x02268D0C
	push {r3, lr}
	cmp r0, #6
	bhi _02268D72
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268D1E: ; jump table
	.short _02268D2C - _02268D1E - 2 ; case 0
	.short _02268D36 - _02268D1E - 2 ; case 1
	.short _02268D40 - _02268D1E - 2 ; case 2
	.short _02268D4A - _02268D1E - 2 ; case 3
	.short _02268D54 - _02268D1E - 2 ; case 4
	.short _02268D5E - _02268D1E - 2 ; case 5
	.short _02268D68 - _02268D1E - 2 ; case 6
_02268D2C:
	mov r0, #6
	str r0, [r1, #4]
	ldr r0, _02268D78 ; =ov49_0226A834
	str r0, [r1]
	pop {r3, pc}
_02268D36:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D7C ; =ov49_0226A82C
	str r0, [r1]
	pop {r3, pc}
_02268D40:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D80 ; =ov49_0226A824
	str r0, [r1]
	pop {r3, pc}
_02268D4A:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _02268D84 ; =ov49_0226A81C
	str r0, [r1]
	pop {r3, pc}
_02268D54:
	mov r0, #1
	str r0, [r1, #4]
	ldr r0, _02268D88 ; =ov49_0226A820
	str r0, [r1]
	pop {r3, pc}
_02268D5E:
	mov r0, #2
	str r0, [r1, #4]
	ldr r0, _02268D8C ; =ov49_0226A828
	str r0, [r1]
	pop {r3, pc}
_02268D68:
	mov r0, #3
	str r0, [r1, #4]
	ldr r0, _02268D90 ; =ov49_0226A830
	str r0, [r1]
	pop {r3, pc}
_02268D72:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
_02268D78: .word ov49_0226A834
_02268D7C: .word ov49_0226A82C
_02268D80: .word ov49_0226A824
_02268D84: .word ov49_0226A81C
_02268D88: .word ov49_0226A820
_02268D8C: .word ov49_0226A828
_02268D90: .word ov49_0226A830
	thumb_func_end ov49_02268D0C


