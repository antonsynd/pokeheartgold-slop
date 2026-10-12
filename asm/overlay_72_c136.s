	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AE6C
	.extern ov72_0223AE20

	.text

	.text
	thumb_func_start ov72_0223AE6C
ov72_0223AE6C: ; 0x0223AE6C
	push {r4, lr}
	ldr r1, _0223AECC ; =0x00001358
	add r4, r0, r1
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0223AE82
	cmp r1, #1
	beq _0223AE94
	cmp r1, #2
	beq _0223AEB6
	b _0223AEC6
_0223AE82:
	ldrh r1, [r4, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov72_0223AE20
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0223AEC6
_0223AE94:
	ldrb r1, [r4, #3]
	add r1, r1, #1
	strb r1, [r4, #3]
	ldrb r1, [r4, #3]
	cmp r1, #4
	bne _0223AEC6
	ldrh r1, [r4, #0xa]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov72_0223AE20
	mov r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0223AEC6
_0223AEB6:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _0223AEC6
	mov r0, #0
	pop {r4, pc}
_0223AEC6:
	mov r0, #1
	pop {r4, pc}
	nop
_0223AECC: .word 0x00001358
	thumb_func_end ov72_0223AE6C

