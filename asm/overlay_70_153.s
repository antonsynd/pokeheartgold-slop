#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E59C

	.text

	thumb_func_start ov70_0223E59C
ov70_0223E59C: ; 0x0223E59C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl AcquireBoxMonLock
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl GetBoxMonData
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ReleaseBoxMonLock
	cmp r4, #0x70
	bne _0223E5C2
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223E5C2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov70_0223E59C

