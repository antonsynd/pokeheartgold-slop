	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D05C
	.public ov07_0221D088

	.text

	.text
	thumb_func_start ov07_0221D05C
ov07_0221D05C: ; 0x0221D05C
	ldr r1, [r0, #0x18]
	add r3, r0, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	mov r2, #2
	add r3, #8
_0221D068:
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	beq _0221D07E
	add r3, r0, #0
	add r3, #0x1c
	lsl r2, r2, #2
	ldr r1, [r3, r2]
	str r1, [r0, #0x18]
	mov r0, #0
	str r0, [r3, r2]
	bx lr
_0221D07E:
	sub r3, r3, #4
	sub r2, r2, #1
	bpl _0221D068
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221D05C

	thumb_func_start ov07_0221D088
ov07_0221D088: ; 0x0221D088
	push {r3, r4}
	ldr r2, [r0, #0x18]
	add r1, r0, #0
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r4, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	ldr r3, [r2]
	add r2, r2, #4
	str r2, [r0, #0x18]
	lsl r2, r4, #2
	add r2, r0, r2
	add r2, #0x94
	ldr r2, [r2]
	add r1, #0x18
	cmp r3, r2
	bne _0221D0B6
	ldr r1, [r0, #0x18]
	ldr r1, [r1]
	str r1, [r0, #0x18]
	pop {r3, r4}
	bx lr
_0221D0B6:
	ldr r0, [r1]
	add r0, r0, #4
	str r0, [r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ov07_0221D088

