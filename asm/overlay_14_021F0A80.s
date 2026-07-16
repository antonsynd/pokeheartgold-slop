#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021F0A80
ov14_021F0A80: ; 0x021F0A80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F0AA8 ; =ov14_021E9434
	add r0, r4, #0
	mov r2, #0x13
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0AA8: .word ov14_021E9434
	thumb_func_end ov14_021F0A80

	thumb_func_start ov14_021F0AAC
ov14_021F0AAC: ; 0x021F0AAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F0AD4 ; =ov14_021E9450
	add r0, r4, #0
	mov r2, #0x19
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0AD4: .word ov14_021E9450
	thumb_func_end ov14_021F0AAC

	thumb_func_start ov14_021F0AD8
ov14_021F0AD8: ; 0x021F0AD8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	add r0, #0x23
	strb r1, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F43F4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov14_021F3488
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r1, _021F0B30 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x22
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0B30: .word ov14_021E94BC
	thumb_func_end ov14_021F0AD8

	thumb_func_start ov14_021F0B34
ov14_021F0B34: ; 0x021F0B34
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0
	add r0, #0x23
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F0B5E
	add r0, r4, #0
	bl ov14_021EC710
	pop {r4, pc}
_021F0B5E:
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x25
	bl ov14_021F1100
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0B34

	thumb_func_start ov14_021F0B70
