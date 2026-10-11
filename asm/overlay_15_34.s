#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FB060
	.public ov15_021FB114
	.public ov15_021FB14C
	.public ov15_021FB380
	.public ov15_021FB3F0
	.public ov15_021FB518
	.public ov15_021FB5AC
	.public ov15_021FB604
	.extern _022004EC
	.extern ov15_021F9C78
	.extern ov15_021F9F08
	.extern ov15_021FA074
	.extern ov15_021FAC2C
	.extern ov15_021FD3F0
	.extern ov15_021FD404
	.extern ov15_021FD574
	.extern ov15_021FD774
	.extern ov15_021FD7D0
	.extern ov15_021FE868
	.extern ov15_021FEB84
	.extern ov15_021FED24
	.extern ov15_021FED3C
	.extern ov15_021FF364
	.extern ov15_021FF560
	.extern ov15_021FF6BC
	.extern ov15_021FF758
	.extern ov15_021FF7AC
	.extern ov15_021FFECC
	.extern ov15_02200030
	.extern ov15_02200140
	.extern ov15_0220023C
	.extern ov15_02200294
	.extern ov15_02200528
	.extern ov15_02200529
	.extern ov15_0220052A
	.extern ov15_0220052B
	.extern ov15_02201368
	.extern ov15_02201468

	.text

	.text
	thumb_func_start ov15_021FB060
