#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E65C4
	.public ov14_021E66F4

    .text

	.text
	thumb_func_start ov14_021E65C4
ov14_021E65C4: ; 0x021E65C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r6, [r0, #0xc]
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E665E
	mov r7, #0
_021E65DA:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021E6650
	ldr r1, [r6, #4]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r4, [r2, r0]
	ldr r0, [r6, #8]
	mov r2, #0x80
	tst r2, r0
	add r2, sp, #4
	bne _021E6604
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
	b _021E6634
_021E6604:
	cmp r1, #0x1e
	blo _021E661A
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	mov r0, #0x23
	add r1, #2
	bl ov14_021F2F88
	b _021E662A
_021E661A:
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r0, r1, #0
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
_021E662A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A18
_021E6634:
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6650:
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #7
	blo _021E65DA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E665E:
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r4, r6, #0
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0
	str r0, [sp]
	add r7, sp, #4
_021E6674:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E66DE
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r0, [r1, r0]
	mov r1, #0x18
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x10]
	mov ip, r0
	mov r0, #0x1c
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	add r0, r0, r1
	strh r0, [r7, #2]
	mov r1, #0x1a
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x14]
	mov r0, #0x1e
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	mov r2, #0
	add r0, r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r5, #0x34]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov14_021F3190
_021E66DE:
	ldr r0, [sp]
	add r4, #0x20
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #7
	blo _021E6674
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E66F0: .word 0x00004094
	thumb_func_end ov14_021E65C4

	thumb_func_start ov14_021E66F4
ov14_021E66F4: ; 0x021E66F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E676E
	mov r6, #0
_021E670A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E6760
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r3, r5, #0
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	add r3, #0x22
	ldrb r7, [r1, r0]
	add r1, sp, #4
	ldrb r3, [r3]
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _021E6744
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #4
	add r1, #0x90
	strh r1, [r0]
_021E6744:
	ldr r1, [r5, #0x34]
	lsl r0, r7, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6760:
	add r6, r6, #1
	add r4, #0x20
	cmp r6, #7
	blo _021E670A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E676E:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	mov r1, #0
	add r0, r4, #0
_021E6780:
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _021E6802
	add r2, r5, #0
	add r2, #0x21
	ldrb r3, [r2]
	ldr r2, [r0, #8]
	cmp r3, r2
	bne _021E6802
	lsl r6, r1, #5
	add r0, r4, #4
	str r0, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r0, r6]
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	ldrb r3, [r1, r0]
	add r0, r4, r6
	mov r1, #0x1c
	ldrsh r7, [r0, r1]
	mov r1, #0x18
	ldrsh r1, [r0, r1]
	mov ip, r1
	add r1, r4, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r0, #0x10]
	add r4, #0xe0
	mul r1, r2
	lsr r1, r1, #0x10
	mov r2, ip
	mul r1, r2
	add r1, r7, r1
	add r7, sp, #4
	strh r1, [r7, #2]
	mov r1, #0x1e
	ldrsh r2, [r0, r1]
	mov r1, #0x1a
	ldrsh r1, [r0, r1]
	ldr r4, [r4]
	ldr r0, [r0, #0x14]
	mul r0, r4
	lsr r0, r0, #0x10
	mul r0, r1
	add r0, r2, r0
	strh r0, [r7]
	mov r2, #0
	ldr r1, [r5, #0x34]
	lsl r0, r3, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	mov r2, #0
	bl ov14_021F3190
	b _021E680A
_021E6802:
	add r1, r1, #1
	add r0, #0x20
	cmp r1, #7
	blo _021E6780
_021E680A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6810: .word 0x00004094
	thumb_func_end ov14_021E66F4

