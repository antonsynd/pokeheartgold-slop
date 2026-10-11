	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E9F4
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E9F4
ov10_0221E9F4: ; 0x0221E9F4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	cmp r4, #1
	bne _0221EA18
	bl GF_AssertFail
_0221EA18:
	cmp r4, #0
	bne _0221EA20
	bl GF_AssertFail
_0221EA20:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	bl MaskOfFlagNo
	ldr r1, _0221EA40 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0221EA3E
	add r0, r5, #0
	add r1, r6, #0
	bl ov10_0221EF24
_0221EA3E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221EA40: .word 0x00003108
	thumb_func_end ov10_0221E9F4