ov15_021FB060: ; 0x021FB060
	push {r3, r4, r5, lr}
	mov r1, #0xd2
	add r5, r0, #0
	mov r3, #0
	lsl r1, r1, #2
	str r3, [r5, r1]
	ldr r1, _021FB10C ; =0x00000671
	strb r3, [r5, r1]
	add r2, r1, #1
	strb r3, [r5, r2]
	add r1, r1, #3
	str r3, [r5, r1]
	bl ov15_021FB114
	add r0, r5, #0
	bl ov15_021F9F08
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	bl ov15_021FA074
	mov r1, #0
	add r2, r0, #0
	add r0, r5, #0
	add r3, r1, #0
	bl ov15_021FD574
	mov r2, #6
	ldrsh r1, [r4, r2]
	add r0, r5, #0
	sub r2, r2, #7
	mov r3, #0
	bl ov15_021FF364
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_02200030
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	mov r1, #1
	bl ov15_021FD404
	mov r2, #6
	ldrb r1, [r4, #9]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov15_021FF6BC
	add r0, r5, #0
	bl ov15_021FA074
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl ov15_02200140
	add r0, r5, #0
	bl ov15_021FED24
	ldr r1, _021FB110 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021FB10C: .word 0x00000671
_021FB110: .word 0x00000644
	thumb_func_end ov15_021FB060

	thumb_func_start ov15_021FB114
ov15_021FB114: ; 0x021FB114
	push {r4, lr}
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	add r4, r2, #4
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	mul r2, r3
	add r3, r4, r2
	ldr r2, _021FB148 ; =0x00000671
	ldrb r2, [r0, r2]
	cmp r2, #0
	beq _021FB146
	ldrh r2, [r3, #4]
	add r1, #0x1c
	ldr r0, [r0, r1]
	sub r2, r2, #1
	lsl r2, r2, #4
	add r2, #0x10
	lsl r2, r2, #0x10
	mov r1, #0xb1
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
_021FB146:
	pop {r4, pc}
	.balign 4, 0
_021FB148: .word 0x00000671
	thumb_func_end ov15_021FB114

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

	thumb_func_start ov15_021FB380
ov15_021FB380: ; 0x021FB380
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _021FB3E8 ; =0x0000066C
	add r5, r0, #0
	mov r2, #0
	str r2, [r5, r1]
	ldr r2, [r5, r1]
	ldr r1, _021FB3EC ; =ov15_02201468
	ldrb r1, [r1, r2]
	bl ov15_021FFECC
	add r0, r5, #0
	add r1, r4, #0
	bl ov15_0220023C
	mov r0, #0x61
	mov r1, #3
	lsl r0, r0, #2
	lsl r1, r1, #8
	ldrb r2, [r4]
	add r0, r5, r0
	add r1, r5, r1
	bl ov15_021FF758
	mov r0, #0x65
	mov r1, #3
	lsl r0, r0, #2
	lsl r1, r1, #8
	ldrb r2, [r4, #1]
	add r0, r5, r0
	add r1, r5, r1
	bl ov15_021FF758
	mov r0, #0x69
	mov r1, #3
	lsl r0, r0, #2
	lsl r1, r1, #8
	ldrb r2, [r4, #2]
	add r0, r5, r0
	add r1, r5, r1
	bl ov15_021FF758
	mov r0, #0x6d
	mov r1, #3
	lsl r0, r0, #2
	lsl r1, r1, #8
	ldrb r2, [r4, #3]
	add r0, r5, r0
	add r1, r5, r1
	bl ov15_021FF758
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FB3E8: .word 0x0000066C
_021FB3EC: .word ov15_02201468
	thumb_func_end ov15_021FB380

	thumb_func_start ov15_021FB3F0
ov15_021FB3F0: ; 0x021FB3F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021FB4F8 ; =0x0000066C
	mov r2, #0x40
	ldr r1, [r5, r0]
	ldr r0, _021FB4FC ; =gSystem
	add r4, r1, #0
	ldr r0, [r0, #0x48]
	tst r2, r0
	beq _021FB40C
	ldr r0, _021FB500 ; =ov15_02200528
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB40C:
	mov r2, #0x80
	tst r2, r0
	beq _021FB41A
	ldr r0, _021FB504 ; =ov15_02200529
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB41A:
	mov r2, #0x20
	tst r2, r0
	beq _021FB428
	ldr r0, _021FB508 ; =ov15_0220052A
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
	b _021FB434
_021FB428:
	mov r2, #0x10
	tst r0, r2
	beq _021FB434
	ldr r0, _021FB50C ; =ov15_0220052B
	lsl r2, r1, #2
	ldrb r4, [r0, r2]
_021FB434:
	cmp r4, r1
	beq _021FB452
	ldr r0, _021FB4F8 ; =0x0000066C
	ldr r1, _021FB510 ; =ov15_02201468
	str r4, [r5, r0]
	ldrb r1, [r1, r4]
	add r0, r5, #0
	bl ov15_021FFECC
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB452:
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FAC2C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021FB4A4
	add r0, r5, #0
	mov r1, #1
	bl ov15_021FD774
	ldr r0, _021FB4F8 ; =0x0000066C
	ldr r1, _021FB510 ; =ov15_02201468
	str r6, [r5, r0]
	ldrb r1, [r1, r6]
	add r0, r5, #0
	bl ov15_021FFECC
	cmp r6, #4
	bne _021FB48C
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB48C:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB4F2
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021FB4A4:
	ldr r0, _021FB4FC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021FB4DE
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x7f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB4CE
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	bl ov15_021FD774
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021FB4CE:
	cmp r4, #4
	bne _021FB4F2
	ldr r0, _021FB514 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB4DE:
	mov r0, #2
	tst r0, r1
	beq _021FB4F2
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #1
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021FB4F2:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021FB4F8: .word 0x0000066C
_021FB4FC: .word gSystem
_021FB500: .word ov15_02200528
_021FB504: .word ov15_02200529
_021FB508: .word ov15_0220052A
_021FB50C: .word ov15_0220052B
_021FB510: .word ov15_02201468
_021FB514: .word 0x000005DC
	thumb_func_end ov15_021FB3F0

	thumb_func_start ov15_021FB518
ov15_021FB518: ; 0x021FB518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov15_021F9F08
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r4, r2, r0
	add r0, r5, #0
	bl ov15_021FA074
	mov r1, #0
	add r2, r0, #0
	add r0, r5, #0
	add r3, r1, #0
	bl ov15_021FD574
	mov r2, #6
	ldrsh r1, [r4, r2]
	add r0, r5, #0
	sub r2, r2, #7
	mov r3, #0
	bl ov15_021FF364
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_02200030
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x64
	ldrb r2, [r2]
	mov r1, #1
	bl ov15_021FD404
	mov r2, #6
	ldrb r1, [r4, #9]
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov15_021FF6BC
	add r0, r5, #0
	bl ov15_021FA074
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov15_02200140
	ldr r1, _021FB5A8 ; =0x00000644
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov15_021FFECC
	add r0, r5, #0
	mov r1, #1
	bl ov15_021F9C78
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021FB5A8: .word 0x00000644
	thumb_func_end ov15_021FB518

	thumb_func_start ov15_021FB5AC
ov15_021FB5AC: ; 0x021FB5AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl ov15_021FB3F0
	add r1, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _021FB5C8
	add r0, r0, #1
	cmp r1, r0
	beq _021FB5F8
	b _021FB5DC
_021FB5C8:
	mov r0, #0x1c
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, pc}
_021FB5DC:
	ldr r0, _021FB600 ; =0x00000948
	mov r2, #9
	str r1, [r4, r0]
	add r1, #0x1c
	mov r0, #0x1d
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, pc}
_021FB5F8:
	mov r0, #4
	add sp, #4
	pop {r3, r4, pc}
	nop
_021FB600: .word 0x00000948
	thumb_func_end ov15_021FB5AC

	thumb_func_start ov15_021FB604
ov15_021FB604: ; 0x021FB604
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov15_02200294
	add r0, r5, #0
	bl ov15_021FF560
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov15_021FF7AC
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	add r0, r5, #0
	bl ov15_021FA074
	add r1, r4, #4
	add r4, #0x64
	add r2, r0, #0
	ldrb r4, [r4]
	mov r3, #0xc
	add r0, r5, #0
	mul r3, r4
	add r1, r1, r3
	mov r3, #0
	bl ov15_02200140
	add r0, r5, #0
	bl ov15_021FE868
	add r0, r5, #0
	bl ov15_021FED3C
	add r0, r5, #0
	bl ov15_021FB518
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov15_021FB604

