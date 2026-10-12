#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E7804

	.text

	.text
	thumb_func_start ov51_021E7804
ov51_021E7804: ; 0x021E7804
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, #0x1a
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _021E7864 ; =0x000003A5
	mov r2, #0xf
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	bic r1, r2
	ldr r2, _021E7868 ; =0x0000310C
	ldr r2, [r4, r2]
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #0xf
	and r2, r3
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	mov r1, #0xf0
	bic r2, r1
	strb r2, [r0, #0x12]
	mov r0, #0xcf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	ldr r0, [r4]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E7864: .word 0x000003A5
_021E7868: .word 0x0000310C
	thumb_func_end ov51_021E7804

