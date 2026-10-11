	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242B90
	.extern ov81_02243598

	.text

	.text
	thumb_func_start ov81_02242B90
ov81_02242B90: ; 0x02242B90
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02242BC0 ; =ov81_02243598
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _02242BC4 ; =0x00100010
	add r0, r2, #0
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	mov r0, #8
	mov r1, #0x64
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02242BC0: .word ov81_02243598
_02242BC4: .word 0x00100010
	thumb_func_end ov81_02242B90

