	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225909C
	.extern ov48_02258D54
	.extern ov48_02259188
	.extern ov48_022593B4
	.extern ov48_02259DA0
	.extern ov48_0225A20C
	.extern ov48_0225A244

	.text

	.text
	thumb_func_start ov48_0225909C
ov48_0225909C: ; 0x0225909C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225911C ; =0x0000C3E0
	add r0, r5, r0
	bl ov48_02259DA0
	ldr r0, _0225911C ; =0x0000C3E0
	ldr r1, [r5, r0]
	mov r0, #2
	tst r1, r0
	beq _022590C0
	ldr r0, _02259120 ; =0x000005DD
	bl PlaySE
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, pc}
_022590C0:
	ldr r2, _02259124 ; =gSystem
	lsl r0, r0, #9
	ldr r1, [r2, #0x48]
	tst r0, r1
	beq _0225910C
	add r0, r5, #0
	add r1, sp, #0
	bl ov48_02259188
	cmp r0, #1
	bne _02259116
	ldr r0, _02259128 ; =0x0000C40C
	add r1, sp, #0
	add r0, r5, r0
	bl ov48_0225A244
	cmp r0, #0
	bne _02259116
	ldr r0, _02259128 ; =0x0000C40C
	add r1, sp, #0
	add r0, r5, r0
	bl ov48_0225A20C
	cmp r0, #0
	beq _02259116
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov48_022593B4
	ldr r0, _0225912C ; =0x000005D6
	bl PlaySE
	b _02259116
_0225910C:
	ldr r2, [r2, #0x44]
	add r0, r5, #0
	bl ov48_02258D54
	add r4, r0, #0
_02259116:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_0225911C: .word 0x0000C3E0
_02259120: .word 0x000005DD
_02259124: .word gSystem
_02259128: .word 0x0000C40C
_0225912C: .word 0x000005D6
	thumb_func_end ov48_0225909C

