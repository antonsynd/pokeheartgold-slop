	.include "asm/macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221E834
	.extern _0221FC98

	.text

	.text
	thumb_func_start ov97_0221E834
ov97_0221E834: ; 0x0221E834
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0221E860 ; =_0221FC98
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x5c
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221E860: .word _0221FC98
	thumb_func_end ov97_0221E834

