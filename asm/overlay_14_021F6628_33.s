#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7388
	.public ov14_021F73E4
	.public ov14_021F7444
	.extern ov14_021F6B28
	.extern ov14_021F7AC4

    .text

	.text
	thumb_func_start ov14_021F7388
ov14_021F7388: ; 0x021F7388
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F73D0
	cmp r4, #8
	blo _021F73E0
	cmp r4, #0xc
	bhi _021F73E0
	ldr r0, [r5, #0x34]
	add r1, r6, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r6, #0
	bl ov14_021F6B28
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021F73D0:
	cmp r4, #7
	beq _021F73DC
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	bne _021F73E0
_021F73DC:
	mov r0, #0xd
	pop {r4, r5, r6, pc}
_021F73E0:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov14_021F7388

	thumb_func_start ov14_021F73E4
ov14_021F73E4: ; 0x021F73E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	add r4, r1, #0
	cmp r2, r0
	beq _021F742E
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F7418
	cmp r4, #8
	blt _021F742E
	add r0, r5, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021F7414
	sub r4, #0x1e
	b _021F742E
_021F7414:
	mov r4, #0
	b _021F742E
_021F7418:
	cmp r4, #8
	bne _021F742C
	cmp r4, #9
	bne _021F742C
	cmp r4, #0xa
	bne _021F742C
	cmp r4, #0xb
	bne _021F742C
	cmp r4, #0xc
	beq _021F742E
_021F742C:
	mov r4, #8
_021F742E:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F73E4

	thumb_func_start ov14_021F7444
ov14_021F7444: ; 0x021F7444
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r6, r2, #0
	bl ov14_021E8544
	cmp r0, #1
	bne _021F747E
	cmp r4, #6
	bgt _021F7492
	cmp r6, #7
	blt _021F7492
	add r0, r5, #0
	bl ov14_021E76B8
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F74A8 ; =ov14_021EA180
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
_021F747E:
	cmp r4, #0xc
	bne _021F7492
	cmp r6, #7
	bne _021F7492
	ldr r0, [r5, #0x34]
	mov r1, #7
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r4, #7
_021F7492:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F7AC4
	ldr r0, [r5, #0x34]
	ldr r1, _021F74AC ; =ov14_021E9F20
	bl ov14_021E5A50
	pop {r4, r5, r6, pc}
	nop
_021F74A8: .word ov14_021EA180
_021F74AC: .word ov14_021E9F20
	thumb_func_end ov14_021F7444

