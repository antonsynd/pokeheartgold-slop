#include "msgdata/msg/msg_0252.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_signature.inc"
	.include "global.inc"
	.public ov52_021E837C

	.text

	.text
	thumb_func_start ov52_021E837C
ov52_021E837C: ; 0x021E837C
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	add r0, r4, #0
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E839C ; =0x027E0000
	ldr r1, _021E83A0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E839C: .word 0x027E0000
_021E83A0: .word 0x00003FF8
	thumb_func_end ov52_021E837C

