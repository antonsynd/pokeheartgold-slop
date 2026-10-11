#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021F9D28
	.public ov15_021F9D60

	.text

	.text
	thumb_func_start ov15_021F9D28
ov15_021F9D28: ; 0x021F9D28
	push {r3, r4, r5, r6}
	ldr r2, _021F9D5C ; =0x00000614
	mov r1, #0
	strb r1, [r0, r2]
	add r4, r2, #0
	mov r2, #0x8d
	lsl r2, r2, #2
	mov r3, #0xc
_021F9D38:
	add r5, r1, #0
	ldr r6, [r0, r2]
	mul r5, r3
	add r5, r6, r5
	ldr r5, [r5, #4]
	cmp r5, #0
	beq _021F9D4C
	ldrb r5, [r0, r4]
	add r5, r5, #1
	strb r5, [r0, r4]
_021F9D4C:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #8
	blo _021F9D38
	pop {r3, r4, r5, r6}
	bx lr
	nop
_021F9D5C: .word 0x00000614
	thumb_func_end ov15_021F9D28

	thumb_func_start ov15_021F9D60
ov15_021F9D60: ; 0x021F9D60
	push {r3, r4}
	mov r3, #0x8d
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	add r4, r0, #4
	add r0, #0x64
	ldrb r3, [r0]
	mov r0, #0xc
	mul r0, r3
	cmp r2, #0
	ldr r2, [r4, r0]
	bne _021F9D80
	lsl r0, r1, #2
	ldrh r0, [r2, r0]
	pop {r3, r4}
	bx lr
_021F9D80:
	lsl r0, r1, #2
	add r0, r2, r0
	ldrh r0, [r0, #2]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov15_021F9D60

