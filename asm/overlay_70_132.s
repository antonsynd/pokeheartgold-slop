#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238CAC
	.public ov70_0223DB30

	.text

	thumb_func_start ov70_0223DB30
ov70_0223DB30: ; 0x0223DB30
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x3d
	bl ListMenuItems_New
	ldr r1, _0223DB8C ; =0x000011AC
	mov r2, #0x57
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0223DB8C ; =0x000011AC
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x58
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0223DB8C ; =0x000011AC
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x59
	mov r3, #3
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xa
	bl ov70_02238CAC
	ldr r1, _0223DB90 ; =0x000011D0
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223DB8C: .word 0x000011AC
_0223DB90: .word 0x000011D0
	thumb_func_end ov70_0223DB30

