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
	.include "macros.inc"
	.include "overlay_01_021F1AFC.inc"
	.include "global.inc"
	.public ov01_021F2830
	.extern MetatileBehavior_IsRockClimbInDirection

	.text

	.text
	thumb_func_start ov01_021F2830
ov01_021F2830: ; 0x021F2830
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl MapObject_IsMovementPaused
	cmp r0, #0
	bne _021F2842
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2842:
	ldr r0, [r5, #0x14]
	bl MapObject_GetNextFacingDirection
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_02060FA8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl MetatileBehavior_IsRockClimbInDirection
	cmp r0, #1
	bne _021F2868
	ldrh r0, [r5, #2]
	strh r0, [r5]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F2868:
	ldr r0, [r5, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl MapObject_SetHeldMovement
	mov r1, #0
	str r1, [r5, #8]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [r5, #0x18]
	bl ov01_021FEB30
	ldr r0, [r5, #0x2c]
	bl ov02_0224D9B8
	mov r0, #0
	str r0, [r5, #0x2c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov01_021F2830