ov14_021F0B70: ; 0x021F0B70
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov14_021E81A8
	ldr r0, [r4, #0x34]
	bl ov14_021F63F0
	ldr r0, [r4, #0x34]
	bl ov14_021F63A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8368
	add r0, r4, #0
	bl ov14_021E82DC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7E78
	add r0, r4, #0
	bl ov14_021F30B0
	pop {r4, pc}
	thumb_func_end ov14_021F0B70

	thumb_func_start ov14_021F0BB4
ov14_021F0BB4: ; 0x021F0BB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov14_021E81A8
	ldr r0, [r4, #0x34]
	bl ov14_021F63F0
	ldr r0, [r4, #0x34]
	bl ov14_021F63B8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8368
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7E88
	add r0, r4, #0
	bl ov14_021F311C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0BB4

	thumb_func_start ov14_021F0BF4
ov14_021F0BF4: ; 0x021F0BF4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F30B0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E7E78
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0BF4

	thumb_func_start ov14_021F0C0C
ov14_021F0C0C: ; 0x021F0C0C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8020
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021F0C48
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
_021F0C48:
	ldr r1, _021F0C54 ; =ov14_021E952C
	add r0, r4, #0
	mov r2, #0x2d
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F0C54: .word ov14_021E952C
	thumb_func_end ov14_021F0C0C

	thumb_func_start ov14_021F0C58
ov14_021F0C58: ; 0x021F0C58
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r2, #0xff
	add r1, #0x21
	strb r2, [r1]
	mov r1, #1
	add r2, r1, #0
	bl ov14_021F3488
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E805C
	ldr r1, _021F0C84 ; =ov14_021E954C
	add r0, r4, #0
	mov r2, #0x2e
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F0C84: .word ov14_021E954C
	thumb_func_end ov14_021F0C58

	thumb_func_start ov14_021F0C88
ov14_021F0C88: ; 0x021F0C88
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r1, _021F0CD4 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x2f
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0CD4: .word ov14_021E94BC
	thumb_func_end ov14_021F0C88

	thumb_func_start ov14_021F0CD8
ov14_021F0CD8: ; 0x021F0CD8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0D10
	add r0, r4, #0
	mov r1, #0x31
	bl ov14_021F0EE8
	pop {r4, pc}
_021F0D10:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0D2A
	add r0, r4, #0
	mov r1, #0x31
	bl ov14_021F0D34
	pop {r4, pc}
_021F0D2A:
	add r0, r4, #0
	mov r1, #0x32
	bl ov14_021F1090
	pop {r4, pc}
	thumb_func_end ov14_021F0CD8

	thumb_func_start ov14_021F0D34
ov14_021F0D34: ; 0x021F0D34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	ldr r1, _021F0D54 ; =ov14_021E9970
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0D54: .word ov14_021E9970
	thumb_func_end ov14_021F0D34

	thumb_func_start ov14_021F0D58
ov14_021F0D58: ; 0x021F0D58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021F0D6A
	mov r4, #0x82
	b _021F0D6C
_021F0D6A:
	mov r4, #0x29
_021F0D6C:
	add r0, r5, #0
	add r0, #0x25
	ldrb r7, [r0]
	mov r1, #6
	add r0, r7, #0
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r1, r6, r1
	cmp r1, r7
	beq _021F0D96
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
_021F0D96:
	add r0, r5, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	bne _021F0E4E
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0DEA
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r5, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F0EE8
	pop {r3, r4, r5, r6, r7, pc}
_021F0DEA:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0E40
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r5, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	ldr r1, _021F0EE0 ; =ov14_021E9970
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
_021F0E40:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0E4E:
	ldr r0, [r5, #0x34]
	mov r1, #0x2d
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #1
	bne _021F0E9E
	ldr r0, [r5, #0x34]
	mov r1, #0x2d
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
_021F0E9E:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0EB2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0EB2:
	add r0, r5, #0
	bl ov14_021F604C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021F0ED4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F0ED4:
	ldr r1, _021F0EE4 ; =ov14_021E9920
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0EE0: .word ov14_021E9970
_021F0EE4: .word ov14_021E9920
	thumb_func_end ov14_021F0D58

	thumb_func_start ov14_021F0EE8
ov14_021F0EE8: ; 0x021F0EE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
	ldr r1, _021F0F08 ; =ov14_021E9970
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F0F08: .word ov14_021E9970
	thumb_func_end ov14_021F0EE8

	thumb_func_start ov14_021F0F0C
ov14_021F0F0C: ; 0x021F0F0C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x25
	add r5, r1, #0
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	strb r2, [r4, #0x1f]
	add r2, r4, #0
	add r2, #0x25
	ldrb r2, [r2]
	cmp r1, r2
	ldrb r1, [r4, #0x1f]
	bls _021F0F42
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r6, _021F0FFC ; =ov14_021E92AC
	b _021F0F5A
_021F0F42:
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r6, _021F1000 ; =ov14_021E9370
_021F0F5A:
	cmp r5, #4
	bhi _021F0FF0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F0F6A: ; jump table
	.short _021F0F74 - _021F0F6A - 2 ; case 0
	.short _021F0F90 - _021F0F6A - 2 ; case 1
	.short _021F0F9C - _021F0F6A - 2 ; case 2
	.short _021F0FA2 - _021F0F6A - 2 ; case 3
	.short _021F0FCA - _021F0F6A - 2 ; case 4
_021F0F74:
	add r0, r4, #0
	bl ov14_021F4848
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F0F8A
	mov r0, #0xc
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F8A:
	mov r0, #0x24
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F90:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x3d
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0F9C:
	mov r0, #0x47
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0FA2:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0FC4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F0FC4:
	mov r0, #0x29
	str r0, [r4, #0x30]
	b _021F0FF0
_021F0FCA:
	add r0, r4, #0
	bl ov14_021F4848
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021F0FEC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85D0
_021F0FEC:
	mov r0, #0x82
	str r0, [r4, #0x30]
_021F0FF0:
	ldr r2, [r4, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F0FFC: .word ov14_021E92AC
_021F1000: .word ov14_021E9370
	thumb_func_end ov14_021F0F0C

	thumb_func_start ov14_021F1004
ov14_021F1004: ; 0x021F1004
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	add r4, r1, #0
	ldrb r1, [r0]
	mov r0, #6
	mul r0, r4
	add r1, r1, r0
	bpl _021F101A
	add r1, #0x12
	b _021F1020
_021F101A:
	cmp r1, #0x12
	blt _021F1020
	sub r1, #0x12
_021F1020:
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F49E0
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F57B8
	cmp r4, #0
	ldr r0, [r5, #0x34]
	ble _021F104E
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	pop {r3, r4, r5, pc}
_021F104E:
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F1004

	thumb_func_start ov14_021F1058
ov14_021F1058: ; 0x021F1058
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov14_021F4720
	add r0, r5, #0
	bl ov14_021F4848
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E86E0
	ldr r1, _021F108C ; =ov14_021E9554
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F108C: .word ov14_021E9554
	thumb_func_end ov14_021F1058

	thumb_func_start ov14_021F1090
ov14_021F1090: ; 0x021F1090
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8704
	ldr r1, _021F10B0 ; =ov14_021E9590
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F10B0: .word ov14_021E9590
	thumb_func_end ov14_021F1090

	thumb_func_start ov14_021F10B4
ov14_021F10B4: ; 0x021F10B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl ov14_021F5EC4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r1, _021F10D8 ; =ov14_021E95B4
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F10D8: .word ov14_021E95B4
	thumb_func_end ov14_021F10B4

	thumb_func_start ov14_021F10DC
ov14_021F10DC: ; 0x021F10DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r1, _021F10FC ; =ov14_021E95B4
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021F10FC: .word ov14_021E95B4
	thumb_func_end ov14_021F10DC

	thumb_func_start ov14_021F1100
ov14_021F1100: ; 0x021F1100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xff
	add r0, #0x21
	strb r1, [r0]
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F1124 ; =ov14_021E9434
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1124: .word ov14_021E9434
	thumb_func_end ov14_021F1100

	thumb_func_start ov14_021F1128
ov14_021F1128: ; 0x021F1128
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldrb r0, [r4, #0x1f]
	mov r1, #6
	bl _s32_div_f
	ldr r2, [r4, #0x34]
	ldr r0, _021F116C ; =0x0000043C
	str r1, [r2, r0]
	ldr r1, [r4, #0x34]
	ldr r0, [r1, r0]
	str r0, [r4, #0x2c]
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F1162
	add r0, r4, #0
	bl ov14_021ED5B0
	pop {r4, pc}
_021F1162:
	add r0, r4, #0
	mov r1, #0x35
	bl ov14_021F1100
	pop {r4, pc}
	.balign 4, 0
_021F116C: .word 0x0000043C
	thumb_func_end ov14_021F1128

	thumb_func_start ov14_021F1170
ov14_021F1170: ; 0x021F1170
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r4, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r1, [r5, #0x34]
	ldr r0, _021F11F4 ; =0x0000043C
	add r3, r2, #0
	str r2, [r1, r0]
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextLastUnk0FInputs
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #0x3d
	pop {r3, r4, r5, pc}
	nop
_021F11F4: .word 0x0000043C
	thumb_func_end ov14_021F1170

	thumb_func_start ov14_021F11F8
ov14_021F11F8: ; 0x021F11F8
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F1004
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x3d
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F11F8

	thumb_func_start ov14_021F1228
ov14_021F1228: ; 0x021F1228
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r2, _021F1298 ; =0x0000044D
	ldrb r3, [r0, r2]
	lsl r2, r1, #2
	add r3, r3, r2
	bpl _021F123C
	add r3, #0x18
	b _021F1242
_021F123C:
	cmp r3, #0x18
	blt _021F1242
	sub r3, #0x18
_021F1242:
	ldr r2, _021F1298 ; =0x0000044D
	cmp r1, #0
	strb r3, [r0, r2]
	ldr r0, [r4, #0x34]
	ble _021F1256
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	b _021F125E
_021F1256:
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
_021F125E:
	add r0, r4, #0
	bl ov14_021F462C
	add r0, r4, #0
	bl ov14_021F4530
	add r0, r4, #0
	bl ov14_021F58B8
	ldr r2, [r4, #0x34]
	ldr r1, _021F1298 ; =0x0000044D
	ldr r0, [r2, #0x2c]
	ldrb r1, [r2, r1]
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	pop {r4, pc}
	.balign 4, 0
_021F1298: .word 0x0000044D
	thumb_func_end ov14_021F1228

	thumb_func_start ov14_021F129C
ov14_021F129C: ; 0x021F129C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x34]
	ldr r3, _021F1314 ; =0x0000044D
	ldrb r5, [r2, r3]
	lsr r5, r5, #2
	lsl r5, r5, #2
	add r1, r1, r5
	strb r1, [r2, r3]
	bl ov14_021F459C
	add r0, r4, #0
	bl ov14_021F58B8
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	ldr r2, [r4, #0x34]
	ldr r1, _021F1318 ; =0x0000043C
	str r0, [r2, r1]
	ldr r0, [r4, #0x34]
	ldr r2, [r0, r1]
	ldr r0, [r0, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r1, #6
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	ldr r0, [r4, #0x34]
	mov r1, #6
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1314: .word 0x0000044D
_021F1318: .word 0x0000043C
	thumb_func_end ov14_021F129C

	thumb_func_start ov14_021F131C
ov14_021F131C: ; 0x021F131C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r0, _021F13A0 ; =0x0000044D
	ldrb r1, [r1, r0]
	cmp r1, #0x10
	blo _021F1348
	ldr r0, [r4, #4]
	sub r1, #0x10
	bl PCStorage_IsBonusWallpaperUnlocked
	cmp r0, #0
	bne _021F1348
	ldr r0, _021F13A4 ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x42
	bl ov14_021F2270
	pop {r4, pc}
_021F1348:
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	add r0, r4, #0
	bl ov14_021E7930
	ldr r2, [r4, #0x34]
	ldr r1, _021F13A0 ; =0x0000044D
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _021F1370
	ldr r0, _021F13A4 ; =0x000005F3
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x42
	bl ov14_021F2270
	pop {r4, pc}
_021F1370:
	add r0, r4, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldrb r0, [r4, #0x1f]
	cmp r1, r0
	beq _021F138E
	ldr r0, _021F13A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xa5
	bl ov14_021F2270
	pop {r4, pc}
_021F138E:
	ldr r0, _021F13AC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x47
	bl ov14_021F2270
	pop {r4, pc}
	.balign 4, 0
_021F13A0: .word 0x0000044D
_021F13A4: .word 0x000005F3
_021F13A8: .word 0x000005DC
_021F13AC: .word 0x000005DD
	thumb_func_end ov14_021F131C

	thumb_func_start ov14_021F13B0
ov14_021F13B0: ; 0x021F13B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #8]
	bl Party_GetCount
	cmp r0, #6
	beq _021F13EE
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r0, [r4, #0x34]
	bl ov14_021E884C
	ldr r1, _021F1410 ; =ov14_021E9434
	add r0, r4, #0
	mov r2, #0x53
	bl ov14_021F0234
	pop {r4, pc}
_021F13EE:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E83F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	mov r3, #0x25
	bl ov14_021F685C
	mov r0, #0xe
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r4, pc}
	nop
_021F1410: .word ov14_021E9434
	thumb_func_end ov14_021F13B0

	thumb_func_start ov14_021F1414
ov14_021F1414: ; 0x021F1414
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	ldr r1, _021F1444 ; =ov14_021E9450
	add r0, r4, #0
	mov r2, #0x5c
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F1444: .word ov14_021E9450
	thumb_func_end ov14_021F1414

	thumb_func_start ov14_021F1448
ov14_021F1448: ; 0x021F1448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r4, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r0, r5, #0
	add r1, r4, r1
	add r0, #0x25
	strb r1, [r0]
	bl System_GetTouchNew
	cmp r0, #0
	bne _021F148C
	ldr r0, [r5, #4]
	add r5, #0x25
	ldrb r1, [r5]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021F1482
	ldr r0, _021F14F8 ; =0x000005F3
	bl PlaySE
	b _021F1488
_021F1482:
	ldr r0, _021F14FC ; =0x000005DD
	bl PlaySE
_021F1488:
	mov r0, #0x66
	pop {r3, r4, r5, pc}
_021F148C:
	ldr r0, _021F14FC ; =0x000005DD
	bl PlaySE
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r1, [r5, #0x34]
	ldr r0, _021F1500 ; =0x0000043C
	add r3, r2, #0
	str r2, [r1, r0]
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextLastUnk0FInputs
	ldr r0, [r5, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	mov r0, #0x61
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F14F8: .word 0x000005F3
_021F14FC: .word 0x000005DD
_021F1500: .word 0x0000043C
	thumb_func_end ov14_021F1448

	thumb_func_start ov14_021F1504
ov14_021F1504: ; 0x021F1504
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F1004
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x61
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F1504

	thumb_func_start ov14_021F1534
ov14_021F1534: ; 0x021F1534
	ldr r3, _021F153C ; =ov14_021F2270
	mov r1, #0xa
	mov r2, #0x62
	bx r3
	.balign 4, 0
_021F153C: .word ov14_021F2270
	thumb_func_end ov14_021F1534

	thumb_func_start ov14_021F1540
ov14_021F1540: ; 0x021F1540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r0, [r4, #4]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021F1566
	ldr r0, _021F1578 ; =0x000005F3
	bl PlaySE
	b _021F156C
_021F1566:
	ldr r0, _021F157C ; =0x000005DD
	bl PlaySE
_021F156C:
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x66
	bl ov14_021F2270
	pop {r4, pc}
	.balign 4, 0
_021F1578: .word 0x000005F3
_021F157C: .word 0x000005DD
	thumb_func_end ov14_021F1540

	thumb_func_start ov14_021F1580
ov14_021F1580: ; 0x021F1580
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x21
	strb r1, [r0]
	ldr r1, [r4, #0x34]
	ldr r0, _021F15C0 ; =0x0000044B
	mov r2, #1
	strb r2, [r1, r0]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r4, #0x34]
	mov r2, #0
	bl ov14_021F3190
	add r0, r4, #0
	bl ov14_021F40DC
	add r0, r4, #0
	add r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F15B4
	ldr r0, [r4, #0x34]
	bl ov14_021E8824
_021F15B4:
	ldr r1, _021F15C4 ; =ov14_021EA254
	add r0, r4, #0
	mov r2, #0x73
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021F15C0: .word 0x0000044B
_021F15C4: .word ov14_021EA254
	thumb_func_end ov14_021F1580

	thumb_func_start ov14_021F15C8
ov14_021F15C8: ; 0x021F15C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xff
	bne _021F15D6
	mov r2, #1
	b _021F15D8
_021F15D6:
	mov r2, #0
_021F15D8:
	ldr r1, [r5, #0x34]
	ldr r0, _021F17F8 ; =0x000088CC
	str r2, [r1, r0]
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	add r3, sp, #0
	add r2, r0, r1
	ldr r1, _021F17FC ; =0x00004094
	ldrb r1, [r2, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	add r2, r2, #4
	lsl r2, r2, #0x10
	ldrsh r1, [r3, r1]
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	cmp r4, #0x24
	bhs _021F1684
	cmp r4, #0x1e
	blo _021F167C
	ldr r0, [r5, #8]
	bl Party_GetCount
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0x1e
	bhs _021F1658
	add r1, r4, #0
	sub r1, #0x1e
	cmp r1, r0
	bls _021F1650
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F1650:
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F1658:
	add r1, r4, #0
	sub r1, #0x1e
	cmp r1, r0
	blo _021F1674
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F1674:
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F167C:
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F1684:
	cmp r4, #0xff
	bne _021F168A
	b _021F1798
_021F168A:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	add r1, r4, r1
	add r0, r5, #0
	sub r1, #0x25
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F48B4
	add r0, r5, #0
	bl ov14_021F57B8
	add r0, r5, #0
	add r0, #0x21
	ldrb r6, [r0]
	cmp r6, #0x1e
	blo _021F1752
	sub r6, #0x1e
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F16E2
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F16E2:
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021F16F8
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F16F8:
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021E6480
	cmp r0, #0
	bne _021F170C
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F170C:
	add r0, r5, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	bne _021F172C
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F172C:
	ldr r0, [r5, #4]
	bl PCStorage_CountEmptySpotsInBox
	cmp r0, #0
	bne _021F173E
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F173E:
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F1752:
	add r0, r5, #0
	add r0, #0x25
	ldrb r1, [r0]
	ldrb r0, [r5, #0x1f]
	cmp r1, r0
	bne _021F1772
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F1772:
	ldr r0, [r5, #4]
	bl PCStorage_CountEmptySpotsInBox
	cmp r0, #0
	bne _021F1784
	ldr r0, [r5, #0x34]
	bl ov14_021E884C
	b _021F17D0
_021F1784:
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F1798:
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x24
	bhs _021F17BE
	add r0, r5, #0
	bl ov14_021E7588
	cmp r0, #0
	bne _021F17D0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021F17D0
_021F17BE:
	add r0, r5, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021F17D0:
	ldr r1, [r5, #0x34]
	ldr r0, _021F1800 ; =0x0000044C
	mov r2, #0
	strb r4, [r1, r0]
	ldr r1, [r5, #0x34]
	sub r0, r0, #1
	strb r2, [r1, r0]
	add r0, r5, #0
	bl ov14_021F08BC
	add r0, r5, #0
	mov r1, #2
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F1804 ; =ov14_021EA378
	add r0, r5, #0
	mov r2, #0x2b
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F17F8: .word 0x000088CC
_021F17FC: .word 0x00004094
_021F1800: .word 0x0000044C
_021F1804: .word ov14_021EA378
	thumb_func_end ov14_021F15C8

