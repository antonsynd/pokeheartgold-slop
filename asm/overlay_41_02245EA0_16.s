	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_02246170
	.extern ov41_022467E4
	.extern ov41_022468FC
	.extern ov41_02246A50
	.extern ov41_02246A94
	.extern ov41_0224BFB4

    .text

	.text
	thumb_func_start ov41_02246170
ov41_02246170: ; 0x02246170
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _022461CC ; =ov41_0224BFB4
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x1a
	mov r1, #0xe
	bl NARC_New
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov41_022467E4
	mov r2, #0xa
	add r0, r4, #0
	mov r1, #0xe
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov41_02246CC0
	add r0, r4, #0
	bl ov41_02246A50
	add r0, r4, #0
	mov r1, #0xd
	bl ov41_02246C90
	add r0, r4, #0
	bl ov41_02246A94
	mov r0, #0xe
	bl BgConfig_Alloc
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov41_022468FC
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_022461CC: .word ov41_0224BFB4
	thumb_func_end ov41_02246170

