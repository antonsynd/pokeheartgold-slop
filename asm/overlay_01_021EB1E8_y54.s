#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EC31C
	.public ov01_021EC470
	.public ov01_021EC4A8
	.public ov01_021EC504
	.extern ov01_021EB5F4
	.extern ov01_021EC304

	.text

	.text
	thumb_func_start ov01_021EC31C
ov01_021EC31C: ; 0x021EC31C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r3, _021EC45C ; =NNS_G3dGlb + 0x258
	add r5, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021EC460 ; =0x00000F4C
	ldr r2, [sp, #0x18]
	ldr r1, [r5, r0]
	add r0, #8
	sub r6, r2, r1
	ldr r1, [sp, #0x20]
	ldr r0, [r5, r0]
	sub r4, r1, r0
	mov r0, #1
	mov r1, #3
	lsl r0, r0, #0xe
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl Camera_GetPerspectiveAngle
	str r0, [sp, #0xc]
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x24]
	bl Camera_GetDistance
	add r1, r0, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	add r3, sp, #0x14
	bl sub_02020E10
	mov r1, #1
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x14
	bl FX_Div
	str r0, [sp, #0x14]
	cmp r4, #0
	bgt _021EC398
	ldr r0, [sp, #0x10]
	ldr r1, _021EC464 ; =0x000BE8D0
	bl FX_Div
	b _021EC3A0
_021EC398:
	ldr r0, [sp, #0x10]
	ldr r1, _021EC468 ; =0x000BE811
	bl FX_Div
_021EC3A0:
	mov r7, #1
	lsl r7, r7, #0xc
	str r0, [sp, #0x10]
	cmp r6, #0
	bge _021EC3C8
	ldr r7, _021EC46C ; =0xFFFFF000
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021EC3C8:
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	bl FX_Div
	add r6, r0, #0
	cmp r7, #0
	bge _021EC3F0
	asr r1, r6, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021EC3F0:
	mov r7, #1
	lsl r7, r7, #0xc
	cmp r4, #0
	bge _021EC416
	ldr r7, _021EC46C ; =0xFFFFF000
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r7, #0xc
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
_021EC416:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl FX_Div
	add r3, r0, #0
	cmp r7, #0
	bge _021EC43E
	asr r1, r3, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
_021EC43E:
	add r0, r6, r3
	beq _021EC450
	ldr r0, _021EC460 ; =0x00000F4C
	add r2, sp, #0x18
	add r4, r5, r0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_021EC450:
	ldr r0, [sp, #4]
	str r6, [r0]
	ldr r0, [sp, #8]
	str r3, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EC45C: .word NNS_G3dGlb + 0x258
_021EC460: .word 0x00000F4C
_021EC464: .word 0x000BE8D0
_021EC468: .word 0x000BE811
_021EC46C: .word 0xFFFFF000
	thumb_func_end ov01_021EC31C

	thumb_func_start ov01_021EC470
ov01_021EC470: ; 0x021EC470
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov01_021EC4A8
	cmp r5, #0
	beq _021EC494
	ldr r0, [sp, #4]
	asr r1, r0, #0xc
	str r1, [r5]
	bpl _021EC494
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r5]
_021EC494:
	cmp r4, #0
	beq _021EC4A4
	ldr r0, [sp]
	asr r0, r0, #0xc
	str r0, [r4]
	bpl _021EC4A4
	add r0, r0, #1
	str r0, [r4]
_021EC4A4:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021EC470

	thumb_func_start ov01_021EC4A8
ov01_021EC4A8: ; 0x021EC4A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r0, sp, #8
	add r1, sp, #4
	add r2, r5, #0
	bl ov01_021EC31C
	ldr r4, [r5, #0x40]
	add r5, #0xc
	cmp r4, r5
	beq _021EC4EC
	add r6, sp, #0xc
_021EC4C6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov01_021EC304
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov01_021EB5F4
	ldr r4, [r4, #0x34]
	cmp r4, r5
	bne _021EC4C6
_021EC4EC:
	cmp r7, #0
	beq _021EC4F4
	ldr r0, [sp, #8]
	str r0, [r7]
_021EC4F4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021EC4FE
	ldr r1, [sp, #4]
	str r1, [r0]
_021EC4FE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC4A8

	thumb_func_start ov01_021EC504
ov01_021EC504: ; 0x021EC504
	str r1, [r0]
	strh r2, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r1, [sp]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	strh r1, [r0, #0xe]
	ldr r1, [sp, #8]
	strh r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	strh r1, [r0, #0x12]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC504

