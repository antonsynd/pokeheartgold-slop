#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E8B74
	.extern ov112_021F4138
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E8B74
ov112_021E8B74: ; 0x021E8B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #0x30]
	mov r0, #0xc0
	mul r0, r3
	str r2, [sp, #4]
	str r0, [sp, #0x10]
	bl GF_RTC_TimeToSec
	bl SetLCRNGSeed
	mov r7, #0
	str r7, [sp, #8]
_021E8B94:
	bl LCRandom
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r1, r2, r1
	ldr r0, [sp, #8]
	ldr r2, _021E8C58 ; =ov112_021F4138
	add r0, r0, r1
	ldr r1, [sp, #0x10]
	add r6, r2, r1
	mov r1, #0x14
	mul r1, r0
	add r6, #8
	str r1, [sp, #0x14]
	add r4, r6, r1
	ldr r1, [sp, #0x30]
	mov r2, #0x9a
	strb r0, [r1, r7]
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, #6]
	ldrh r0, [r6, r0]
	bl AllocAndLoadMonPersonal_HandleAlternateForm
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #0
	ldrh r0, [r6, r0]
	add r2, r4, #0
	add r3, r5, #0
	strh r0, [r5]
	ldrh r0, [r4, #4]
	strh r0, [r5, #2]
_021E8BDA:
	ldrh r0, [r2, #8]
	add r1, r1, #1
	add r2, r2, #2
	strh r0, [r3, #4]
	add r3, r3, #2
	cmp r1, #4
	blt _021E8BDA
	ldrh r0, [r4, #2]
	mov r1, #0x1f
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xd]
	ldrb r2, [r4, #6]
	bic r0, r1
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	strb r0, [r5, #0xd]
	ldrb r0, [r5, #0xd]
	mov r1, #0x60
	bic r0, r1
	ldrb r1, [r4, #7]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	strb r0, [r5, #0xd]
	ldrb r1, [r5, #0xd]
	mov r0, #0x80
	bic r1, r0
	strb r1, [r5, #0xd]
	ldr r0, [sp, #0xc]
	mov r1, #0x1c
	bl GetPersonalAttr
	ldrb r1, [r5, #0xe]
	mov r2, #1
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #1
	and r0, r2
	orr r0, r1
	strb r0, [r5, #0xe]
	ldrh r1, [r4, #0x10]
	ldr r0, [sp]
	strh r1, [r0]
	ldrh r1, [r4, #0x12]
	ldr r0, [sp, #4]
	strb r1, [r0, r7]
	ldr r0, [sp, #0xc]
	bl FreeMonPersonal
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp]
	add r5, #0x10
	add r0, r0, #2
	str r0, [sp]
	cmp r7, #3
	blt _021E8B94
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8C58: .word ov112_021F4138
	thumb_func_end ov112_021E8B74

