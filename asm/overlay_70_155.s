#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E5FC

	.text

	thumb_func_start ov70_0223E5FC
ov70_0223E5FC: ; 0x0223E5FC
	push {r3, r4}
	mov r4, #0
	ldrsh r3, [r0, r4]
	ldrsh r2, [r1, r4]
	cmp r3, r2
	beq _0223E60E
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0223E60E:
	mov r2, #2
	ldrsb r3, [r1, r2]
	cmp r3, #3
	beq _0223E622
	ldrsb r2, [r0, r2]
	cmp r3, r2
	beq _0223E622
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0223E622:
	mov r2, #3
	ldrsb r3, [r0, r2]
	cmp r3, #0
	bne _0223E630
	mov r0, #0
	pop {r3, r4}
	bx lr
_0223E630:
	ldrsb r0, [r1, r2]
	cmp r0, #0
	beq _0223E640
	cmp r0, r3
	ble _0223E640
	mov r0, #0
	pop {r3, r4}
	bx lr
_0223E640:
	mov r0, #4
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0223E652
	cmp r0, r3
	bge _0223E652
	mov r0, #0
	pop {r3, r4}
	bx lr
_0223E652:
	mov r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0223E5FC

