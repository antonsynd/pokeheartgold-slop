	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223CFA8

	.text

	thumb_func_start ov40_0223CFA8
ov40_0223CFA8: ; 0x0223CFA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x6d
	bl sub_020314A4
	mov r1, #0x65
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0223D000 ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _0223D004 ; =0x00002608
	ldr r0, [r2, r0]
	bl ov39_022271C0
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #0x8c
	str r1, [r4, r0]
	mov r0, #0x6d
	bl sub_02030920
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0223D000 ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _0223D004 ; =0x00002608
	ldr r0, [r2, r0]
	mov r2, #0x64
	add r0, #0x80
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	nop
_0223D000: .word 0x000004D4
_0223D004: .word 0x00002608
	thumb_func_end ov40_0223CFA8

