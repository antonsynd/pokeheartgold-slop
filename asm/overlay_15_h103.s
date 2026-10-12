#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FDC88
	.extern ov15_021FDB2C
	.extern ov15_021FDD54
	.extern ov15_022004F4
	.extern ov15_022005CC

	.text

	.text
	thumb_func_start ov15_021FDC88
ov15_021FDC88: ; 0x021FDC88
	push {r4, r5, lr}
	sub sp, #0x3c
	ldr r4, _021FDD34 ; =ov15_022005CC
	add r5, r0, #0
	add r3, sp, #0x18
	mov r2, #4
_021FDC94:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021FDC94
	ldr r0, [r4]
	add r2, sp, #0xc
	str r0, [r3]
	ldr r3, _021FDD38 ; =ov15_022004F4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _021FDD3C ; =0x00000615
	str r0, [r2]
	ldr r0, _021FDD40 ; =0x00000808
	ldrb r1, [r5, r1]
	add r0, r5, r0
	bl ov15_021FDB2C
	ldr r3, _021FDD44 ; =0x0000091C
	ldr r2, _021FDD48 ; =0x00000818
	ldrb r0, [r5, r3]
	add r1, r2, #0
	add r3, r3, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r1, #0xf8
	str r0, [sp, #8]
	add r0, r2, #0
	add r0, #0xec
	add r2, #0xfc
	ldrh r3, [r5, r3]
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r2, r5, r2
	bl Camera_Init_FromTargetDistanceAndAngle
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	ldr r0, _021FDD4C ; =0x0000081C
	add r4, r5, r0
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xa0
	ldr r0, [r0]
	bl ov15_021FDD54
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xc0
	ldr r0, [r0]
	bl ov15_021FDD54
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl ov15_021FDD54
	ldr r1, _021FDD50 ; =0x00000934
	add r0, r4, #0
	add r1, r5, r1
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl GF3dRender_DrawModel
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add sp, #0x3c
	pop {r4, r5, pc}
	.balign 4, 0
_021FDD34: .word ov15_022005CC
_021FDD38: .word ov15_022004F4
_021FDD3C: .word 0x00000615
_021FDD40: .word 0x00000808
_021FDD44: .word 0x0000091C
_021FDD48: .word 0x00000818
_021FDD4C: .word 0x0000081C
_021FDD50: .word 0x00000934
	thumb_func_end ov15_021FDC88

