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
	.include "overlay_01_021F1AFC.inc"
	.include "global.inc"
	.public CallFieldTask_RockClimb
	.public MetatileBehavior_IsRockClimbInDirection
	.extern ov01_021F2548
	.extern ov01_021F3040
	.extern ov01_021F3100

	.text

	.text
	thumb_func_start CallFieldTask_RockClimb
CallFieldTask_RockClimb: ; 0x021F2590
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r1, r6, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetState
	sub r0, r0, #1
	cmp r0, #1
	bhi _021F25C0
	mov r0, #1
	str r0, [sp]
	b _021F25D8
_021F25C0:
	add r0, r4, #0
	bl ov01_02206268
	cmp r0, #0
	beq _021F25D8
	add r0, r4, #0
	bl ov01_022062CC
	cmp r6, r0
	bne _021F25D8
	mov r0, #0
	str r0, [sp]
_021F25D8:
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ov01_021F2548
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end CallFieldTask_RockClimb

	thumb_func_start MetatileBehavior_IsRockClimbInDirection
MetatileBehavior_IsRockClimbInDirection: ; 0x021F25E8
	push {r3, lr}
	cmp r1, #3
	bhi _021F2622
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F25FA: ; jump table
	.short _021F2602 - _021F25FA - 2 ; case 0
	.short _021F2602 - _021F25FA - 2 ; case 1
	.short _021F2612 - _021F25FA - 2 ; case 2
	.short _021F2612 - _021F25FA - 2 ; case 3
_021F2602:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsRockClimbNorthSouth
	cmp r0, #1
	bne _021F2622
	mov r0, #1
	pop {r3, pc}
_021F2612:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsRockClimbEastWest
	cmp r0, #1
	bne _021F2622
	mov r0, #1
	pop {r3, pc}
_021F2622:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end MetatileBehavior_IsRockClimbInDirection

