	.include "asm/macros.inc"
	.include "overlay_49_022649F4.inc"
	.include "global.inc"
	.public ov49_02264D4C
	.extern ov49_02264D9C
	.extern ov49_02269E44

    .text

	.text
	thumb_func_start ov49_02264D4C
ov49_02264D4C: ; 0x02264D4C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov49_02264D9C
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl ov49_02264D9C
	ldr r0, [sp, #0x10]
	bl ov45_0222AA10
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	bl ov45_0222AA10
	add r3, r0, #0
	ldr r2, _02264D98 ; =ov49_02269E44
	lsl r4, r4, #4
	lsl r3, r3, #1
	add r2, r2, r4
	ldrh r2, [r3, r2]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	pop {r3, r4, r5, pc}
	nop
_02264D98: .word ov49_02269E44
	thumb_func_end ov49_02264D4C

