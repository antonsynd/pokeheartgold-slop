	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022408AC

	.text

	thumb_func_start ov40_022408AC
ov40_022408AC: ; 0x022408AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x6d
	bl sub_020314A4
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1]
	ldr r0, _02240908 ; =0x000004D4
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224090C ; =0x00002608
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x80
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
	ldr r0, _02240908 ; =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsl r0, r0, #2
	add r2, r5, r0
	ldr r0, _0224090C ; =0x00002608
	ldr r0, [r2, r0]
	mov r2, #0x64
	add r0, #0x80
	bl MI_CpuCopy8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02240908: .word 0x000004D4
_0224090C: .word 0x00002608
	thumb_func_end ov40_022408AC

