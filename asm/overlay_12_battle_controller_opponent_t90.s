#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225B454
	.public ov12_0225B494
	.public ov12_0225B7B8
	.public ov12_0225B960
	.public ov12_0225BE38
	.public ov12_0225C18C
	.public ov12_0225C6C8
	.public ov12_0225C9BC
	.public ov12_0225CC58
	.public ov12_0225CDB8
	.public ov12_0225CE28
	.public ov12_0225D138
	.public ov12_0225D644
	.public ov12_0225D890
	.public ov12_0225D990
	.public ov12_0225DA18
	.public ov12_0225DA8C
	.public ov12_0225DAD4
	.public ov12_0225E104
	.extern ov12_02260D84
	.extern ov12_022612A4
	.extern ov12_02261B80
	.extern ov12_02261CA8
	.extern ov12_02261DC8
	.extern ov12_02261F38
	.extern ov12_0226D120
	.extern ov12_0226D128
	.extern ov12_0226D15A
	.extern ov12_0226D1E8
	.extern ov12_0226D1EA

	.text

	.text
	thumb_func_start ov12_0225B454
ov12_0225B454: ; 0x0225B454
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #5
	mov r1, #0xc
	add r5, r2, #0
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #0
	strb r2, [r4, #6]
	str r6, [r4]
	ldrb r0, [r5]
	add r1, r4, #0
	strb r0, [r4, #4]
	ldrb r0, [r5, #1]
	strb r0, [r4, #7]
	mov r0, #0x65
	strb r2, [r4, #8]
	lsl r0, r0, #2
	ldrb r0, [r7, r0]
	strb r0, [r4, #5]
	ldr r0, _0225B490 ; =ov12_02260D84
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B490: .word ov12_02260D84
	thumb_func_end ov12_0225B454

	thumb_func_start ov12_0225B494
ov12_0225B494: ; 0x0225B494
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bls _0225B4AC
	b _0225B798
_0225B4AC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B4B8: ; jump table
	.short _0225B4C2 - _0225B4B8 - 2 ; case 0
	.short _0225B4CC - _0225B4B8 - 2 ; case 1
	.short _0225B4DA - _0225B4B8 - 2 ; case 2
	.short _0225B728 - _0225B4B8 - 2 ; case 3
	.short _0225B77C - _0225B4B8 - 2 ; case 4
_0225B4C2:
	mov r0, #0x1c
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225B4CC:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bne _0225B5A0
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225B4DA:
	ldrb r0, [r4, #0x13]
	add r1, sp, #0x14
	cmp r0, #2
	ldr r0, [r4, #0xc]
	beq _0225B4E6
	b _0225B61A
_0225B4E6:
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225B4FA
	cmp r0, #3
	bne _0225B51C
_0225B4FA:
	add r1, sp, #0x14
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #0xc]
	bge _0225B512
	ldr r0, [r0]
	mov r1, #8
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225B51C
_0225B512:
	ldr r0, [r0]
	mov r1, #0xc0
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
_0225B51C:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x14
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0225B540
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_SetAttr
	b _0225B590
_0225B540:
	cmp r0, #3
	bne _0225B56A
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl Pokepic_AddAttr
	b _0225B590
_0225B56A:
	cmp r0, #5
	bne _0225B590
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl Pokepic_AddAttr
_0225B590:
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	cmp r0, r1
	bge _0225B5A2
_0225B5A0:
	b _0225B7B4
_0225B5A2:
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl Pokepic_SetAttr
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_SetAttr
	mov r0, #0x69
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldrh r0, [r4, #0x16]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r4, #0x13]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #8]
	bl ov12_02261F38
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225B5F6
	cmp r0, #3
	bne _0225B602
_0225B5F6:
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
_0225B602:
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl Pokepic_StartPaletteFade
	ldrb r0, [r4, #0x12]
	add sp, #0x70
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B61A:
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225B62E
	cmp r0, #2
	bne _0225B650
_0225B62E:
	add r0, sp, #0x14
	mov r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #0xc]
	ble _0225B646
	ldr r0, [r0]
	sub r1, #0xa
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225B650
_0225B646:
	ldr r0, [r0]
	mov r1, #0x40
	mov r2, #0x88
	bl ManagedSprite_SetPositionXY
_0225B650:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x14
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0225B674
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_SetAttr
	b _0225B6C4
_0225B674:
	cmp r0, #2
	bne _0225B69C
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl Pokepic_AddAttr
	b _0225B6C4
_0225B69C:
	cmp r0, #4
	bne _0225B6C4
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	add r3, sp, #0x14
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl Pokepic_AddAttr
_0225B6C4:
	mov r0, #0x14
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	cmp r0, r5
	bgt _0225B7B4
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r5, #0
	bl Pokepic_SetAttr
	mov r0, #0x69
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldrh r0, [r4, #0x16]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r4, #0x13]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #8]
	bl ov12_02261F38
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225B712
	cmp r0, #2
	bne _0225B71E
_0225B712:
	ldr r0, [r4, #0xc]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl ManagedSprite_SetPositionXY
_0225B71E:
	ldrb r0, [r4, #0x12]
	add sp, #0x70
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B728:
	ldr r0, [r4]
	bl ov12_0223B750
	ldrb r1, [r4, #0x11]
	bl sub_02017068
	cmp r0, #1
	bne _0225B7B4
	ldr r0, [r4, #8]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	bne _0225B7B4
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0225B774
	ldrb r1, [r4, #0x11]
	mov r0, #0xb
	add r2, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x18
	bl ov12_02261B80
	mov r0, #4
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B774:
	mov r0, #0xff
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B77C:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225B7B4
	add r0, r5, #0
	bl ov07_0221C3C0
	mov r0, #0xff
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B798:
	mov r0, #0
	bl sub_02005B58
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225B7B4:
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0225B494

	thumb_func_start ov12_0225B7B8
ov12_0225B7B8: ; 0x0225B7B8
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bls _0225B7D0
	b _0225B940
_0225B7D0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B7DC: ; jump table
	.short _0225B7E6 - _0225B7DC - 2 ; case 0
	.short _0225B7F0 - _0225B7DC - 2 ; case 1
	.short _0225B800 - _0225B7DC - 2 ; case 2
	.short _0225B8D0 - _0225B7DC - 2 ; case 3
	.short _0225B924 - _0225B7DC - 2 ; case 4
_0225B7E6:
	mov r0, #0x1c
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225B7F0:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	beq _0225B7FA
	b _0225B95C
_0225B7FA:
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225B800:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x14
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225B818
	cmp r0, #3
	bne _0225B83A
_0225B818:
	add r1, sp, #0x14
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #0xc]
	bge _0225B830
	ldr r0, [r0]
	mov r1, #8
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225B83A
_0225B830:
	ldr r0, [r0]
	mov r1, #0xc0
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
_0225B83A:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x14
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x14
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #4
	bl Pokepic_AddAttr
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	cmp r0, r1
	blt _0225B95C
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl Pokepic_SetAttr
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_SetAttr
	mov r0, #0x69
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldrh r0, [r4, #0x16]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldrb r0, [r4, #0x13]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #8]
	bl ov12_02261F38
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl Pokepic_StartPaletteFade
	ldrb r0, [r4, #0x12]
	add sp, #0x70
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B8D0:
	ldr r0, [r4]
	bl ov12_0223B750
	ldrb r1, [r4, #0x11]
	bl sub_02017068
	cmp r0, #1
	bne _0225B95C
	ldr r0, [r4, #8]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	bne _0225B95C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0225B91C
	ldrb r1, [r4, #0x11]
	mov r0, #0xb
	add r2, sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x18
	bl ov12_02261B80
	mov r0, #4
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B91C:
	mov r0, #0xff
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B924:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225B95C
	add r0, r5, #0
	bl ov07_0221C3C0
	mov r0, #0xff
	add sp, #0x70
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225B940:
	mov r0, #0
	bl sub_02005B58
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225B95C:
	add sp, #0x70
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0225B7B8

	thumb_func_start ov12_0225B960
ov12_0225B960: ; 0x0225B960
	push {r3, r4, r5, lr}
	sub sp, #0xb0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bls _0225B974
	b _0225BDFC
_0225B974:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B980: ; jump table
	.short _0225B990 - _0225B980 - 2 ; case 0
	.short _0225BA16 - _0225B980 - 2 ; case 1
	.short _0225BA5A - _0225B980 - 2 ; case 2
	.short _0225BBC0 - _0225B980 - 2 ; case 3
	.short _0225BBDC - _0225B980 - 2 ; case 4
	.short _0225BD3C - _0225B980 - 2 ; case 5
	.short _0225BD50 - _0225B980 - 2 ; case 6
	.short _0225BDD6 - _0225B980 - 2 ; case 7
_0225B990:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	ldr r0, [r4]
	beq _0225B9C8
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x20
	tst r0, r1
	bne _0225BA06
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225BA06
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
	b _0225BA06
_0225B9C8:
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x20
	tst r0, r1
	bne _0225BA06
	ldr r0, [r4]
	bl ov12_0223B688
	cmp r0, #1
	bne _0225B9F2
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225B9F2
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
	b _0225BA06
_0225B9F2:
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225BA06
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
_0225BA06:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb0
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BA16:
	add r1, sp, #0x4c
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x4c]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl BattleSystem_GetPartyMon
	str r0, [sp, #0x54]
	mov r0, #5
	add r1, sp, #0x4c
	bl ov07_02232694
	str r0, [r4, #8]
	bl ov07_022329B0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb0
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BA5A:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233F20
	cmp r0, #0
	bne _0225BAA2
	ldr r0, [r4, #8]
	bl ov07_02232A04
	cmp r0, #1
	bne _0225BAA2
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233EA0
	cmp r0, #1
	bne _0225BAA2
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bne _0225BAAC
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0xc
	bhs _0225BAA4
_0225BAA2:
	b _0225BE20
_0225BAA4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
_0225BAAC:
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x24
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0225BE24 ; =ov07_022377F4 + 2
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0225BE28 ; =ov07_022377F4 + 4
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0225BE2C ; =ov07_022377DC
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl ov12_022612A4
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0225BE30 ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	bl ov07_02232A44
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0225BE34 ; =0x00000706
	bne _0225BB9A
	mov r1, #0x75
	bl sub_0200602C
	b _0225BBA2
_0225BB9A:
	mov r1, #0x74
	mvn r1, r1
	bl sub_0200602C
_0225BBA2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225BBB0
	bl ov07_0221FE08
	mov r0, #0
	str r0, [r4, #0x10]
_0225BBB0:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb0
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BBC0:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233E88
	cmp r0, #1
	beq _0225BBDC
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0225BBDC:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_GetAttr
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0225BC72
	ldr r0, [r4, #8]
	bl ov07_02232A54
	cmp r0, #0
	bne _0225BC72
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225BC0E
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225BC0E:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0225BE30 ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	mov r0, #5
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BC72:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_GetAttr
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	blt _0225BD16
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225BCB2
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225BCB2:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0225BE30 ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	mov r0, #5
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BD16:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl Pokepic_AddAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl Pokepic_AddAttr
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_0200914C
	add sp, #0xb0
	pop {r3, r4, r5, pc}
_0225BD3C:
	ldr r0, [r4, #8]
	bl ov07_02232A54
	cmp r0, #0
	bne _0225BE20
	mov r0, #6
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BD50:
	ldr r0, [r4]
	bl ov12_0223B750
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_02017068
	cmp r0, #1
	bne _0225BE20
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	bne _0225BE20
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233ECC
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	ldr r0, [r4, #8]
	bl ov07_02232AB8
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225BDCC
	mov r0, #5
	bl ov07_0221BEDC
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x58
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	add r3, sp, #0x58
	bl ov12_02261B80
	mov r0, #7
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BDCC:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BDD6:
	ldr r0, [r4, #0x24]
	bl ov07_0221C394
	ldr r0, [r4, #0x24]
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225BE20
	ldr r0, [r4, #0x24]
	bl ov07_0221C3C0
	ldr r0, [r4, #0x24]
	bl ov07_0221BFE0
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xb0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225BDFC:
	mov r0, #0
	bl sub_02005B58
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0225BE20:
	add sp, #0xb0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225BE24: .word ov07_022377F4 + 2
_0225BE28: .word ov07_022377F4 + 4
_0225BE2C: .word ov07_022377DC
_0225BE30: .word ov12_0226D15A
_0225BE34: .word 0x00000706
	thumb_func_end ov12_0225B960

	thumb_func_start ov12_0225BE38
ov12_0225BE38: ; 0x0225BE38
	push {r4, r5, lr}
	sub sp, #0xfc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bls _0225BE4C
	b _0225C156
_0225BE4C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BE58: ; jump table
	.short _0225BE66 - _0225BE58 - 2 ; case 0
	.short _0225BEEC - _0225BE58 - 2 ; case 1
	.short _0225BFE4 - _0225BE58 - 2 ; case 2
	.short _0225C024 - _0225BE58 - 2 ; case 3
	.short _0225C052 - _0225BE58 - 2 ; case 4
	.short _0225C0B0 - _0225BE58 - 2 ; case 5
	.short _0225C130 - _0225BE58 - 2 ; case 6
_0225BE66:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	ldr r0, [r4]
	beq _0225BE9E
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x20
	tst r0, r1
	bne _0225BEDC
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225BEDC
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
	b _0225BEDC
_0225BE9E:
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x20
	tst r0, r1
	bne _0225BEDC
	ldr r0, [r4]
	bl ov12_0223B688
	cmp r0, #1
	bne _0225BEC8
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225BEC8
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
	b _0225BEDC
_0225BEC8:
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225BEDC
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
_0225BEDC:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xfc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225BEEC:
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bne _0225BF18
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0xc
	bhs _0225BF10
	b _0225C17A
_0225BF10:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
_0225BF18:
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x24
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	add r0, #0x82
	ldrb r1, [r0]
	mov r0, #6
	add r2, r4, #0
	add r3, r1, #0
	mul r3, r0
	ldr r0, _0225C180 ; =ov07_022377F4 + 38
	add r1, r5, #0
	ldrsh r0, [r0, r3]
	ldr r5, _0225C184 ; =ov07_022377F4 + 36
	add r2, #0x14
	str r0, [sp]
	ldr r0, _0225C188 ; =ov07_022377F4 + 4
	ldrsh r0, [r0, r3]
	ldrsh r3, [r5, r3]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl ov12_022612A4
	ldr r1, [r4, #4]
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf4
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225BFD4
	bl ov07_0221FE08
	mov r0, #0
	str r0, [r4, #0x10]
_0225BFD4:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xfc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225BFE4:
	mov r0, #5
	bl ov07_0221BEDC
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x29
	add r2, sp, #0xa4
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	add r3, sp, #0xa4
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xfc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C024:
	ldr r0, [r4, #0x24]
	bl ov07_0221C394
	ldr r0, [r4, #0x24]
	bl ov07_0221C3B0
	cmp r0, #0
	beq _0225C036
	b _0225C17A
_0225C036:
	ldr r0, [r4, #0x24]
	bl ov07_0221C3C0
	ldr r0, [r4, #0x24]
	bl ov07_0221BFE0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xfc
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C052:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225C068
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225C068:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	mov r0, #5
	add r4, #0x83
	add sp, #0xfc
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C0B0:
	ldr r0, [r4]
	bl ov12_0223B750
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_02017068
	cmp r0, #1
	bne _0225C17A
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	bne _0225C17A
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233ECC
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225C126
	mov r0, #5
	bl ov07_0221BEDC
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x4c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	add r3, sp, #0x4c
	bl ov12_02261B80
	mov r0, #6
	add r4, #0x83
	add sp, #0xfc
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C126:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xfc
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C130:
	ldr r0, [r4, #0x24]
	bl ov07_0221C394
	ldr r0, [r4, #0x24]
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225C17A
	ldr r0, [r4, #0x24]
	bl ov07_0221C3C0
	ldr r0, [r4, #0x24]
	bl ov07_0221BFE0
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xfc
	strb r0, [r4]
	pop {r4, r5, pc}
_0225C156:
	mov r0, #0
	bl sub_02005B58
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0225C17A:
	add sp, #0xfc
	pop {r4, r5, pc}
	nop
_0225C180: .word ov07_022377F4 + 38
_0225C184: .word ov07_022377F4 + 36
_0225C188: .word ov07_022377F4 + 4
	thumb_func_end ov12_0225BE38

	thumb_func_start ov12_0225C18C
ov12_0225C18C: ; 0x0225C18C
	push {r4, r5, r6, lr}
	sub sp, #0x1d8
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x83
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xb
	bls _0225C1A8
	b _0225C6A6
_0225C1A8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C1B4: ; jump table
	.short _0225C1CC - _0225C1B4 - 2 ; case 0
	.short _0225C2E6 - _0225C1B4 - 2 ; case 1
	.short _0225C332 - _0225C1B4 - 2 ; case 2
	.short _0225C3C0 - _0225C1B4 - 2 ; case 3
	.short _0225C3D8 - _0225C1B4 - 2 ; case 4
	.short _0225C552 - _0225C1B4 - 2 ; case 5
	.short _0225C566 - _0225C1B4 - 2 ; case 6
	.short _0225C5DA - _0225C1B4 - 2 ; case 7
	.short _0225C5FE - _0225C1B4 - 2 ; case 8
	.short _0225C5DA - _0225C1B4 - 2 ; case 9
	.short _0225C64A - _0225C1B4 - 2 ; case 10
	.short _0225C5DA - _0225C1B4 - 2 ; case 11
_0225C1CC:
	add r0, r4, #0
	add r0, #0x82
	ldrb r1, [r0]
	ldr r0, _0225C4FC ; =ov12_0226D120
	ldrb r0, [r0, r1]
	str r0, [sp, #0x58]
	mov r0, #5
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x64]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	str r0, [sp, #0x68]
	ldr r0, [r4]
	bl BattleSystem_GetSpriteSystem
	str r0, [sp, #0x74]
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	str r0, [sp, #0x78]
	mov r2, #1
	mov r1, #0
	add r0, r4, #0
	str r2, [sp, #0x6c]
	str r1, [sp, #0x70]
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #1
	bne _0225C212
	str r2, [sp, #0x60]
	b _0225C214
_0225C212:
	str r1, [sp, #0x60]
_0225C214:
	add r0, sp, #0x58
	bl ov07_02233DB8
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x30
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0225C500 ; =ov07_022377F4 + 2
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0225C504 ; =ov07_022377F4 + 4
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0225C508 ; =ov07_022377DC
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl ov12_022612A4
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl Pokepic_SetAttr
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4]
	mov r1, #5
	bl ov07_0221FDFC
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C2E6:
	add r1, sp, #0x24
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x24]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl BattleSystem_GetPartyMon
	str r0, [sp, #0x2c]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r1, sp, #0x24
	str r0, [sp, #0x28]
	mov r0, #5
	bl ov07_02232694
	str r0, [r4, #8]
	bl ov07_022329B0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C332:
	ldr r0, [r4, #0xc]
	bl ov07_02233F20
	cmp r0, #0
	beq _0225C346
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	beq _0225C35A
_0225C346:
	ldr r0, [r4, #8]
	bl ov07_02232A04
	cmp r0, #1
	bne _0225C35A
	ldr r0, [r4, #0xc]
	bl ov07_02233EA0
	cmp r0, #1
	beq _0225C35C
_0225C35A:
	b _0225C6C4
_0225C35C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225C366
	bl ov07_0221FE08
_0225C366:
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0225C50C ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	bl ov07_02232A44
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0225C510 ; =0x00000706
	bne _0225C3A8
	mov r1, #0x75
	bl sub_0200602C
	b _0225C3B0
_0225C3A8:
	mov r1, #0x74
	mvn r1, r1
	bl sub_0200602C
_0225C3B0:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C3C0:
	ldr r0, [r4, #0xc]
	bl ov07_02233E88
	cmp r0, #1
	beq _0225C3D8
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0225C3D8:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_GetAttr
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0225C46E
	ldr r0, [r4, #8]
	bl ov07_02232A54
	cmp r0, #0
	bne _0225C46E
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225C40A
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225C40A:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0225C50C ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	mov r0, #5
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C46E:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl Pokepic_GetAttr
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	blt _0225C52C
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225C4AE
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225C4AE:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0225C50C ; =ov12_0226D15A
	b _0225C514
	.balign 4, 0
_0225C4FC: .word ov12_0226D120
_0225C500: .word ov07_022377F4 + 2
_0225C504: .word ov07_022377F4 + 4
_0225C508: .word ov07_022377DC
_0225C50C: .word ov12_0226D15A
_0225C510: .word 0x00000706
_0225C514:
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_StartPaletteFade
	mov r0, #5
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C52C:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl Pokepic_AddAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl Pokepic_AddAttr
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_0200914C
	add sp, #0x1d8
	pop {r4, r5, r6, pc}
_0225C552:
	ldr r0, [r4, #8]
	bl ov07_02232A54
	cmp r0, #0
	bne _0225C586
	mov r0, #6
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C566:
	ldr r0, [r4]
	bl ov12_0223B750
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_02017068
	cmp r0, #1
	bne _0225C586
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	beq _0225C588
_0225C586:
	b _0225C6C4
_0225C588:
	ldr r0, [r4, #0xc]
	bl ov07_02233ECC
	ldr r0, [r4, #8]
	bl ov07_02232AB8
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225C5D0
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x180
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x180
	bl ov12_02261B80
	mov r0, #7
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C5D0:
	mov r0, #8
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C5DA:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225C6C4
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C5FE:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0225C640
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x128
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x128
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C640:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x1d8
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C64A:
	add r3, r4, #0
	add r3, #0x81
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x28
	add r2, sp, #0xd8
	bl ov12_02261CA8
	add r0, sp, #0xd8
	mov r1, #5
	bl ov07_02234A20
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x80
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x80
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1d8
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225C6A6:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225C6C4:
	add sp, #0x1d8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0225C18C

	thumb_func_start ov12_0225C6C8
ov12_0225C6C8: ; 0x0225C6C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1fc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x83
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #9
	bls _0225C6E4
	b _0225C98C
_0225C6E4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C6F0: ; jump table
	.short _0225C704 - _0225C6F0 - 2 ; case 0
	.short _0225C7C2 - _0225C6F0 - 2 ; case 1
	.short _0225C8C0 - _0225C6F0 - 2 ; case 2
	.short _0225C7FA - _0225C6F0 - 2 ; case 3
	.short _0225C858 - _0225C6F0 - 2 ; case 4
	.short _0225C8C0 - _0225C6F0 - 2 ; case 5
	.short _0225C8E4 - _0225C6F0 - 2 ; case 6
	.short _0225C8C0 - _0225C6F0 - 2 ; case 7
	.short _0225C930 - _0225C6F0 - 2 ; case 8
	.short _0225C8C0 - _0225C6F0 - 2 ; case 9
_0225C704:
	ldr r0, [r4]
	bl BattleSystem_GetPokepicManager
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x24
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	add r0, #0x82
	ldrb r1, [r0]
	mov r0, #6
	add r2, r4, #0
	add r3, r1, #0
	mul r3, r0
	ldr r0, _0225C9B0 ; =ov07_022377F4 + 38
	add r1, r5, #0
	ldrsh r0, [r0, r3]
	ldr r5, _0225C9B4 ; =ov07_022377F4 + 36
	add r2, #0x14
	str r0, [sp]
	ldr r0, _0225C9B8 ; =ov07_022377F4 + 4
	ldrsh r0, [r0, r3]
	ldrsh r3, [r5, r3]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl ov12_022612A4
	ldr r1, [r4, #4]
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf4
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1fc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C7C2:
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x29
	add r2, sp, #0x1a4
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x1a4
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1fc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C7FA:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225C810
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl Pokepic_SetAttr
_0225C810:
	mov r0, #0x69
	ldr r3, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	add r2, r4, #0
	add r1, #0x81
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	add r2, #0x82
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	ldr r3, [r3, #0x20]
	bl ov12_02261F38
	mov r0, #4
	add r4, #0x83
	add sp, #0x1fc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C858:
	ldr r0, [r4]
	bl ov12_0223B750
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_02017068
	cmp r0, #1
	bne _0225C878
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl Pokepic_IsAnimFinished
	cmp r0, #0
	beq _0225C87A
_0225C878:
	b _0225C9AA
_0225C87A:
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225C8B6
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x14c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x14c
	bl ov12_02261B80
	mov r0, #5
	add r4, #0x83
	add sp, #0x1fc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C8B6:
	mov r0, #6
	add r4, #0x83
	add sp, #0x1fc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C8C0:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225C9AA
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1fc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C8E4:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0225C926
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xf4
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xf4
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1fc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C926:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x1fc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C930:
	add r3, r4, #0
	add r3, #0x81
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x28
	add r2, sp, #0xa4
	bl ov12_02261CA8
	add r0, sp, #0xa4
	mov r1, #5
	bl ov07_02234A20
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x4c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x4c
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1fc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225C98C:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225C9AA:
	add sp, #0x1fc
	pop {r3, r4, r5, r6, pc}
	nop
_0225C9B0: .word ov07_022377F4 + 38
_0225C9B4: .word ov07_022377F4 + 36
_0225C9B8: .word ov07_022377F4 + 4
	thumb_func_end ov12_0225C6C8

	thumb_func_start ov12_0225C9BC
ov12_0225C9BC: ; 0x0225C9BC
	push {r4, r5, r6, lr}
	sub sp, #0x178
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x6b
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #8
	bhi _0225CAA6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C9E2: ; jump table
	.short _0225C9F4 - _0225C9E2 - 2 ; case 0
	.short _0225CA98 - _0225C9E2 - 2 ; case 1
	.short _0225CA3C - _0225C9E2 - 2 ; case 2
	.short _0225CA98 - _0225C9E2 - 2 ; case 3
	.short _0225CABE - _0225C9E2 - 2 ; case 4
	.short _0225CBB0 - _0225C9E2 - 2 ; case 5
	.short _0225CBCA - _0225C9E2 - 2 ; case 6
	.short _0225CC0A - _0225C9E2 - 2 ; case 7
	.short _0225CC24 - _0225C9E2 - 2 ; case 8
_0225C9F4:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0225CA32
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x120
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x120
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CA32:
	mov r0, #4
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CA3C:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0xd0
	bl ov12_02261CA8
	add r0, sp, #0xd0
	mov r1, #5
	bl ov07_0223494C
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x78
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x78
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CA98:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	beq _0225CAA8
_0225CAA6:
	b _0225CC42
_0225CAA8:
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CABE:
	add r0, r4, #0
	add r0, #0x6a
	ldrb r5, [r0]
	mov r0, #1
	tst r0, r5
	beq _0225CB06
	ldr r0, _0225CC48 ; =ov12_0226D120
	ldrb r0, [r0, r5]
	str r0, [sp, #0x50]
	mov r0, #5
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	str r0, [sp, #0x60]
	ldr r0, [r4]
	bl BattleSystem_GetSpriteSystem
	str r0, [sp, #0x6c]
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x64]
	mov r0, #0
	str r0, [sp, #0x68]
	add r0, sp, #0x50
	bl ov07_02233DB8
	b _0225CB52
_0225CB06:
	ldr r3, _0225CC4C ; =ov12_0226D128
	add r2, sp, #0x10
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	str r0, [sp, #0x28]
	mov r0, #5
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	str r0, [sp, #0x38]
	ldr r0, [r4]
	bl BattleSystem_GetSpriteSystem
	str r0, [sp, #0x44]
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	str r0, [sp, #0x48]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	bl ov07_02233DB8
_0225CB52:
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x6b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	mov r2, #0x10
	lsl r1, r0, #1
	ldr r0, _0225CC50 ; =ov12_0226D15A
	ldrh r0, [r0, r1]
	mov r1, #0
	add r3, r1, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	bl Pokepic_StartPaletteFade
	add r4, #0x6a
	ldrb r0, [r4]
	cmp r0, #5
	bhi _0225CC42
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CB8A: ; jump table
	.short _0225CB96 - _0225CB8A - 2 ; case 0
	.short _0225CBA4 - _0225CB8A - 2 ; case 1
	.short _0225CB96 - _0225CB8A - 2 ; case 2
	.short _0225CBA4 - _0225CB8A - 2 ; case 3
	.short _0225CB96 - _0225CB8A - 2 ; case 4
	.short _0225CBA4 - _0225CB8A - 2 ; case 5
_0225CB96:
	mov r1, #0x74
	ldr r0, _0225CC54 ; =0x00000706
	mvn r1, r1
	bl sub_0200602C
	add sp, #0x178
	pop {r4, r5, r6, pc}
_0225CBA4:
	ldr r0, _0225CC54 ; =0x00000706
	mov r1, #0x75
	bl sub_0200602C
	add sp, #0x178
	pop {r4, r5, r6, pc}
_0225CBB0:
	ldr r0, [r4, #8]
	bl Pokepic_ResumePaletteFade
	cmp r0, #0
	bne _0225CC42
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CBCA:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2c
	bl Pokepic_AddAttr
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2d
	bl Pokepic_AddAttr
	add r1, r4, #0
	add r1, #0x6c
	ldrb r1, [r1]
	ldr r0, [r4, #8]
	bl sub_0200914C
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl Pokepic_GetAttr
	cmp r0, #0
	bgt _0225CC42
	ldr r0, [r4, #8]
	bl Pokepic_Delete
	mov r0, #7
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CC0A:
	ldr r0, [r4, #0xc]
	bl ov07_02233E88
	cmp r0, #0
	bne _0225CC42
	ldr r0, [r4, #0xc]
	bl ov07_02233ECC
	mov r0, #8
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CC24:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225CC42:
	add sp, #0x178
	pop {r4, r5, r6, pc}
	nop
_0225CC48: .word ov12_0226D120
_0225CC4C: .word ov12_0226D128
_0225CC50: .word ov12_0226D15A
_0225CC54: .word 0x00000706
	thumb_func_end ov12_0225C9BC

	thumb_func_start ov12_0225CC58
ov12_0225CC58: ; 0x0225CC58
	push {r4, r5, r6, lr}
	sub sp, #0x168
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8DC
	add r1, r4, #0
	add r1, #0x6b
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #7
	bls _0225CC74
	b _0225CDB4
_0225CC74:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225CC80: ; jump table
	.short _0225CC90 - _0225CC80 - 2 ; case 0
	.short _0225CD34 - _0225CC80 - 2 ; case 1
	.short _0225CCD8 - _0225CC80 - 2 ; case 2
	.short _0225CD34 - _0225CC80 - 2 ; case 3
	.short _0225CD58 - _0225CC80 - 2 ; case 4
	.short _0225CD34 - _0225CC80 - 2 ; case 5
	.short _0225CD90 - _0225CC80 - 2 ; case 6
	.short _0225CD96 - _0225CC80 - 2 ; case 7
_0225CC90:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0225CCCE
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x110
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x110
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x168
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CCCE:
	mov r0, #4
	add r4, #0x6b
	add sp, #0x168
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CCD8:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0xc0
	bl ov12_02261CA8
	add r0, sp, #0xc0
	mov r1, #5
	bl ov07_0223494C
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x68
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x68
	bl ov12_02261B80
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x168
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CD34:
	bl ov07_0221C394
	add r0, r5, #0
	bl ov07_0221C3B0
	cmp r0, #0
	bne _0225CDB4
	add r0, r5, #0
	bl ov07_0221C3C0
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x168
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CD58:
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x2a
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl ov12_022643C8
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x10
	bl ov12_02261B80
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x168
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225CD90:
	ldr r0, [r4, #8]
	bl Pokepic_Delete
_0225CD96:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225CDB4:
	add sp, #0x168
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0225CC58

	thumb_func_start ov12_0225CDB8
ov12_0225CDB8: ; 0x0225CDB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0225CDCA
	cmp r0, #1
	beq _0225CE10
	pop {r3, r4, r5, pc}
_0225CDCA:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2c
	bl Pokepic_AddAttr
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2d
	bl Pokepic_AddAttr
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0225CDF6
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r4, #4]
	sub r2, r1, #2
	bl Pokepic_AddAttr
_0225CDF6:
	ldr r0, [r4, #4]
	mov r1, #0xc
	bl Pokepic_GetAttr
	cmp r0, #0
	bgt _0225CE26
	ldr r0, [r4, #4]
	bl Pokepic_Delete
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_0225CE10:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0225CE26:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225CDB8

	thumb_func_start ov12_0225CE28
ov12_0225CE28: ; 0x0225CE28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0x21
	bge _0225CE64
	ldrb r0, [r4, #0x12]
	cmp r0, #2
	blo _0225CE64
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225CE4E
	cmp r0, #2
	bne _0225CE64
_0225CE4E:
	ldr r0, [r4]
	bl BattleSystem_GetBgConfig
	mov r1, #3
	mov r2, #1
	mov r3, #4
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_0225CE64:
	ldrb r0, [r4, #0x12]
	cmp r0, #4
	bls _0225CE6C
	b _0225D132
_0225CE6C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CE78: ; jump table
	.short _0225CE82 - _0225CE78 - 2 ; case 0
	.short _0225CEA4 - _0225CE78 - 2 ; case 1
	.short _0225CEB0 - _0225CE78 - 2 ; case 2
	.short _0225D102 - _0225CE78 - 2 ; case 3
	.short _0225D11C - _0225CE78 - 2 ; case 4
_0225CE82:
	ldr r0, [r4, #0xc]
	bl ManagedSprite_GetNumFrames
	cmp r0, #2
	bls _0225CE9C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ManagedSprite_SetAnim
_0225CE9C:
	mov r0, #0x1c
	str r0, [r4, #0x1c]
	mov r0, #1
	strb r0, [r4, #0x12]
_0225CEA4:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225CF9A
	mov r0, #2
	strb r0, [r4, #0x12]
_0225CEB0:
	ldr r0, [r4, #8]
	add r1, sp, #4
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	ldr r0, [r4, #0xc]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	ldr r0, [r4, #0x18]
	beq _0225CED4
	b _0225CFEE
_0225CED4:
	cmp r0, #1
	beq _0225CEDC
	cmp r0, #3
	bne _0225CEFE
_0225CEDC:
	add r1, sp, #0
	mov r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #8]
	bge _0225CEF4
	ldr r0, [r0]
	mov r1, #8
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225CEFE
_0225CEF4:
	ldr r0, [r0]
	mov r1, #0xc0
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
_0225CEFE:
	ldr r0, [r4, #8]
	add r1, sp, #4
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _0225CF22
	cmp r0, #3
	bne _0225CF34
	cmp r5, #3
	beq _0225CF22
	cmp r5, #0x83
	beq _0225CF22
	cmp r5, #7
	bne _0225CF34
_0225CF22:
	add r3, sp, #0
	mov r1, #6
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0xc]
	bl ManagedSprite_SetPositionXY
	b _0225CF80
_0225CF34:
	cmp r0, #3
	bne _0225CF5E
	add r2, sp, #0
	mov r0, #2
	mov r1, #6
	ldrsh r3, [r2, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x18
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #0xc]
	mov r2, #0
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_OffsetPositionXY
	b _0225CF80
_0225CF5E:
	cmp r0, #5
	bne _0225CF80
	add r2, sp, #0
	mov r1, #6
	mov r0, #2
	ldrsh r3, [r2, r1]
	ldrsh r0, [r2, r0]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x10
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #0xc]
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
_0225CF80:
	add r1, sp, #0
	ldr r0, [r4, #0xc]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x14
	ldrsh r1, [r4, r0]
	add r3, sp, #0
	mov r0, #2
	ldrsh r0, [r3, r0]
	cmp r0, r1
	bge _0225CF9C
_0225CF9A:
	b _0225D132
_0225CF9C:
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0xc]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _0225CFB0
	cmp r0, #3
	bne _0225CFBC
_0225CFB0:
	ldr r0, [r4, #8]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl ManagedSprite_SetPositionXY
_0225CFBC:
	ldr r0, [r4, #0xc]
	bl ManagedSprite_GetNumFrames
	cmp r0, #1
	bls _0225CFE6
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldrh r1, [r4, #0x16]
	mov r0, #1
	add sp, #8
	bic r1, r0
	strh r1, [r4, #0x16]
	mov r0, #3
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225CFE6:
	mov r0, #4
	add sp, #8
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225CFEE:
	cmp r0, #0
	beq _0225CFF6
	cmp r0, #2
	bne _0225D018
_0225CFF6:
	add r0, sp, #0
	mov r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #8]
	ble _0225D00E
	ldr r0, [r0]
	sub r1, #0xe
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225D018
_0225D00E:
	ldr r0, [r0]
	mov r1, #0x40
	mov r2, #0x88
	bl ManagedSprite_SetPositionXY
_0225D018:
	ldr r0, [r4, #8]
	add r1, sp, #4
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225D040
	cmp r0, #2
	bne _0225D052
	cmp r5, #3
	beq _0225D040
	cmp r5, #0x83
	beq _0225D040
	cmp r5, #0x13
	beq _0225D040
	cmp r5, #7
	bne _0225D052
_0225D040:
	add r3, sp, #0
	mov r1, #6
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0xc]
	bl ManagedSprite_SetPositionXY
	b _0225D09E
_0225D052:
	cmp r0, #2
	bne _0225D076
	add r2, sp, #0
	mov r1, #6
	mov r0, #2
	ldrsh r3, [r2, r1]
	ldrsh r0, [r2, r0]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x18
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #0xc]
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	b _0225D09E
_0225D076:
	cmp r0, #4
	bne _0225D09E
	add r2, sp, #0
	mov r0, #2
	mov r1, #6
	ldrsh r3, [r2, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x10
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #0xc]
	mov r2, #0
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl ManagedSprite_OffsetPositionXY
_0225D09E:
	add r1, sp, #0
	ldr r0, [r4, #0xc]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225D0BC
	add r3, sp, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	mov r1, #0
	bl Pokepic_SetAttr
_0225D0BC:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bgt _0225D132
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225D0D4
	bl Pokepic_Delete
_0225D0D4:
	mov r1, #0x14
	add r3, sp, #0
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0xc]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225D0EE
	cmp r0, #2
	bne _0225D0FA
_0225D0EE:
	ldr r0, [r4, #8]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl ManagedSprite_SetPositionXY
_0225D0FA:
	mov r0, #4
	add sp, #8
	strb r0, [r4, #0x12]
	pop {r4, r5, r6, pc}
_0225D102:
	ldr r0, [r4, #0xc]
	bl ManagedSprite_IsAnimated
	cmp r0, #1
	bne _0225D118
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	bl ov12_02261DC8
	cmp r0, #0
	beq _0225D132
_0225D118:
	mov r0, #4
	strb r0, [r4, #0x12]
_0225D11C:
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225D132:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225CE28

	thumb_func_start ov12_0225D138
ov12_0225D138: ; 0x0225D138
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	add r6, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0225D150
	b _0225D62E
_0225D150:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D15C: ; jump table
	.short _0225D16A - _0225D15C - 2 ; case 0
	.short _0225D244 - _0225D15C - 2 ; case 1
	.short _0225D368 - _0225D15C - 2 ; case 2
	.short _0225D522 - _0225D15C - 2 ; case 3
	.short _0225D5D2 - _0225D15C - 2 ; case 4
	.short _0225D5F0 - _0225D15C - 2 ; case 5
	.short _0225D618 - _0225D15C - 2 ; case 6
_0225D16A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0225D178
	mov r0, #1
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D178:
	cmp r0, #4
	bhi _0225D192
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D188: ; jump table
	.short _0225D192 - _0225D188 - 2 ; case 0
	.short _0225D192 - _0225D188 - 2 ; case 1
	.short _0225D1A0 - _0225D188 - 2 ; case 2
	.short _0225D1AE - _0225D188 - 2 ; case 3
	.short _0225D1BC - _0225D188 - 2 ; case 4
_0225D192:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #5
	str r0, [sp, #0x18]
	b _0225D1CA
_0225D1A0:
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _0225D4F0 ; =0x00000401
	str r0, [sp, #0x18]
	b _0225D1CA
_0225D1AE:
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _0225D4F4 ; =0x00000402
	str r0, [sp, #0x18]
	b _0225D1CA
_0225D1BC:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #1
	lsl r0, r0, #0xa
	str r0, [sp, #0x18]
_0225D1CA:
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl BattleSystem_GetSpriteSystem
	str r0, [sp, #0x24]
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	str r0, [sp, #0x2c]
	add r0, sp, #8
	bl ov07_02233DB8
	ldr r1, [r4, #4]
	add r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x64
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344C4
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344D0
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344C0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnimateFlag
	mov r0, #3
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D244:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225D344
	ldr r0, [r0, #0x18]
	mov r1, #5
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xa0
	blt _0225D2D6
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233F20
	cmp r0, #0
	beq _0225D2D6
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_0223449C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233EFC
	mov r0, #2
	tst r0, r6
	beq _0225D2E4
	mov r0, #8
	tst r0, r6
	bne _0225D2E4
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetOpponentData
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl ov07_0223449C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl ov07_02233EFC
	add r4, #0x88
	ldr r0, [r4]
	mov r1, #0xc
	bl ov07_022344DC
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0225D2D6:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	cmp r1, r0
	bge _0225D2E6
_0225D2E4:
	b _0225D62E
_0225D2E6:
	ldr r0, [r4]
	bl BattleSystem_GetSpriteManager
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D4FC ; =0x00004E2F
	add r1, r2, r1
	bl SpriteManager_UnloadCharObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D500 ; =0x00004E2A
	add r1, r2, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D504 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadCellObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D504 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadAnimObjById
	mov r0, #6
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D344:
	ldr r0, [r0, #0x18]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnimateFlag
	mov r0, #2
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D368:
	ldr r0, [r4, #4]
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0225D48E
	ldr r0, [r1, #0x18]
	bl ManagedSprite_GetAnimationFrame
	ldr r1, [r4, #0xc]
	str r0, [sp]
	lsl r5, r0, #2
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0225D508 ; =ov12_0226D1E8
	add r0, r0, r2
	ldrsh r1, [r5, r0]
	ldr r0, _0225D50C ; =0x00007FFF
	cmp r1, r0
	beq _0225D48E
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_0223449C
	ldr r1, [r4, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r2, _0225D508 ; =ov12_0226D1E8
	add r7, sp, #4
	mov r1, #2
	add r2, r2, r3
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #4]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	ldr r2, _0225D510 ; =ov12_0226D1EA
	add r0, #0x88
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	lsl r1, r1, #0x10
	ldr r0, [r0]
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_022344A8
	ldr r0, [sp]
	cmp r0, #3
	bne _0225D48E
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233F20
	cmp r0, #0
	beq _0225D48E
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233EFC
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344C0
	mov r0, #2
	tst r0, r6
	beq _0225D48E
	mov r0, #8
	tst r0, r6
	bne _0225D48E
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetOpponentData
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	add r3, r1, #0
	mov r0, #0x18
	mul r3, r0
	ldr r2, _0225D508 ; =ov12_0226D1E8
	add r0, r6, #0
	add r2, r2, r3
	add r0, #0x88
	add r7, sp, #4
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r0]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	ldr r2, _0225D510 ; =ov12_0226D1EA
	lsl r1, r1, #0x10
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	asr r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov07_022344A8
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl ov07_0223449C
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl ov07_02233EFC
	add r6, #0x88
	ldr r0, [r6]
	mov r1, #1
	bl ov07_022344C0
_0225D48E:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	ble _0225D49C
	b _0225D62E
_0225D49C:
	ldr r0, [r4]
	bl BattleSystem_GetSpriteManager
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D4FC ; =0x00004E2F
	add r1, r2, r1
	bl SpriteManager_UnloadCharObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D500 ; =0x00004E2A
	add r1, r2, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D504 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadCellObjById
	ldr r2, [r4, #4]
	ldr r1, _0225D4F8 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D504 ; =0x00004E27
	b _0225D514
	nop
_0225D4F0: .word 0x00000401
_0225D4F4: .word 0x00000402
_0225D4F8: .word 0x00000195
_0225D4FC: .word 0x00004E2F
_0225D500: .word 0x00004E2A
_0225D504: .word 0x00004E27
_0225D508: .word ov12_0226D1E8
_0225D50C: .word 0x00007FFF
_0225D510: .word ov12_0226D1EA
_0225D514:
	add r1, r2, r1
	bl SpriteManager_UnloadAnimObjById
	mov r0, #6
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D522:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl ManagedSprite_GetAnimationFrame
	add r7, r0, #0
	cmp r7, #4
	bne _0225D54A
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D54A:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _0225D62E
	ldr r2, [r4, #0xc]
	mov r1, #0x18
	add r5, r2, #0
	mul r5, r1
	ldr r1, _0225D634 ; =ov12_0226D1E8
	lsl r6, r7, #2
	add r1, r1, r5
	ldrsh r1, [r6, r1]
	ldr r2, _0225D638 ; =0x00007FFF
	cmp r1, r2
	beq _0225D62E
	add r3, sp, #4
	mov r2, #2
	ldrsh r2, [r3, r2]
	add r1, r2, r1
	mov r2, #0
	ldrsh r3, [r3, r2]
	ldr r2, _0225D63C ; =ov12_0226D1EA
	lsl r1, r1, #0x10
	add r2, r2, r5
	ldrsh r2, [r6, r2]
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov07_022344A8
	cmp r7, #3
	bne _0225D62E
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x18]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233F20
	cmp r5, r0
	beq _0225D62E
	ldr r0, [r4, #4]
	add r1, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233EFC
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344D0
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_022344C0
	ldr r0, [r4, #0x18]
	cmp r0, #3
	beq _0225D62E
	ldr r0, _0225D640 ; =0x0000070A
	bl PlaySE
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0225D5D2:
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	bne _0225D62E
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bne _0225D5E8
	mov r0, #6
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D5E8:
	mov r0, #5
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D5F0:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233E88
	cmp r0, #1
	beq _0225D62E
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233ECC
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	mov r0, #6
	add sp, #0x30
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D618:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0225D62E:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D634: .word ov12_0226D1E8
_0225D638: .word 0x00007FFF
_0225D63C: .word ov12_0226D1EA
_0225D640: .word 0x0000070A
	thumb_func_end ov12_0225D138

	thumb_func_start ov12_0225D644
ov12_0225D644: ; 0x0225D644
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetBattleType
	add r4, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0225D664
	cmp r0, #1
	beq _0225D71C
	cmp r0, #2
	bne _0225D662
	b _0225D85A
_0225D662:
	pop {r3, r4, r5, r6, r7, pc}
_0225D664:
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	ldr r0, [r5, #4]
	bne _0225D6F0
	ldr r0, [r0, #0x18]
	mov r1, #5
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	cmp r1, r0
	bge _0225D694
	b _0225D870
_0225D694:
	ldr r0, [r5]
	bl BattleSystem_GetSpriteManager
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D878 ; =0x00004E2F
	add r1, r2, r1
	bl SpriteManager_UnloadCharObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D87C ; =0x00004E2A
	add r1, r2, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D880 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadCellObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D880 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadAnimObjById
	mov r0, #2
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D6F0:
	ldr r0, [r0, #0x18]
	mov r1, #1
	bl ManagedSprite_SetPriority
	ldr r0, [r5, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl ManagedSprite_SetAnimateFlag
	mov r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D71C:
	ldr r0, [r5, #4]
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, [r5, #4]
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	beq _0225D7F2
	mov r1, #2
	tst r1, r4
	beq _0225D7F2
	mov r1, #8
	tst r1, r4
	bne _0225D7F2
	ldr r0, [r0, #0x18]
	bl ManagedSprite_GetAnimationFrame
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	ldr r0, _0225D884 ; =ov12_0226D1E8
	lsl r6, r7, #2
	add r0, r0, r2
	ldrsh r1, [r6, r0]
	ldr r0, _0225D888 ; =0x00007FFF
	cmp r1, r0
	beq _0225D7F2
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldr r0, [r5]
	bl BattleSystem_GetOpponentData
	add r4, r0, #0
	cmp r7, #3
	bne _0225D7F2
	add r0, #0x88
	ldr r0, [r0]
	bl ov07_02233F20
	cmp r0, #0
	beq _0225D7F2
	ldr r1, [r5, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	ldr r2, _0225D884 ; =ov12_0226D1E8
	add r7, sp, #0
	mov r1, #2
	add r2, r2, r3
	ldrsh r1, [r7, r1]
	ldrsh r2, [r6, r2]
	add r0, r4, #0
	add r0, #0x88
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	ldr r2, _0225D88C ; =ov12_0226D1EA
	lsl r1, r1, #0x10
	add r2, r2, r3
	ldrsh r2, [r6, r2]
	ldr r0, [r0]
	asr r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov07_022344A8
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl ov07_0223449C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl ov07_02233EFC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl ov07_022344C0
	add r4, #0x88
	ldr r0, [r4]
	mov r1, #1
	bl ov07_022344D0
_0225D7F2:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	bgt _0225D870
	ldr r0, [r5]
	bl BattleSystem_GetSpriteManager
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D878 ; =0x00004E2F
	add r1, r2, r1
	bl SpriteManager_UnloadCharObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D87C ; =0x00004E2A
	add r1, r2, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D880 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadCellObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D874 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D880 ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadAnimObjById
	mov r0, #2
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225D85A:
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225D870:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D874: .word 0x00000195
_0225D878: .word 0x00004E2F
_0225D87C: .word 0x00004E2A
_0225D880: .word 0x00004E27
_0225D884: .word ov12_0226D1E8
_0225D888: .word 0x00007FFF
_0225D88C: .word ov12_0226D1EA
	thumb_func_end ov12_0225D644

	thumb_func_start ov12_0225D890
ov12_0225D890: ; 0x0225D890
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0225D8A6
	cmp r0, #1
	beq _0225D90E
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0225D8A6:
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	ldr r0, [r5, #4]
	bne _0225D8DE
	ldr r0, [r0, #0x18]
	mov r1, #5
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	cmp r1, r0
	blt _0225D97A
	ldrb r0, [r5, #0xa]
	add sp, #4
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, pc}
_0225D8DE:
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl ManagedSprite_OffsetPositionXY
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	bgt _0225D97A
	ldrb r0, [r5, #0xa]
	add sp, #4
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, pc}
_0225D90E:
	ldr r0, [r5]
	bl BattleSystem_GetSpriteManager
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x18]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r5, #4]
	ldr r1, _0225D980 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D984 ; =0x00004E2F
	add r1, r2, r1
	bl SpriteManager_UnloadCharObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D980 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D988 ; =0x00004E2A
	add r1, r2, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D980 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D98C ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadCellObjById
	ldr r2, [r5, #4]
	ldr r1, _0225D980 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225D98C ; =0x00004E27
	add r1, r2, r1
	bl SpriteManager_UnloadAnimObjById
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225D97A:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225D980: .word 0x00000195
_0225D984: .word 0x00004E2F
_0225D988: .word 0x00004E2A
_0225D98C: .word 0x00004E27
	thumb_func_end ov12_0225D890

	thumb_func_start ov12_0225D990
ov12_0225D990: ; 0x0225D990
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0225D9A2
	cmp r0, #1
	beq _0225D9FE
	pop {r3, r4, r5, pc}
_0225D9A2:
	add r1, sp, #0
	ldr r0, [r4, #4]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldrb r0, [r4, #0xb]
	add r2, sp, #0
	cmp r0, #0
	bne _0225D9D2
	mov r1, #2
	ldrsh r0, [r2, r1]
	add r0, r0, #5
	strh r0, [r2, #2]
	mov r0, #0xc
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	cmp r0, r3
	blt _0225D9EC
	strh r3, [r2, #2]
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	b _0225D9EC
_0225D9D2:
	mov r1, #2
	ldrsh r0, [r2, r1]
	sub r0, r0, #5
	strh r0, [r2, #2]
	mov r0, #0xc
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	cmp r0, r3
	bgt _0225D9EC
	strh r3, [r2, #2]
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0225D9EC:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
_0225D9FE:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_0225D990

	thumb_func_start ov12_0225DA18
ov12_0225DA18: ; 0x0225DA18
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _0225DA2A
	cmp r1, #1
	beq _0225DA5A
	b _0225DA6E
_0225DA2A:
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225DA42
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r4, #0x4d
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225DA42:
	add r0, r4, #0
	mov r1, #0
	bl ov12_02264FB0
	add r0, r4, #0
	mov r1, #1
	bl BattleHpBar_SetEnabled
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225DA5A:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0225DA8A
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225DA6E:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov12_0226430C
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl SysTask_Destroy
_0225DA8A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225DA18

	thumb_func_start ov12_0225DA8C
ov12_0225DA8C: ; 0x0225DA8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	bne _0225DAAC
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0225DAD0
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225DAAC:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov12_0226430C
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl SysTask_Destroy
	add r0, r4, #0
	mov r1, #0
	bl BattleHpBar_SetEnabled
_0225DAD0:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov12_0225DA8C

	thumb_func_start ov12_0225DAD4
ov12_0225DAD4: ; 0x0225DAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBgConfig
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	add r6, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetOpponentData
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	add r5, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldrb r0, [r4, #9]
	cmp r1, r0
	beq _0225DB16
	ldr r0, [r4]
	bl BattleSystem_GetHpBar
	str r0, [sp, #8]
	b _0225DB1A
_0225DB16:
	mov r0, #0
	str r0, [sp, #8]
_0225DB1A:
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bls _0225DB22
	b _0225E0FA
_0225DB22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DB2E: ; jump table
	.short _0225DB40 - _0225DB2E - 2 ; case 0
	.short _0225DB7C - _0225DB2E - 2 ; case 1
	.short _0225DC6A - _0225DB2E - 2 ; case 2
	.short _0225DC80 - _0225DB2E - 2 ; case 3
	.short _0225DC92 - _0225DB2E - 2 ; case 4
	.short _0225DED4 - _0225DB2E - 2 ; case 5
	.short _0225DF40 - _0225DB2E - 2 ; case 6
	.short _0225E06E - _0225DB2E - 2 ; case 7
	.short _0225E0D0 - _0225DB2E - 2 ; case 8
_0225DB40:
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x40
_0225DB46:
	ldrh r3, [r1, #0x24]
	add r1, r1, #2
	strh r3, [r2]
	add r3, r4, r0
	add r3, #0x2c
	ldrb r3, [r3]
	strh r3, [r2, #8]
	add r3, r4, r0
	add r3, #0x30
	ldrb r3, [r3]
	add r0, r0, #1
	strh r3, [r2, #0x10]
	add r2, r2, #2
	cmp r0, #4
	blt _0225DB46
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, sp, #0x40
	bl BattleInput_LoadFightMenuText
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0225DB7C:
	ldr r0, [r4]
	bl BattleSystem_GetMessageLoader
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r5, #0
	tst r1, r0
	beq _0225DC00
	ldr r0, [r4]
	bl ov12_0223BB04
	cmp r0, #0
	beq _0225DBA0
	cmp r0, #1
	beq _0225DBCC
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_0225DBA0:
	mov r0, #2
	add r1, sp, #0x10
	strb r0, [r1, #0xd]
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	ldrb r2, [r4, #9]
	mov r3, #0
	lsl r0, r0, #8
	orr r0, r2
	str r0, [sp, #0x20]
	ldr r0, _0225DED8 ; =0x00000399
	add r2, sp, #0x1c
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	add r1, r6, #0
	bl BattleSystem_PrintBattleMessage
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DBCC:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerGender
	ldr r1, _0225DEDC ; =0x000004CA
	add r1, r0, r1
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	ldr r0, [r4]
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r6, #0
	add r2, sp, #0x1c
	bl BattleSystem_PrintBattleMessage
	add r1, r4, #0
	add r1, #0x35
	strb r0, [r1]
	mov r0, #2
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC00:
	mov r1, #0x20
	add r2, r5, #0
	tst r2, r1
	beq _0225DC20
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerIndex
	str r0, [sp, #0x20]
	ldr r1, _0225DEE0 ; =0x0000039A
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0225DC56
_0225DC20:
	lsl r1, r1, #4
	tst r1, r5
	beq _0225DC3E
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerIndex
	str r0, [sp, #0x20]
	ldr r1, _0225DEE4 ; =0x000004C6
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0225DC56
_0225DC3E:
	add r2, r4, #0
	mov r1, #2
	add r3, sp, #0x10
	strb r1, [r3, #0xd]
	add r2, #0x23
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	sub r0, #0x67
	lsl r2, r2, #8
	orr r1, r2
	str r1, [sp, #0x20]
	strh r0, [r3, #0xe]
_0225DC56:
	ldr r0, [r4]
	add r1, r6, #0
	add r2, sp, #0x1c
	mov r3, #0
	bl BattleSystem_PrintBattleMessage
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC6A:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0225DC9C
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC80:
	ldr r0, [r4, #4]
	bl ov12_02264E84
	ldr r0, [sp, #0xc]
	ldr r1, [r4]
	bl ov12_02261FD4
	mov r0, #4
	strb r0, [r4, #0xa]
_0225DC92:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #0
	bne _0225DC9E
_0225DC9C:
	b _0225E0FA
_0225DC9E:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	ldrb r1, [r4, #9]
	add r0, sp, #0x10
	add r2, r4, #0
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, #0x3b
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	strb r1, [r0, #2]
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	strh r1, [r0, #4]
	ldrh r1, [r4, #0x38]
	strh r1, [r0, #6]
	add r1, r4, #0
	add r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0223B580
	add r1, sp, #0x10
	strb r0, [r1, #8]
	ldr r1, _0225DEE8 ; =0x00000197
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0225DDD2
	add r0, r6, #0
	mov r1, #1
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [r4]
	bl BattleSystem_GetBattleSpecial
	mov r1, #1
	tst r0, r1
	beq _0225DD20
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #6
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD20:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0225DD44
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xa
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD44:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x20
	tst r0, r1
	beq _0225DD66
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #8
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD66:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _0225DD8A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0x14
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD8A:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	bne _0225DDB4
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	bne _0225DDB4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #4
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DDB4:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #3
	bl BattleInput_ChangeMenu
_0225DDC8:
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223BB64
	b _0225DE98
_0225DDD2:
	ldr r0, [r4]
	bl BattleSystem_GetBattleSpecial
	mov r1, #1
	tst r0, r1
	beq _0225DDF4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #5
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DDF4:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0225DE18
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #9
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE18:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x20
	tst r0, r1
	beq _0225DE3A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #7
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE3A:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _0225DE5E
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0x13
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE5E:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	beq _0225DE7C
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE7C:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl BattleInput_ChangeMenu
_0225DE90:
	ldr r1, _0225DEE8 ; =0x00000197
	ldr r0, [sp, #0xc]
	mov r2, #1
	strb r2, [r0, r1]
_0225DE98:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	bl BattleInput_SetPartyExpPercents
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #0x16
	bl BattleInput_UpdateBallGaugeAnimation
	add r0, r6, #0
	bl BattleInput_EnableBallGauge
	add r0, r7, #0
	bl NARC_Delete
	add r0, r5, #0
	bl NARC_Delete
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0225DECC
	bl ov12_02265D70
_0225DECC:
	mov r0, #5
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DED4:
	ldr r0, _0225DEEC ; =gSystem
	b _0225DEF0
	.balign 4, 0
_0225DED8: .word 0x00000399
_0225DEDC: .word 0x000004CA
_0225DEE0: .word 0x0000039A
_0225DEE4: .word 0x000004C6
_0225DEE8: .word 0x00000197
_0225DEEC: .word gSystem
_0225DEF0:
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _0225DF1E
	ldr r0, [r4]
	mov r5, #0
	bl BattleSystem_GetMaxBattlers
	cmp r0, #0
	ble _0225DF1E
_0225DF04:
	ldr r0, [r4]
	add r1, r5, #0
	bl BattleSystem_GetOpponentData
	add r0, #0x28
	bl ov12_02264C84
	ldr r0, [r4]
	add r5, r5, #1
	bl BattleSystem_GetMaxBattlers
	cmp r5, r0
	blt _0225DF04
_0225DF1E:
	add r0, r6, #0
	bl BattleInput_CheckTouch
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0xc]
	cmp r0, r1
	beq _0225DF50
	mov r0, #0xa
	strb r0, [r4, #0xb]
	ldr r0, _0225E100 ; =0x000005DD
	bl PlaySE
	mov r0, #6
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DF40:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #1
	beq _0225DF52
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0225DF52
_0225DF50:
	b _0225E0FA
_0225DF52:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0225DF5A
	b _0225E062
_0225DF5A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DF66: ; jump table
	.short _0225E062 - _0225DF66 - 2 ; case 0
	.short _0225DF70 - _0225DF66 - 2 ; case 1
	.short _0225DF84 - _0225DF66 - 2 ; case 2
	.short _0225DFD0 - _0225DF66 - 2 ; case 3
	.short _0225E01C - _0225DF66 - 2 ; case 4
_0225DF70:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0225E066
	mov r0, #7
	strb r0, [r4, #0xa]
	b _0225E066
_0225DF84:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	b _0225E066
_0225DFD0:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	b _0225E066
_0225E01C:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	add r0, r6, #0
	bl BattleInput_GetCancelRunFlag
	cmp r0, #1
	bne _0225E044
	ldr r0, [sp, #8]
	bl ov12_02265D74
	mov r0, #0xff
	str r0, [r4, #0xc]
_0225E044:
	mov r3, #0
	str r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r7, #0
	bl NARC_Delete
	add r0, r5, #0
	bl NARC_Delete
	b _0225E066
_0225E062:
	bl GF_AssertFail
_0225E066:
	mov r0, #8
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225E06E:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #1
	bne _0225E0FA
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r6, #0
	bl BattleInput_DisableBallGauge
	mov r0, #8
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_0225E0D0:
	add r0, r6, #0
	bl ov12_022698B0
	cmp r0, #1
	bne _0225E0FA
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	ldr r2, [r4, #0xc]
	bl ov12_02262F24
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r7, #0
	bl SysTask_Destroy
_0225E0FA:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E100: .word 0x000005DD
	thumb_func_end ov12_0225DAD4

	thumb_func_start ov12_0225E104
ov12_0225E104: ; 0x0225E104
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4]
	bl ov10_022205BC
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl ov12_02262F24
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0225E104

