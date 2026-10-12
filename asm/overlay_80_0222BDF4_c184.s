	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222EFD0
	.extern _0223DC20
	.extern ov80_0223DC22

	.text

	.text
	thumb_func_start ov80_0222EFD0
ov80_0222EFD0: ; 0x0222EFD0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	strb r2, [r4, #7]
	ldr r0, _0222F028 ; =ov80_0223DC22
	lsl r2, r3, #2
	ldrh r0, [r0, r2]
	strb r0, [r4, #6]
	ldr r0, _0222F02C ; =_0223DC20
	ldrh r0, [r0, r2]
	strh r0, [r4, #4]
	cmp r0, #2
	beq _0222EFF2
	cmp r0, #3
	beq _0222EFF2
	cmp r0, #6
	bne _0222F00C
_0222EFF2:
	add r0, r1, #0
	bl ov42_022282E8
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	add sp, #8
	strh r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	pop {r4, pc}
_0222F00C:
	add r0, r1, #0
	bl ov42_022282DC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	add sp, #8
	pop {r4, pc}
	nop
_0222F028: .word ov80_0223DC22
_0222F02C: .word _0223DC20
	thumb_func_end ov80_0222EFD0

