#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_02200300
	.extern ov15_022002EC
	.extern ov15_02200998
	.extern ov15_022009A0
	.extern ov15_02200A14
	.extern ov15_02200A58
	.extern ov15_02200A88

	.text

	.text
	thumb_func_start ov15_02200300
ov15_02200300: ; 0x02200300
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #2
	bne _0220031A
	add r0, r2, #0
	cmp r0, #0x63
	ble _0220031A
	mov r0, #0x63
	str r0, [sp, #4]
_0220031A:
	ldr r0, [sp]
	ldr r2, _02200414 ; =ov15_02200998
	sub r0, r0, #2
	lsl r1, r0, #2
	str r1, [sp, #8]
	ldr r1, [r2, r1]
	mov r7, #0
	cmp r1, #0
	ble _0220036C
	mov r1, #0x18
	mul r1, r0
	ldr r0, _02200418 ; =ov15_02200A58
	add r4, r0, r1
	ldr r0, _0220041C ; =ov15_02200A88
	add r6, r0, r1
_02200338:
	ldr r0, [r4]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [r6]
	bl ManagedSprite_SetAnim
	ldr r1, _02200414 ; =ov15_02200998
	ldr r0, [sp, #8]
	add r7, r7, #1
	ldr r0, [r1, r0]
	add r4, r4, #4
	add r6, r6, #4
	cmp r7, r0
	blt _02200338
_0220036C:
	ldr r0, [sp, #4]
	bl ov15_022002EC
	cmp r0, #0
	beq _022003D4
	ldr r1, [sp]
	sub r1, r1, #2
	bne _0220039A
	cmp r0, #2
	bne _0220039A
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _022003D4
_0220039A:
	ldr r1, [sp]
	sub r1, r1, #2
	cmp r1, #1
	bne _022003D4
	sub r2, r0, #1
	ldr r0, _02200420 ; =ov15_022009A0
	lsl r7, r2, #2
	ldr r0, [r0, r7]
	mov r4, #0
	cmp r0, #0
	ble _022003D4
	ldr r1, _02200424 ; =ov15_02200A14
	lsl r0, r2, #4
	add r6, r1, r0
_022003B6:
	ldr r0, [r6]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, _02200420 ; =ov15_022009A0
	add r4, r4, #1
	ldr r0, [r0, r7]
	add r6, r6, #4
	cmp r4, r0
	blt _022003B6
_022003D4:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x25
	bl ManagedSprite_SetAnim
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xa7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x27
	bl ManagedSprite_SetAnim
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02200414: .word ov15_02200998
_02200418: .word ov15_02200A58
_0220041C: .word ov15_02200A88
_02200420: .word ov15_022009A0
_02200424: .word ov15_02200A14
	thumb_func_end ov15_02200300

