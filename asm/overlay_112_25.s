#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E74A8
	.public ov112_021E7548
	.public ov112_021E7594
	.public ov112_021E7620
	.extern ov112_021E5D8C
	.extern ov112_021E5EC4
	.extern ov112_021FFAA4
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E74A8
ov112_021E74A8: ; 0x021E74A8
	push {r3, lr}
	ldr r3, _021E752C ; =ov112_021FFAA4
	str r0, [r3, #0x10]
	str r1, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr r0, _021E7530 ; =ov112_021FFB24
	mov r1, #0x32
	strb r1, [r0, #0x1c]
	mov r1, #0x20
	strb r1, [r0, #0x1d]
	mov r0, #0
	ldr r2, _021E7534 ; =0x00000D4C
	add r1, r0, #0
	bl ov112_021E5EC4
	ldr r0, _021E7538 ; =0x0000B732
	ldr r1, _021E7530 ; =ov112_021FFB24
	strh r0, [r1, #0x3c]
	mov r0, #0
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x3c]
	add r2, #0x7f
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	asr r0, r0, #7
	strh r0, [r1, #0x38]
	ldr r0, _021E752C ; =ov112_021FFAA4
	ldr r1, [r0, #0x48]
	cmp r1, #0
	beq _021E752A
	ldr r3, [r0, #0x44]
	ldr r2, _021E753C ; =0x00008C50
	str r3, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, [r0, #0x10]
	bl ov112_021E5D8C
	ldr r2, _021E752C ; =ov112_021FFAA4
	ldr r0, _021E7540 ; =0x00000119
	ldr r1, [r2, #0x44]
	add r3, r1, r0
	str r3, [r2, #0x54]
	ldr r1, [r2, #0x48]
	lsl r0, r0, #7
	add r1, r1, r0
	str r1, [r2, #0x58]
	ldr r0, [r2, #0x2c]
	ldr r2, _021E7544 ; =0x000028BE
	bl ov112_021E5D8C
	ldr r2, _021E752C ; =ov112_021FFAA4
	mov r0, #0x29
	ldr r3, [r2, #0x54]
	lsl r0, r0, #8
	add r3, #0x52
	str r3, [r2, #0x5c]
	ldr r1, [r2, #0x58]
	add r1, r1, r0
	str r1, [r2, #0x60]
	ldr r0, [r2, #0x30]
	mov r2, #0x89
	lsl r2, r2, #2
	bl ov112_021E5D8C
_021E752A:
	pop {r3, pc}
	.balign 4, 0
_021E752C: .word ov112_021FFAA4
_021E7530: .word ov112_021FFB24
_021E7534: .word 0x00000D4C
_021E7538: .word 0x0000B732
_021E753C: .word 0x00008C50
_021E7540: .word 0x00000119
_021E7544: .word 0x000028BE
	thumb_func_end ov112_021E74A8

	thumb_func_start ov112_021E7548
ov112_021E7548: ; 0x021E7548
	push {r4, lr}
	ldr r4, _021E7584 ; =ov112_021FFAA4
	str r0, [r4, #8]
	str r1, [r4, #0x38]
	str r2, [r4, #0x34]
	ldr r0, _021E7588 ; =ov112_021FFB24
	str r3, [r4, #0x30]
	mov r1, #0x40
	strb r1, [r0, #0x1c]
	mov r1, #0x20
	strb r1, [r0, #0x1d]
	mov r0, #0
	ldr r2, _021E758C ; =0x00000D4C
	add r1, r0, #0
	bl ov112_021E5EC4
	ldr r0, _021E7590 ; =0x00002BCA
	ldr r1, _021E7588 ; =ov112_021FFB24
	strh r0, [r1, #0x3c]
	mov r0, #0
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x3c]
	add r2, #0x7f
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	asr r0, r0, #7
	strh r0, [r1, #0x38]
	pop {r4, pc}
	nop
_021E7584: .word ov112_021FFAA4
_021E7588: .word ov112_021FFB24
_021E758C: .word 0x00000D4C
_021E7590: .word 0x00002BCA
	thumb_func_end ov112_021E7548

	thumb_func_start ov112_021E7594
ov112_021E7594: ; 0x021E7594
	push {r4, lr}
	ldr r4, _021E7608 ; =ov112_021FFAA4
	str r0, [r4, #0x2c]
	str r1, [r4, #0x30]
	str r2, [r4, #0x38]
	ldr r0, _021E760C ; =ov112_021FFB24
	str r3, [r4, #0x34]
	mov r1, #0x52
	strb r1, [r0, #0x1c]
	mov r1, #0x20
	strb r1, [r0, #0x1d]
	mov r0, #0
	ldr r2, _021E7610 ; =0x00000D4C
	add r1, r0, #0
	bl ov112_021E5EC4
	ldr r0, _021E7614 ; =0x0000382E
	ldr r1, _021E760C ; =ov112_021FFB24
	strh r0, [r1, #0x3c]
	mov r0, #0
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x3c]
	add r2, #0x7f
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	add r2, r4, #0
	asr r0, r0, #7
	ldr r4, [r2, #0x48]
	strh r0, [r1, #0x38]
	cmp r4, #0
	beq _021E7606
	ldr r1, [r2, #0x44]
	ldr r0, _021E7618 ; =0x00000119
	add r3, r1, r0
	lsl r0, r0, #7
	str r3, [r2, #0x54]
	add r1, r4, r0
	str r1, [r2, #0x58]
	ldr r0, [r2, #0x2c]
	ldr r2, _021E761C ; =0x000028BE
	bl ov112_021E5D8C
	ldr r2, _021E7608 ; =ov112_021FFAA4
	mov r0, #0x29
	ldr r3, [r2, #0x54]
	lsl r0, r0, #8
	add r3, #0x52
	str r3, [r2, #0x5c]
	ldr r1, [r2, #0x58]
	add r1, r1, r0
	str r1, [r2, #0x60]
	ldr r0, [r2, #0x30]
	mov r2, #0x89
	lsl r2, r2, #2
	bl ov112_021E5D8C
_021E7606:
	pop {r4, pc}
	.balign 4, 0
_021E7608: .word ov112_021FFAA4
_021E760C: .word ov112_021FFB24
_021E7610: .word 0x00000D4C
_021E7614: .word 0x0000382E
_021E7618: .word 0x00000119
_021E761C: .word 0x000028BE
	thumb_func_end ov112_021E7594

	thumb_func_start ov112_021E7620
ov112_021E7620: ; 0x021E7620
	push {r3, lr}
	ldr r2, _021E7658 ; =ov112_021FFAA4
	str r0, [r2, #0x38]
	str r1, [r2, #0x30]
	ldr r0, _021E765C ; =ov112_021FFB24
	mov r1, #0x60
	strb r1, [r0, #0x1c]
	mov r1, #0x20
	strb r1, [r0, #0x1d]
	mov r0, #0
	ldr r2, _021E7660 ; =0x00000D4C
	add r1, r0, #0
	bl ov112_021E5EC4
	ldr r0, _021E7664 ; =0x000024D8
	ldr r1, _021E765C ; =ov112_021FFB24
	strh r0, [r1, #0x3c]
	mov r0, #0
	strh r0, [r1, #0x3a]
	ldrh r2, [r1, #0x3c]
	add r2, #0x7f
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	asr r0, r0, #7
	strh r0, [r1, #0x38]
	pop {r3, pc}
	nop
_021E7658: .word ov112_021FFAA4
_021E765C: .word ov112_021FFB24
_021E7660: .word 0x00000D4C
_021E7664: .word 0x000024D8
	thumb_func_end ov112_021E7620

