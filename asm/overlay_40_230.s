	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0224085C

	.text

	thumb_func_start ov40_0224085C
ov40_0224085C: ; 0x0224085C
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x6d
	bl sub_020314A4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldr r0, _022408A8 ; =0x000004BC
	add r1, r4, #0
	add r1, #0x80
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl ov39_022271C0
	add r0, r4, #0
	add r0, #0x80
	ldr r1, [r0]
	mov r0, #0x43
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x6d
	bl sub_02030920
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _022408A8 ; =0x000004BC
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	mov r2, #0x64
	add r0, #0x80
	bl MI_CpuCopy8
	pop {r4, pc}
	nop
_022408A8: .word 0x000004BC
	thumb_func_end ov40_0224085C

