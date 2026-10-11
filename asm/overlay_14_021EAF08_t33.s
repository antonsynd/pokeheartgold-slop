#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EC3D8
	.extern ov14_021F7D3C

    .text

	.text
	thumb_func_start ov14_021EC3D8
ov14_021EC3D8: ; 0x021EC3D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A24
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EC4D4
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EC44A
	ldr r0, _021EC6F4 ; =0x000005EB
	bl PlaySE
	ldr r2, [r4, #0x34]
	ldr r1, _021EC6F8 ; =0x000040B8
	add r0, r2, r1
	add r1, r1, #4
	add r1, r2, r1
	bl System_GetTouchNewCoords
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021EC42A
	ldr r1, _021EC6FC ; =ov14_021F7D3C
	add r0, r4, #0
	mov r2, #5
	bl ov14_021F5EE4
_021EC42A:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r5, #0x1e
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F0594
	pop {r3, r4, r5, pc}
_021EC44A:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021EC4B4
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F40E8
	ldr r1, _021EC700 ; =ov14_021EA180
	add r0, r4, #0
	mov r2, #0x4c
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021EC4B4:
	ldr r0, [r4, #0x34]
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x24
	pop {r3, r4, r5, pc}
_021EC4D4:
	add r0, r4, #0
	bl ov14_021F7388
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021EC51E
	bhs _021EC5CA
	cmp r5, #0xd
	bhi _021EC512
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC4F6: ; jump table
	.short _021EC69A - _021EC4F6 - 2 ; case 0
	.short _021EC69A - _021EC4F6 - 2 ; case 1
	.short _021EC69A - _021EC4F6 - 2 ; case 2
	.short _021EC69A - _021EC4F6 - 2 ; case 3
	.short _021EC69A - _021EC4F6 - 2 ; case 4
	.short _021EC69A - _021EC4F6 - 2 ; case 5
	.short _021EC532 - _021EC4F6 - 2 ; case 6
	.short _021EC610 - _021EC4F6 - 2 ; case 7
	.short _021EC550 - _021EC4F6 - 2 ; case 8
	.short _021EC57E - _021EC4F6 - 2 ; case 9
	.short _021EC594 - _021EC4F6 - 2 ; case 10
	.short _021EC5A6 - _021EC4F6 - 2 ; case 11
	.short _021EC5B8 - _021EC4F6 - 2 ; case 12
	.short _021EC622 - _021EC4F6 - 2 ; case 13
_021EC512:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	bne _021EC51C
	b _021EC65C
_021EC51C:
	b _021EC69A
_021EC51E:
	add r0, r1, #1
	cmp r5, r0
	bhi _021EC528
	beq _021EC610
	b _021EC69A
_021EC528:
	add r0, r1, #2
	cmp r5, r0
	bne _021EC530
	b _021EC6EE
_021EC530:
	b _021EC69A
_021EC532:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2a
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0x9d
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021EC550:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	bl System_GetTouchNew
	cmp r0, #0
	bne _021EC566
	add r0, r4, #0
	mov r1, #2
	add r0, #0x2a
	strb r1, [r0]
_021EC566:
	add r0, r4, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x9d
	bl ov14_021F2330
	pop {r3, r4, r5, pc}
_021EC57E:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	mov r0, #9
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x97
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC594:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x98
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC5A6:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x99
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC5B8:
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	mov r2, #0x9b
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC5CA:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #5
	bhi _021EC5E2
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	b _021EC600
_021EC5E2:
	cmp r1, #8
	beq _021EC600
	cmp r1, #9
	beq _021EC600
	cmp r1, #0xa
	beq _021EC600
	cmp r1, #0xb
	beq _021EC600
	cmp r1, #0xc
	beq _021EC600
	cmp r1, #0xd
	beq _021EC600
	add r0, r4, #0
	bl ov14_021E765C
_021EC600:
	ldr r0, _021EC708 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x4c
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EC610:
	ldr r0, _021EC70C ; =0x00000633
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x9f
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC622:
	ldr r0, _021EC708 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x9e
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EC65C:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #5
	bhi _021EC674
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	b _021EC692
_021EC674:
	cmp r1, #8
	beq _021EC692
	cmp r1, #9
	beq _021EC692
	cmp r1, #0xa
	beq _021EC692
	cmp r1, #0xb
	beq _021EC692
	cmp r1, #0xc
	beq _021EC692
	cmp r1, #0xd
	beq _021EC692
	add r0, r4, #0
	bl ov14_021E765C
_021EC692:
	ldr r0, _021EC708 ; =0x000005DC
	bl PlaySE
	b _021EC6EE
_021EC69A:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EC6EE
	ldr r0, _021EC704 ; =0x000005DD
	bl PlaySE
	ldr r1, _021EC6FC ; =ov14_021F7D3C
	add r0, r4, #0
	mov r2, #5
	bl ov14_021F5EE4
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #8
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r5, #0x1e
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F07F0
	pop {r3, r4, r5, pc}
_021EC6EE:
	mov r0, #0x24
	pop {r3, r4, r5, pc}
	nop
_021EC6F4: .word 0x000005EB
_021EC6F8: .word 0x000040B8
_021EC6FC: .word ov14_021F7D3C
_021EC700: .word ov14_021EA180
_021EC704: .word 0x000005DD
_021EC708: .word 0x000005DC
_021EC70C: .word 0x00000633
	thumb_func_end ov14_021EC3D8

