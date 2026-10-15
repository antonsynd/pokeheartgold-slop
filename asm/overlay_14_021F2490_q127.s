#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F4A64
	.extern ov14_021F8080

    .text

	.text
	thumb_func_start ov14_021F4A64
ov14_021F4A64: ; 0x021F4A64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #0x10]
	mov r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x20]
_021F4A76:
	mov r0, #0xa
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r5, r0, #2
_021F4A8A:
	ldr r0, [sp]
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #4]
	ldr r1, [sp, #4]
	add r2, r3, r2
	bl PCStorage_GetMonByIndexPair
	str r0, [sp, #0x28]
	bl AcquireBoxMonLock
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021F4B4A
	ldr r0, [sp, #0x28]
	mov r1, #0x4c
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _021F4AF0
	ldr r0, [sp, #0x28]
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp]
	mov r3, #0x1b
	ldr r1, [r0, #0x34]
	mov r0, #0x45
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl GetMonBaseStatEx_HandleAlternateForm
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	b _021F4AFC
_021F4AF0:
	ldr r0, _021F4B88 ; =0x000001EA
	cmp r4, r0
	bne _021F4AFA
	mov r1, #1
	b _021F4AFC
_021F4AFA:
	mov r1, #8
_021F4AFC:
	ldr r0, _021F4B8C ; =ov14_021F8080
	ldr r4, [sp, #0x10]
	ldrb r0, [r0, r1]
	add r0, #0x20
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #8
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r0, r4, #0
	cmp r0, r5
	bge _021F4B4A
	ldr r0, [sp, #0x18]
	add r1, r0, #0
	asr r7, r0, #3
	mov r0, #7
	add r6, r1, #0
	and r6, r0
_021F4B24:
	asr r2, r4, #3
	lsl r2, r2, #2
	lsl r1, r4, #0x1d
	add r2, r2, r7
	lsr r1, r1, #0x1a
	lsl r2, r2, #6
	add r1, r1, r2
	add r2, r6, r1
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, r2
	mov r2, #2
	bl MIi_CpuClear16
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r5
	blt _021F4B24
_021F4B4A:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	bl ReleaseBoxMonLock
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	cmp r0, #6
	blo _021F4A8A
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #5
	bhs _021F4B84
	b _021F4A76
_021F4B84:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F4B88: .word 0x000001EA
_021F4B8C: .word ov14_021F8080
	thumb_func_end ov14_021F4A64


