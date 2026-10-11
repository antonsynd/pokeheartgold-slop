#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_0222421C
	.extern ov08_02225D2C
	.extern ov08_02225D30

	.text

	.text
	thumb_func_start ov08_0222421C
ov08_0222421C: ; 0x0222421C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _02224242
	lsl r3, r1, #3
	ldr r1, _0222424C ; =ov08_02225D2C
	ldr r2, _02224250 ; =ov08_02225D30
	ldr r0, [r4, #0x38]
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	bl ov12_0226BD2C
	ldr r0, [r4, #0x38]
	mov r1, #0x3c
	bl ov12_0226BD4C
	pop {r4, pc}
_02224242:
	ldr r0, [r4, #0x38]
	bl BattleFinger_Disable
	pop {r4, pc}
	nop
_0222424C: .word ov08_02225D2C
_02224250: .word ov08_02225D30
	thumb_func_end ov08_0222421C

