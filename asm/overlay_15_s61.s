#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB680
	.extern ov15_021FB784
	.extern ov15_021FD788
	.extern ov15_021FEF48
	.extern ov15_021FFF24

	.text

	.text
	thumb_func_start ov15_021FB680
ov15_021FB680: ; 0x021FB680
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #0
	bl ov15_021FD788
	add r0, r4, #0
	bl ov15_021FFF24
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	add r0, #0x66
	ldrh r0, [r0]
	add r2, r1, #0
	bl GetItemAttr
	add r1, r0, #0
	lsl r1, r1, #0x10
	mov r0, #2
	lsr r1, r1, #0x10
	bl GetItemFieldUseFunc
	add r1, r0, #0
	beq _021FB6EE
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x70]
	blx r1
	add r3, r0, #0
	beq _021FB6EE
	mov r2, #0x8f
	mov r0, #6
	lsl r2, r2, #2
	str r0, [sp]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	ldr r1, _021FB6F8 ; =0x000005E4
	add r2, #0x66
	ldrh r2, [r2]
	ldr r1, [r4, r1]
	bl GetItemUseErrorMessage
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FEF48
	ldr r1, _021FB6FC ; =0x00000616
	add sp, #4
	strb r0, [r4, r1]
	mov r0, #0xc
	pop {r3, r4, pc}
_021FB6EE:
	add r0, r4, #0
	bl ov15_021FB784
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021FB6F8: .word 0x000005E4
_021FB6FC: .word 0x00000616
	thumb_func_end ov15_021FB680

