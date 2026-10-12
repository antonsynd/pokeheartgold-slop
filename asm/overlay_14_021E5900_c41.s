#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6AA0
	.public ov14_021E6B48
	.public ov14_021E6C0C
	.extern ov14_021E6070

    .text

	.text
	thumb_func_start ov14_021E6AA0
ov14_021E6AA0: ; 0x021E6AA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	cmp r0, #0
	bne _021E6ABA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ABA:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6ACE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ACE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6AEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6AEC:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6B0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B0A:
	ldr r0, [sp]
	cmp r0, #0x70
	bne _021E6B26
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B26
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B26:
	cmp r7, #0x70
	bne _021E6B40
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B40:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6B44: .word 0x000001E7
	thumb_func_end ov14_021E6AA0

	thumb_func_start ov14_021E6B48
ov14_021E6B48: ; 0x021E6B48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	add r2, r0, r1
	ldr r1, _021E6C08 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r2, [r4, #8]
	mov r0, #0x80
	tst r0, r2
	bne _021E6B88
	add r5, #0x22
	ldrb r3, [r5]
	add r1, sp, #0
	add r0, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	b _021E6B98
_021E6B88:
	mov r1, #0x7f
	and r1, r2
	add r2, sp, #0
	ldr r0, [r5, #0x34]
	add r2, #2
	add r3, sp, #0
	bl ov14_021F4940
_021E6B98:
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BB2
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6BBC
_021E6BB2:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6BBC:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BEE
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_021E6BEE:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021E6C08: .word 0x00004094
	thumb_func_end ov14_021E6B48

	thumb_func_start ov14_021E6C0C
ov14_021E6C0C: ; 0x021E6C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #8]
	add r2, r0, r1
	ldr r1, _021E6CC4 ; =0x00004094
	ldrb r6, [r2, r1]
	ldr r2, [r4, #4]
	add r2, r0, r2
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r1, [r5, #0x34]
	lsl r0, r6, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6C6A
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6C74
_021E6C6A:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6C74:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6CA8
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	add sp, #4
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, pc}
_021E6CA8:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6CC4: .word 0x00004094
	thumb_func_end ov14_021E6C0C

