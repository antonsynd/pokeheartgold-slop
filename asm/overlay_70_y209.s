#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E538

	.text

	.text
	thumb_func_start ov70_0223E538
ov70_0223E538: ; 0x0223E538
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl AcquireBoxMonLock
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x70
	mov r2, #0
	bl GetBoxMonData
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ReleaseBoxMonLock
	cmp r6, #0
	ble _0223E592
	ldr r1, _0223E598 ; =0x000001DF
	cmp r4, r1
	bgt _0223E574
	bge _0223E58A
	cmp r4, #0xac
	beq _0223E58E
	b _0223E592
_0223E574:
	add r0, r1, #0
	add r0, #8
	cmp r4, r0
	bgt _0223E584
	add r1, #8
	cmp r4, r1
	beq _0223E58A
	b _0223E592
_0223E584:
	add r1, #0xd
	cmp r4, r1
	bne _0223E592
_0223E58A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E58E:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0223E592:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E598: .word 0x000001DF
	thumb_func_end ov70_0223E538

