#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02228AC0

	.text

	.text
	thumb_func_start ov39_02228AC0
ov39_02228AC0: ; 0x02228AC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x7c
	add r4, r1, #0
	bl YesNoPrompt_Create
	mov r1, #0
	mov r2, #0xe
	str r2, [sp, #0xc]
	str r5, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	mov r2, #0x19
	add r3, sp, #0
	strb r2, [r3, #0x10]
	mov r2, #0xa
	strb r2, [r3, #0x11]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf
	add r6, r0, #0
	bic r4, r2
	strb r4, [r3, #0x12]
	ldrb r4, [r3, #0x12]
	mov r2, #0xf0
	bic r4, r2
	strb r4, [r3, #0x12]
	strb r1, [r3, #0x13]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r6, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov39_02228AC0

