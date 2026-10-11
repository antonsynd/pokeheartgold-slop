	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225E764
	.extern ov93_0225E0F4
	.extern ov93_02262A20

	.text

	.text
	thumb_func_start ov93_0225E764
ov93_0225E764: ; 0x0225E764
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov93_0225E0F4
	cmp r0, #0
	bne _0225E774
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225E774:
	add r0, r5, #0
	add r0, #0xb8
	ldr r2, [r0]
	add r4, r5, #0
	add r4, #0xb8
	cmp r2, #3
	blo _0225E786
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225E786:
	lsl r3, r2, #2
	ldr r2, _0225E7A8 ; =ov93_02262A20
	add r0, r5, #0
	ldr r2, [r2, r3]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	bne _0225E7A4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
_0225E7A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225E7A8: .word ov93_02262A20
	thumb_func_end ov93_0225E764

