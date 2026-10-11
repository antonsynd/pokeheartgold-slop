	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E6090
	.extern ov37_021E7988

	.text

	.text
	thumb_func_start ov37_021E6090
ov37_021E6090: ; 0x021E6090
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E60BC ; =ov37_021E7988
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x27
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E60BC: .word ov37_021E7988
	thumb_func_end ov37_021E6090

