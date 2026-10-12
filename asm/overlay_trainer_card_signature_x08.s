#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public ov52_021E86DC
	.extern ov52_021E94DC

	.text

	.text
	thumb_func_start ov52_021E86DC
ov52_021E86DC: ; 0x021E86DC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021E8708 ; =ov52_021E94DC
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
_021E8708: .word ov52_021E94DC
	thumb_func_end ov52_021E86DC

