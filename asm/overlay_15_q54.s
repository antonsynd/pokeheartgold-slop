#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB14C
	.extern _022004EC
	.extern ov15_021FB380
	.extern ov15_021FD3F0
	.extern ov15_021FEB84
	.extern ov15_02201368

	.text

	.text
	thumb_func_start ov15_021FB14C
ov15_021FB14C: ; 0x021FB14C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _021FB370 ; =_022004EC
	add r4, r0, #0
	ldrb r2, [r1]
	add r0, sp, #0
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	ldrb r1, [r1, #4]
	strb r2, [r0, #3]
	strb r1, [r0, #4]
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	mov r2, #6
	bl LoadItemDataOrGfx
	add r7, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r3, r4, #0
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r5, [r0, #0xc]
	mov r2, #0
	mov r0, #0x7f
	add r1, r2, #0
	lsl r0, r0, #4
_021FB19C:
	add r2, r2, #1
	str r1, [r3, r0]
	add r3, r3, #4
	cmp r2, #5
	blt _021FB19C
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _021FB1B8
	b _021FB2F8
_021FB1B8:
	add r0, r1, #0
	add r0, #0x76
	ldrh r0, [r0]
	lsl r0, r0, #0x10
	lsr r2, r0, #0x11
	ldr r0, _021FB374 ; =0x0000FFFE
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021FB1E8
	add r0, r1, #0
	add r0, #0x64
	ldrb r2, [r0]
	mov r0, #0xc
	mul r0, r2
	add r0, r1, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bne _021FB280
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB1E8:
	add r0, r7, #0
	mov r1, #6
	bl GetItemAttr_PreloadedItemData
	cmp r0, #0
	beq _021FB280
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x72
	add r0, r1, #0
	add r0, #0x66
	ldrh r0, [r0]
	cmp r0, r2
	bne _021FB21C
	add r2, r1, #0
	add r2, #0x76
	ldrh r2, [r2]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1f
	cmp r2, #1
	bne _021FB21C
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB21C:
	add r2, r1, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	mul r2, r3
	add r2, r1, r2
	ldrb r3, [r2, #0xc]
	cmp r3, #5
	bne _021FB236
	mov r1, #2
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB236:
	ldr r2, _021FB378 ; =0x000001C1
	cmp r0, r2
	bne _021FB244
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB244:
	cmp r3, #4
	bne _021FB25A
	ldr r0, [r1, #0x70]
	bl Leftover_CanPlantBerry
	cmp r0, #1
	bne _021FB25A
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB25A:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x3e
	add r1, #0x66
	ldrh r1, [r1]
	cmp r1, r0
	bne _021FB27A
	bl SoundSys_GetGBSoundsState
	cmp r0, #1
	bne _021FB27A
	mov r1, #0xf
	add r0, sp, #0
	strb r1, [r0]
	b _021FB280
_021FB27A:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
_021FB280:
	add r0, r7, #0
	mov r1, #3
	bl GetItemAttr_PreloadedItemData
	cmp r0, #0
	bne _021FB2AE
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x66
	ldrh r0, [r0]
	bl ItemIdIsNotJohtoBall
	cmp r0, #1
	bne _021FB2A4
	mov r1, #8
	add r0, sp, #0
	strb r1, [r0, #2]
_021FB2A4:
	cmp r5, #3
	beq _021FB2AE
	mov r1, #5
	add r0, sp, #0
	strb r1, [r0, #1]
_021FB2AE:
	add r0, r7, #0
	mov r1, #4
	bl GetItemAttr_PreloadedItemData
	cmp r0, #0
	beq _021FB310
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Bag_GetRegisteredItem1
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r2, #0x66
	ldrh r2, [r2]
	cmp r2, r0
	beq _021FB2E8
	add r0, r1, #4
	ldr r0, [r4, r0]
	bl Bag_GetRegisteredItem2
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r1, #0x66
	ldrh r1, [r1]
	cmp r1, r0
	bne _021FB2F0
_021FB2E8:
	mov r1, #7
	add r0, sp, #0
	strb r1, [r0, #1]
	b _021FB310
_021FB2F0:
	mov r1, #6
	add r0, sp, #0
	strb r1, [r0, #1]
	b _021FB310
_021FB2F8:
	cmp r0, #6
	bne _021FB310
	add r1, #0x66
	ldrh r1, [r1]
	add r0, r5, #0
	bl ov15_021FD3F0
	cmp r0, #1
	bne _021FB310
	mov r1, #0xe
	add r0, sp, #0
	strb r1, [r0]
_021FB310:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #6
	beq _021FB32C
	cmp r5, #3
	beq _021FB32C
	cmp r5, #4
	beq _021FB32C
	mov r1, #0xc
	add r0, sp, #0
	strb r1, [r0, #3]
_021FB32C:
	mov r3, #0x7f
	mov r1, #0xb
	add r0, sp, #0
	strb r1, [r0, #4]
	ldr r6, _021FB37C ; =ov15_02201368
	mov r2, #0
	add r0, sp, #0
	add r1, r4, #0
	lsl r3, r3, #4
_021FB33E:
	ldrb r5, [r0]
	cmp r5, #0xff
	beq _021FB34A
	lsl r5, r5, #2
	ldr r5, [r6, r5]
	str r5, [r1, r3]
_021FB34A:
	add r2, r2, #1
	add r0, r0, #1
	add r1, r1, #4
	cmp r2, #5
	blt _021FB33E
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #5
	bl ov15_021FEB84
	add r0, r4, #0
	add r1, sp, #0
	bl ov15_021FB380
	add r0, r7, #0
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FB370: .word _022004EC
_021FB374: .word 0x0000FFFE
_021FB378: .word 0x000001C1
_021FB37C: .word ov15_02201368
	thumb_func_end ov15_021FB14C

