#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F459C
	.public ov14_021F462C
	.extern ov14_021F2C1C
	.extern ov14_021F4410
	.extern ov14_021F46B0

    .text

	.text
	thumb_func_start ov14_021F459C
ov14_021F459C: ; 0x021F459C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, _021F4628 ; =0x0000044D
	ldrb r1, [r0, r1]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, #0x15
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #0
	add r1, sp, #0
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	add r2, sp, #0
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc6
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	mov r0, #0xc7
	add r2, sp, #0
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #4
	add r2, #2
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc7
	ldr r1, [r4, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x34]
	bl ov14_021F4410
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021F4628: .word 0x0000044D
	thumb_func_end ov14_021F459C

	thumb_func_start ov14_021F462C
ov14_021F462C: ; 0x021F462C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r1, [r7, #0x34]
	ldr r0, _021F46AC ; =0x0000044D
	mov r6, #0x15
	ldrb r0, [r1, r0]
	mov r1, #9
	lsl r1, r1, #6
	lsr r0, r0, #2
	lsl r5, r0, #2
	mov r0, #0xa
	bl Heap_AllocAtEnd
	add r4, r0, #0
	mov r0, #0x13
	mov r1, #0x4a
	mov r2, #0xa
	bl AllocAtEndAndReadWholeNarcMemberByIdPair
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	mov r0, #0
	str r0, [sp, #4]
_021F4660:
	ldr r0, [sp, #0xc]
	mov r2, #9
	ldr r0, [r0, #0x14]
	add r1, r4, #0
	lsl r2, r2, #6
	bl MI_CpuCopy8
	mov r0, #9
	lsl r0, r0, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #0x1e
	bl ov14_021F46B0
	mov r3, #9
	ldr r0, [r7, #0x34]
	add r1, r6, #0
	add r2, r4, #0
	lsl r3, r3, #6
	bl ov14_021F2C1C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #1
	add r5, r5, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _021F4660
	ldr r0, [sp, #8]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F46AC: .word 0x0000044D
	thumb_func_end ov14_021F462C

