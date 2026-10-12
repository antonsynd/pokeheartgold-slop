#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230E78

	.text

	.text
	thumb_func_start ov45_02230E78
ov45_02230E78: ; 0x02230E78
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl sub_02023F90
	cmp r0, #0
	beq _02230E8C
	add r4, r0, #0
	add r4, #0x14
	b _02230E8E
_02230E8C:
	mov r4, #0
_02230E8E:
	add r0, r5, #0
	bl sub_02023E68
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0
	str r0, [r2]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x24]
	mov r0, #0x20
	ldrsh r2, [r4, r0]
	strh r2, [r1, #0x26]
	ldrsh r0, [r4, r0]
	strh r0, [r1, #0x28]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x24]
	asr r0, r0, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	mov r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x38]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x38]
	mov r0, #0x1a
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x3c]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x3c]
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r6
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	add r0, r2, r1
	str r0, [sp, #0x40]
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #0x24]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	add r4, r6, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x40]
	orr r1, r0
	sub r0, r2, r1
	str r0, [sp, #0x40]
	add r0, sp, #0
	bl MTX_Identity33_
	ldr r1, _02230F8C ; =NNS_G3dGlb + 0xBC
	add r0, sp, #0
	bl MI_Copy36B
	ldr r1, _02230F90 ; =NNS_G3dGlb + 0x80
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl sub_02023E94
	bl NNS_G3dGlbSetBaseScale
	add r0, sp, #0x38
	add r1, sp, #0x24
	bl sub_0201FA34
	cmp r0, #0
	bne _02230F84
	add sp, #0x44
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_02230F84:
	mov r0, #1
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	nop
_02230F8C: .word NNS_G3dGlb + 0xBC
_02230F90: .word NNS_G3dGlb + 0x80
	thumb_func_end ov45_02230E78

