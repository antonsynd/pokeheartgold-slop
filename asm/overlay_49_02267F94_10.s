	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268588
	.extern ov49_02268640
	.extern ov49_0226A7E0

    .text

	.text
	thumb_func_start ov49_02268588
ov49_02268588: ; 0x02268588
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5]
	ldr r2, _022685F4 ; =ov49_0226A7E0
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #1]
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #3]
	strb r0, [r5, #0x1b]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r0, #0xa
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	bl ov49_02268640
	add r6, r4, #2
	add r4, r5, #0
	mov r7, #0
	add r4, #0x38
_022685BA:
	ldrb r1, [r5, #8]
	add r0, r5, #0
	add r0, #0x20
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #9]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xa]
	add r0, #0x22
	strb r1, [r0]
	add r0, r5, #0
	ldrb r1, [r5, #0xb]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0
	str r0, [r5, #0x50]
	add r0, r4, #0
	add r1, r6, #0
	bl ov49_02268640
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #2
	add r4, r4, #4
	cmp r7, #4
	blt _022685BA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022685F4: .word ov49_0226A7E0
	thumb_func_end ov49_02268588

