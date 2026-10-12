#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F7810
	.public ov01_021F7894
	.extern ov01_021F8C88

	.text

	.text
	thumb_func_start ov01_021F7810
ov01_021F7810: ; 0x021F7810
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7890
	cmp r6, #0
	beq _021F7890
	ldrb r1, [r4, #0x17]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _021F7866
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r5, #0
	bl ov01_02205564
	cmp r0, #0
	beq _021F7852
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_0220589C
	b _021F7866
_021F7852:
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F7866
	mov r0, #1
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_02205808
_021F7866:
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F8D80
	add r0, r5, #0
	add r1, r6, #0
	strb r7, [r4, #0x10]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F8C88
_021F7890:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7810

	thumb_func_start ov01_021F7894
ov01_021F7894: ; 0x021F7894
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	ldr r6, [r4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F7914
	cmp r6, #0
	beq _021F7914
	ldrb r1, [r4, #0x17]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _021F78EA
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x17]
	add r0, r5, #0
	bl ov01_02205564
	cmp r0, #0
	beq _021F78D6
	ldr r2, [r4]
	mov r0, #1
	add r1, r5, #0
	bl ov01_0220589C
	b _021F78EA
_021F78D6:
	add r0, r5, #0
	bl ov01_0220553C
	cmp r0, #0
	beq _021F78EA
	mov r0, #1
	add r1, r5, #0
	add r2, r6, #0
	bl ov01_02205808
_021F78EA:
	add r0, r5, #0
	bl MapObject_GetFacingDirection
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F8D80
	add r0, r5, #0
	add r1, r6, #0
	strb r7, [r4, #0x10]
	bl ov01_021FA3E8
	add r0, r5, #0
	add r1, r6, #0
	bl ov01_021F8C88
_021F7914:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F7894

