#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F2270

    .text

	.text
	thumb_func_start ov14_021F2270
ov14_021F2270: ; 0x021F2270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r2, #0
	mov r0, #0x2f
	ldr r2, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, sp, #0
	add r2, #1
	add r3, sp, #0
	add r4, r1, #0
	bl sub_02019B1C
	mov r0, #0x2f
	add r3, sp, #0
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r2, sp, #4
	add r3, #2
	bl sub_02019B44
	ldr r2, [r5, #0x34]
	ldr r0, _021F232C ; =0x000088D4
	mov r3, #1
	ldrb r1, [r2, r0]
	bic r1, r3
	mov r3, #1
	orr r1, r3
	strb r1, [r2, r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl sub_02019B10
	lsl r0, r0, #0x19
	ldr r3, [r5, #0x34]
	ldr r1, _021F232C ; =0x000088D4
	mov r4, #0xfe
	ldrb r2, [r3, r1]
	lsr r0, r0, #0x18
	bic r2, r4
	orr r0, r2
	strb r0, [r3, r1]
	ldr r0, [r5, #0x34]
	add r2, r1, #1
	ldrb r3, [r0, r2]
	mov r2, #0xf
	bic r3, r2
	mov r2, #0xd
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r0, [r5, #0x34]
	ldrb r3, [r0, r2]
	mov r2, #0xf0
	bic r3, r2
	mov r2, #0xc0
	orr r3, r2
	add r2, r1, #1
	strb r3, [r0, r2]
	ldr r3, [r5, #0x34]
	mov r2, #0
	add r0, r1, #2
	strb r2, [r3, r0]
	ldr r3, [r5, #0x34]
	add r0, r1, #3
	strb r2, [r3, r0]
	add r0, sp, #0
	mov r3, #1
	ldrsb r7, [r0, r3]
	ldr r4, [r5, #0x34]
	add r3, r1, #4
	strb r7, [r4, r3]
	ldrsb r4, [r0, r2]
	ldr r3, [r5, #0x34]
	add r2, r1, #5
	strb r4, [r3, r2]
	ldrh r4, [r0, #4]
	ldr r3, [r5, #0x34]
	add r2, r1, #6
	strb r4, [r3, r2]
	ldrh r3, [r0, #2]
	ldr r2, [r5, #0x34]
	add r0, r1, #7
	strb r3, [r2, r0]
	str r6, [r5, #0x30]
	mov r0, #8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F232C: .word 0x000088D4
	thumb_func_end ov14_021F2270

