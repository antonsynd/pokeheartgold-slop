#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FF004

	.text

	.text
	thumb_func_start ov15_021FF004
ov15_021FF004: ; 0x021FF004
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4]
	add r2, sp, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0x81
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #0x19
	strb r0, [r2, #0x10]
	mov r0, #6
	strb r0, [r2, #0x11]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0x12]
	ldrb r3, [r2, #0x12]
	mov r1, #0xf0
	bic r3, r1
	strb r3, [r2, #0x12]
	ldrb r3, [r2, #0x12]
	bic r3, r1
	strb r3, [r2, #0x12]
	mov r1, #0
	strb r1, [r2, #0x13]
	bl YesNoPrompt_Create
	ldr r1, _021FF054 ; =0x00000804
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021FF054: .word 0x00000804
	thumb_func_end ov15_021FF004

