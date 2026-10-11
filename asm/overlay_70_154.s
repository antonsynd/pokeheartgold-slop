#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E49C
	.public ov70_0223E5C8

	.text

	thumb_func_start ov70_0223E5C8
ov70_0223E5C8: ; 0x0223E5C8
	push {r4, lr}
	bl ov70_0223E49C
	add r4, r0, #0
	bne _0223E5D6
	mov r0, #0
	pop {r4, pc}
_0223E5D6:
	mov r1, #0xac
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	bne _0223E5E6
	mov r0, #0
	pop {r4, pc}
_0223E5E6:
	add r0, r4, #0
	mov r1, #0xad
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _0223E5F8
	mov r0, #2
	pop {r4, pc}
_0223E5F8:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov70_0223E5C8

