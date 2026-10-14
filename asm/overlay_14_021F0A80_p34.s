#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F15C8

    .text

	.text
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

