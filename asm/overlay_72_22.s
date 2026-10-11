	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022391E8
	.public ov72_0223A414

	.text

	thumb_func_start ov72_022391E8
ov72_022391E8: ; 0x022391E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_02039418
	mov r0, #4
	bl Sys_SetSleepDisableFlag
	add r0, r4, #0
	bl ov72_0223A414
	add r0, r4, #0
	add r0, #0x2c
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov00_021EC3F0
	mov r0, #2
	bl ov00_021EC454
	bl ov00_021EC4A4
	mov r0, #3
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_022391E8

