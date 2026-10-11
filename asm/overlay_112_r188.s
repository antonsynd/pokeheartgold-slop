#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021ECA18
	.public ov112_021ECA88
	.extern ov112_021EA670
	.extern ov112_021EA688
	.extern ov112_021EC7B8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021ECA18
ov112_021ECA18: ; 0x021ECA18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov112_021EC7B8
	ldr r1, _021ECA84 ; =0x0001EC76
	ldrh r1, [r5, r1]
	cmp r1, #5
	bls _021ECA72
	cmp r4, #0
	bne _021ECA40
	add r0, r5, #0
	mov r1, #3
	bl ov112_021EA688
	add r0, r5, #0
	mov r1, #4
	bl ov112_021EA670
	pop {r3, r4, r5, pc}
_021ECA40:
	ble _021ECA5A
	sub r1, r0, #1
	cmp r4, r1
	bge _021ECA5A
	add r0, r5, #0
	mov r1, #3
	bl ov112_021EA670
	add r0, r5, #0
	mov r1, #4
	bl ov112_021EA670
	pop {r3, r4, r5, pc}
_021ECA5A:
	sub r0, r0, #1
	cmp r4, r0
	bne _021ECA82
	add r0, r5, #0
	mov r1, #3
	bl ov112_021EA670
	add r0, r5, #0
	mov r1, #4
	bl ov112_021EA688
	pop {r3, r4, r5, pc}
_021ECA72:
	add r0, r5, #0
	mov r1, #3
	bl ov112_021EA688
	add r0, r5, #0
	mov r1, #4
	bl ov112_021EA688
_021ECA82:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ECA84: .word 0x0001EC76
	thumb_func_end ov112_021ECA18

	thumb_func_start ov112_021ECA88
ov112_021ECA88: ; 0x021ECA88
	push {r3, r4}
	ldr r2, _021ECAA4 ; =0x0001EC50
	add r1, r2, #4
	ldr r3, [r0, r1]
	ldr r4, [r0, r2]
	lsl r1, r3, #2
	add r1, r3, r1
	add r1, r4, r1
	add r0, r0, r1
	add r2, #8
	ldrsb r0, [r0, r2]
	pop {r3, r4}
	bx lr
	nop
_021ECAA4: .word 0x0001EC50
	thumb_func_end ov112_021ECA88

