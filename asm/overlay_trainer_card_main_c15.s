#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6AAC
	.extern _021E7DB8
	.extern ov51_021E7DBC
	.extern ov51_021E7DC0

	.text

	.text
	thumb_func_start ov51_021E6AAC
ov51_021E6AAC: ; 0x021E6AAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E6ABE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6ABE:
	ldr r0, _021E6B28 ; =_021E7DB8
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6AD8
	mov r0, #1
	str r0, [r4]
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #5
	pop {r3, r4, r5, pc}
_021E6AD8:
	ldr r0, _021E6B2C ; =0x000030F4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E6B02
	ldr r0, _021E6B30 ; =0x0000343A
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _021E6B02
	ldr r0, _021E6B34 ; =ov51_021E7DBC
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6B02
	mov r0, #1
	str r0, [r4]
	ldr r0, _021E6B38 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #4
	pop {r3, r4, r5, pc}
_021E6B02:
	ldr r0, _021E6B3C ; =ov51_021E7DC0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _021E6B24
	ldr r1, _021E6B40 ; =gSystem + 0x40
	mov r0, #0xd1
	ldrh r2, [r1, #0x20]
	lsl r0, r0, #6
	strb r2, [r5, r0]
	ldrh r1, [r1, #0x22]
	add r0, r0, #1
	strb r1, [r5, r0]
	mov r0, #1
	str r0, [r4]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E6B24:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6B28: .word _021E7DB8
_021E6B2C: .word 0x000030F4
_021E6B30: .word 0x0000343A
_021E6B34: .word ov51_021E7DBC
_021E6B38: .word SEQ_SE_DP_SELECT
_021E6B3C: .word ov51_021E7DC0
_021E6B40: .word gSystem + 0x40
	thumb_func_end ov51_021E6AAC

