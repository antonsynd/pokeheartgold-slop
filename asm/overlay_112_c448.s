#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F238C
	.extern ov112_021F1EFC
	.extern ov112_021F1F3C
	.extern ov112_021F1F54
	.extern ov112_021FF4C8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F238C
ov112_021F238C: ; 0x021F238C
	push {r3, r4, r5, lr}
	mov r3, #0x52
	add r5, r0, #0
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	beq _021F23AA
	lsl r0, r2, #0x17
	lsr r0, r0, #0x18
	beq _021F23AE
	cmp r0, #1
	beq _021F2438
	cmp r0, #2
	bne _021F23AC
_021F23AA:
	b _021F24B4
_021F23AC:
	b _021F24B0
_021F23AE:
	lsr r3, r2, #0x10
	ldr r2, _021F24B8 ; =ov112_021FF4C8
	add r0, r5, #0
	ldrsb r3, [r2, r3]
	mov r2, #0x48
	add r0, #0xac
	sub r2, r2, r3
	lsl r2, r2, #0x10
	mov r1, #0x98
	asr r2, r2, #0x10
	mov r3, #1
	bl ov112_021F1F54
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	lsl r0, r2, #0x10
	lsr r3, r0, #0x10
	lsr r0, r2, #0x10
	add r0, r0, #1
	lsl r0, r0, #0x10
	orr r0, r3
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _021F24B8 ; =ov112_021FF4C8
	lsr r3, r2, #0x10
	ldrsb r0, [r0, r3]
	cmp r0, #0x6f
	bne _021F24B4
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _021F24BC ; =0xFFFF01FF
	and r0, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x19
	add r2, r2, #1
	lsl r2, r2, #0x19
	lsr r2, r2, #0x10
	orr r0, r2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x19
	cmp r0, #2
	blo _021F24B4
	add r0, r5, #0
	add r0, #0xac
	mov r1, #3
	bl ov112_021F1F3C
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _021F24BC ; =0xFFFF01FF
	and r0, r2
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _021F24C0 ; =0xFFFFFE01
	and r0, r2
	lsl r2, r2, #0x17
	lsr r2, r2, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x17
	orr r0, r2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_021F2438:
	lsr r0, r2, #0x10
	lsl r1, r0, #3
	add r1, #0x98
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	lsl r1, r2, #0x10
	add r0, r0, #1
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, r3]
	ldr r0, [r5, r3]
	lsr r0, r0, #0x10
	cmp r0, #5
	blo _021F2468
	mov r1, #1
	and r0, r1
	cmp r0, #1
	beq _021F2460
	mov r1, #0
_021F2460:
	add r0, r5, #0
	add r0, #0xac
	bl ov112_021F1EFC
_021F2468:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r0, r0, #0x10
	cmp r0, #7
	blo _021F24A0
	add r0, r5, #0
	add r0, #0xac
	mov r1, #0
	bl ov112_021F1EFC
	mov r1, #0x52
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _021F24C0 ; =0xFFFFFE01
	and r0, r2
	lsl r2, r2, #0x17
	lsr r2, r2, #0x18
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x17
	orr r0, r2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_021F24A0:
	add r5, #0xac
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x48
	mov r3, #0
	bl ov112_021F1F54
	pop {r3, r4, r5, pc}
_021F24B0:
	bl GF_AssertFail
_021F24B4:
	pop {r3, r4, r5, pc}
	nop
_021F24B8: .word ov112_021FF4C8
_021F24BC: .word 0xFFFF01FF
_021F24C0: .word 0xFFFFFE01
	thumb_func_end ov112_021F238C

