#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F44B4
	.public ov14_021F4530
	.public ov14_021F459C
	.public ov14_021F462C
	.public ov14_021F46B0
	.extern ov14_021F2A18
	.extern ov14_021F2C1C
	.extern ov14_021F4410

    .text

	.text
	thumb_func_start ov14_021F44B4
ov14_021F44B4: ; 0x021F44B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	add r6, r1, #0
	mov r7, #4
	add r4, #0x10
_021F44C0:
	mov r0, #0xbf
	lsl r0, r0, #2
	add r1, sp, #0
	ldr r0, [r4, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r1, #2
	mov r0, #0xbf
	lsl r0, r0, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	add r2, r2, r6
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #8
	bls _021F44C0
	add r0, r5, #0
	bl ov14_021F4410
	mov r4, #0
	add r7, sp, #0
_021F44FE:
	mov r0, #0x35
	lsl r0, r0, #4
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r2, #0
	ldrsh r2, [r7, r2]
	mov r0, #0x35
	mov r1, #2
	lsl r0, r0, #4
	add r2, r2, r6
	lsl r2, r2, #0x10
	ldrsh r1, [r7, r1]
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _021F44FE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F44B4

	thumb_func_start ov14_021F4530
ov14_021F4530: ; 0x021F4530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	bl ov14_021E7930
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r1, _021F4598 ; =0x0000044D
	ldrb r1, [r0, r1]
	lsr r2, r1, #2
	lsr r1, r4, #2
	cmp r2, r1
	bne _021F4558
	mov r1, #6
	mov r2, #1
	bl ov14_021F2A18
	b _021F4560
_021F4558:
	mov r1, #6
	mov r2, #0
	bl ov14_021F2A18
_021F4560:
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0xc5
	ldr r1, [r5, #0x34]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #3
	add r2, r4, #0
	and r2, r1
	mov r1, #0x2e
	mul r1, r2
	add r1, #0x3b
	lsl r1, r1, #0x10
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	nop
_021F4598: .word 0x0000044D
	thumb_func_end ov14_021F4530

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

	thumb_func_start ov14_021F46B0
ov14_021F46B0: ; 0x021F46B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	ldr r4, [sp, #0x18]
	cmp r7, #0x10
	blo _021F46D8
	add r1, r7, #0
	ldr r0, [r0, #4]
	sub r1, #0x10
	bl PCStorage_IsBonusWallpaperUnlocked
	cmp r0, #0
	bne _021F46D0
	mov r2, #0x28
	b _021F46DE
_021F46D0:
	add r7, #0x10
	lsl r0, r7, #0x18
	lsr r2, r0, #0x18
	b _021F46DE
_021F46D8:
	add r7, #0x10
	lsl r0, r7, #0x18
	lsr r2, r0, #0x18
_021F46DE:
	mov r1, #0
	cmp r4, #0
	bls _021F46F2
_021F46E4:
	ldrb r0, [r5, r1]
	cmp r6, r0
	bne _021F46EC
	strb r2, [r5, r1]
_021F46EC:
	add r1, r1, #1
	cmp r1, r4
	blo _021F46E4
_021F46F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F46B0

