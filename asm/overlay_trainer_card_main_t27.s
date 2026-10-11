#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E7D68
	.extern ov51_021E7FCC

	.text

	.text
	thumb_func_start ov51_021E7D68
ov51_021E7D68: ; 0x021E7D68
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E7DA0 ; =ov51_021E7FCC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #2
	mov r1, #0x19
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	mov r0, #0x19
	bl thunk_ClearMainOAM
	mov r0, #0x19
	bl thunk_ClearSubOAM
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021E7DA0: .word ov51_021E7FCC
	thumb_func_end ov51_021E7D68

