	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B1A4
	.extern ov57_02237E88
	.extern ov57_02237F14
	.extern ov57_02237F3C
	.extern ov57_02238134
	.extern ov57_022383AC
	.extern ov57_022383D0
	.extern ov57_0223853C
	.extern ov57_02238C30
	.extern ov57_022394AC
	.extern ov57_02239728
	.extern ov57_0223B504

	.text

	.text
	thumb_func_start ov57_0223B1A4
ov57_0223B1A4: ; 0x0223B1A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	beq _0223B1B4
	cmp r4, #0xd
	beq _0223B1C6
	b _0223B1FA
_0223B1B4:
	ldr r0, _0223B27C ; =0x000005DD
	bl PlaySE
	ldr r0, [r5]
	mov r1, #0
	bl ov57_02237E88
	mov r0, #5
	pop {r3, r4, r5, pc}
_0223B1C6:
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #3
	mov r2, #8
	mov r3, #0
	bl ov57_02239728
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, #0xfc
	mov r2, #1
	add r3, r5, #0
	bl ov57_02238C30
	ldr r0, _0223B280 ; =0x000005DC
	bl PlaySE
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223B1FA:
	bl ov57_02238134
	add r0, r5, #0
	bl ov57_0223853C
	add r0, r5, #0
	bl ov57_022394AC
	mov r0, #0xfb
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov57_0223B504
	add r0, r5, #0
	bl ov57_022383AC
	add r0, r5, #0
	bl ov57_02237F3C
	add r0, r5, #0
	mov r1, #1
	bl ov57_022383D0
	add r0, r5, #0
	bl ov57_02237F14
	ldr r0, _0223B284 ; =0x0000040C
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223B244
	ldr r0, _0223B280 ; =0x000005DC
	bl PlaySE
	b _0223B278
_0223B244:
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #3
	mov r2, #8
	mov r3, #0
	bl ov57_02239728
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	add r1, #0xfc
	mov r2, #1
	add r3, r5, #0
	bl ov57_02238C30
	ldr r0, _0223B280 ; =0x000005DC
	bl PlaySE
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223B278:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B27C: .word 0x000005DD
_0223B280: .word 0x000005DC
_0223B284: .word 0x0000040C
	thumb_func_end ov57_0223B1A4

