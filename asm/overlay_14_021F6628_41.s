#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7688
	.public ov14_021F7700
	.public ov14_021F7854
	.public ov14_021F7878
	.public ov14_021F78F8
	.public ov14_021F7A2C
	.public ov14_021F7A50
	.public ov14_021F7AC4
	.extern ov14_021F6B28

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

	thumb_func_start ov14_021F7854
ov14_021F7854: ; 0x021F7854
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	cmp r4, #6
	beq _021F7876
	cmp r4, #7
	beq _021F7876
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
_021F7876:
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7854

	thumb_func_start ov14_021F7878
ov14_021F7878: ; 0x021F7878
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	sub r0, r4, #4
	cmp r0, #1
	bhi _021F789C
	ldr r0, [r5, #0x34]
	ldr r6, _021F78F4 ; =0x0000044D
	ldrb r1, [r0, r6]
	sub r6, #0x11
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r4, r3, r2
	str r4, [r0, r6]
_021F789C:
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
	blt _021F78E4
	cmp r4, #3
	bgt _021F78E4
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021F78E4:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021F78F4: .word 0x0000044D
	thumb_func_end ov14_021F7878

	thumb_func_start ov14_021F78F8
ov14_021F78F8: ; 0x021F78F8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	blt _021F7914
	cmp r4, #3
	bgt _021F7914
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	b _021F791E
_021F7914:
	ldr r0, [r5, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021F791E:
	cmp r6, #6
	bne _021F793A
	cmp r4, #0
	bne _021F793A
	ldr r1, [r5, #0x34]
	ldr r0, _021F7A20 ; =0x0000043C
	mov r2, #6
	ldr r4, [r1, r0]
	ldr r0, [r1, #0x2c]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F793A:
	cmp r4, #0
	blt _021F7948
	cmp r4, #3
	bgt _021F7948
	ldr r1, [r5, #0x34]
	ldr r0, _021F7A20 ; =0x0000043C
	str r4, [r1, r0]
_021F7948:
	cmp r4, #0
	bne _021F7998
	cmp r6, #3
	bne _021F7998
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A24 ; =0x0000044D
	ldrb r2, [r0, r1]
	add r2, r2, #1
	cmp r2, #0x18
	blt _021F7960
	mov r2, #0
	b _021F7960
_021F7960:
	strb r2, [r0, r1]
	add r0, r5, #0
	bl ov14_021F462C
	add r0, r5, #0
	bl ov14_021F4530
	add r0, r5, #0
	bl ov14_021F459C
	add r0, r5, #0
	bl ov14_021F58B8
	ldr r0, [r5, #0x34]
	mov r1, #5
	mov r2, #4
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A28 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F7998:
	cmp r4, #3
	bne _021F79E6
	cmp r6, #0
	bne _021F79E6
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A24 ; =0x0000044D
	ldrb r2, [r0, r1]
	sub r2, r2, #1
	bpl _021F79AE
	mov r2, #0x17
	b _021F79AE
_021F79AE:
	strb r2, [r0, r1]
	add r0, r5, #0
	bl ov14_021F462C
	add r0, r5, #0
	bl ov14_021F4530
	add r0, r5, #0
	bl ov14_021F459C
	add r0, r5, #0
	bl ov14_021F58B8
	ldr r0, [r5, #0x34]
	mov r1, #4
	mov r2, #2
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A28 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F79E6:
	cmp r4, #0
	blt _021F7A0C
	cmp r4, #3
	bgt _021F7A0C
	cmp r6, #6
	beq _021F7A0C
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A24 ; =0x0000044D
	ldrb r2, [r0, r1]
	lsr r2, r2, #2
	lsl r2, r2, #2
	add r2, r4, r2
	strb r2, [r0, r1]
	add r0, r5, #0
	bl ov14_021F459C
	add r0, r5, #0
	bl ov14_021F58B8
_021F7A0C:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F7A28 ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F7A20: .word 0x0000043C
_021F7A24: .word 0x0000044D
_021F7A28: .word ov14_021E9F20
	thumb_func_end ov14_021F78F8

	thumb_func_start ov14_021F7A2C
ov14_021F7A2C: ; 0x021F7A2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	cmp r4, #4
	beq _021F7A4E
	cmp r4, #5
	beq _021F7A4E
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
_021F7A4E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7A2C

	thumb_func_start ov14_021F7A50
ov14_021F7A50: ; 0x021F7A50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0x2b
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x2c
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x2d
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x25
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x26
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x27
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x28
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x29
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	mov r1, #0x2a
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_ClearEnabledFlag
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetAllEnabled
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7A50

	thumb_func_start ov14_021F7AC4
ov14_021F7AC4: ; 0x021F7AC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r2, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r2, sp, #0
	add r1, #3
	add r2, #2
	bl DpadMenuBox_GetPosition
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0xa
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #3
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #4]
	add r0, sp, #0
	ldrb r1, [r0, #3]
	strb r1, [r4]
	ldrb r1, [r0, #2]
	strb r1, [r4, #1]
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #3]
	cmp r0, r1
	blo _021F7B24
	sub r0, r0, r1
	strb r0, [r4, #2]
	ldr r1, [r4, #4]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #4]
	b _021F7B34
_021F7B24:
	sub r0, r1, r0
	strb r0, [r4, #2]
	ldr r1, [r4, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, #4]
_021F7B34:
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #2]
	cmp r0, r1
	blo _021F7B4C
	sub r0, r0, r1
	strb r0, [r4, #3]
	ldr r1, [r4, #4]
	mov r0, #2
	bic r1, r0
	str r1, [r4, #4]
	b _021F7B58
_021F7B4C:
	sub r0, r1, r0
	strb r0, [r4, #3]
	ldr r1, [r4, #4]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #4]
_021F7B58:
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	lsr r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #8
	strb r0, [r4, #2]
	ldrb r0, [r4, #3]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	lsr r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #8
	strb r0, [r4, #3]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7AC4

