#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238CAC
	.public ov70_02238FB4
	.public ov70_0223A384

	.text

	thumb_func_start ov70_0223A384
ov70_0223A384: ; 0x0223A384
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #0x3d
	bl ListMenuItems_New
	ldr r1, _0223A3D4 ; =0x000011AC
	mov r2, #0x37
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	ldr r0, _0223A3D4 ; =0x000011AC
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x38
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #0
	mov r1, #2
	mov r2, #0xd
	bl ov70_02238CAC
	ldr r1, _0223A3D8 ; =0x000011D0
	str r0, [r4, r1]
	mov r0, #1
	bl ov70_02238FB4
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223A3D4: .word 0x000011AC
_0223A3D8: .word 0x000011D0
	thumb_func_end ov70_0223A384

