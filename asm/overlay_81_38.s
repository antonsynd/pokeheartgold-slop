	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022413F4
	.public ov81_0224141C
	.public ov81_02242DAC
	.public ov81_02242DE4
	.public ov81_02243228

	.text

	thumb_func_start ov81_022413F4
ov81_022413F4: ; 0x022413F4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02241418 ; =0x00000464
	add r2, sp, #4
	ldr r0, [r4, r0]
	add r3, sp, #0
	bl ov81_02243228
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_02241418: .word 0x00000464
	thumb_func_end ov81_022413F4

	thumb_func_start ov81_0224141C
ov81_0224141C: ; 0x0224141C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0224144C ; =0x00000464
	add r2, sp, #4
	ldr r0, [r4, r0]
	add r3, sp, #0
	bl ov81_02243228
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ov81_02242DE4
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242DAC
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_0224144C: .word 0x00000464
	thumb_func_end ov81_0224141C

