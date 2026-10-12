#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7878
	.public ov14_021F78F8
	.extern ov14_021F7AC4

    .text

	.text
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

