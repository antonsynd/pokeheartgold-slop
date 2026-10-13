	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223ED94

	.text

	.text
	thumb_func_start ov82_0223ED94
ov82_0223ED94: ; 0x0223ED94
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	bl ov80_0223792C
	cmp r0, #0
	beq _0223EDEA
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	ldr r3, _0223EDEC ; =0xFFFF1FFF
	add r4, r0, #0
	and r1, r3
	str r1, [r0]
	add r4, #0x48
	ldrh r5, [r4]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r5, r1
	orr r5, r2
	strh r5, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	bic r5, r1
	orr r2, r5
	mov r1, #0x20
	orr r1, r2
	strh r1, [r4]
	mov r2, #0xf
	add r1, r0, #0
	lsl r2, r2, #0xc
	add r1, #0x40
	strh r2, [r1]
	add r1, r0, #0
	mov r4, #0x10
	add r1, #0x44
	strh r4, [r1]
	ldr r1, [r0]
	add r2, r1, #0
	and r2, r3
	lsl r1, r4, #9
	orr r1, r2
	str r1, [r0]
_0223EDEA:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223EDEC: .word 0xFFFF1FFF
	thumb_func_end ov82_0223ED94

