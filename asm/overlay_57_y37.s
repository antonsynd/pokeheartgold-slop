	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238AF0

	.text

	.text
	thumb_func_start ov57_02238AF0
ov57_02238AF0: ; 0x02238AF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x38
	mul r0, r1
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	lsl r0, r1, #4
	neg r0, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r4, #0
_02238B06:
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02238B1E
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl ManagedSprite_OffsetPositionXY
_02238B1E:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #8
	blt _02238B06
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov57_02238AF0

