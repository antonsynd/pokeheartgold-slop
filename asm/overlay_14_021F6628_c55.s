#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7688
	.public ov14_021F7700
	.extern ov14_021F7AC4

    .text

	.text
	thumb_func_start ov14_021F7688
ov14_021F7688: ; 0x021F7688
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	sub r0, r4, #6
	cmp r0, #1
	bhi _021F76A8
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	add r4, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _021F76FC ; =0x0000043C
	str r4, [r1, r0]
_021F76A8:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
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
	cmp r4, #0
	blt _021F76EE
	cmp r4, #5
	bgt _021F76EE
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	pop {r3, r4, r5, pc}
_021F76EE:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	pop {r3, r4, r5, pc}
	nop
_021F76FC: .word 0x0000043C
	thumb_func_end ov14_021F7688

	thumb_func_start ov14_021F7700
ov14_021F7700: ; 0x021F7700
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	blt _021F771C
	cmp r4, #5
	bgt _021F771C
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	b _021F7726
_021F771C:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021F7726:
	cmp r6, #8
	bne _021F7742
	cmp r4, #0
	bne _021F7742
	ldr r1, [r5, #0x34]
	ldr r0, _021F784C ; =0x0000043C
	mov r2, #8
	ldr r4, [r1, r0]
	ldr r0, [r1, #0x2c]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F7742:
	cmp r4, #0
	blt _021F7750
	cmp r4, #5
	bgt _021F7750
	ldr r1, [r5, #0x34]
	ldr r0, _021F784C ; =0x0000043C
	str r4, [r1, r0]
_021F7750:
	cmp r4, #0
	bne _021F77AC
	cmp r6, #5
	bne _021F77AC
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r0, r0, #1
	cmp r0, #0x12
	blt _021F7768
	mov r1, #0
	b _021F7770
_021F7768:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r1, r0, #1
_021F7770:
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
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7850 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F77AC:
	cmp r4, #5
	bne _021F7806
	cmp r6, #0
	bne _021F7806
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r0, r0, #1
	bpl _021F77C2
	mov r1, #0x11
	b _021F77CA
_021F77C2:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	sub r1, r0, #1
_021F77CA:
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
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7850 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F7806:
	cmp r4, #0
	blt _021F7836
	cmp r4, #5
	bgt _021F7836
	cmp r6, #8
	beq _021F7836
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
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
_021F7836:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7850 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
	nop
_021F784C: .word 0x0000043C
_021F7850: .word ov14_021E9F20
	thumb_func_end ov14_021F7700

