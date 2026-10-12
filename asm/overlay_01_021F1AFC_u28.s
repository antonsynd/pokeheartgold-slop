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
	.public ov01_021F2548
	.public ov01_021F2628
	.extern ov01_021F3040
	.extern ov01_021F30D0
	.extern ov01_021F30F4
	.extern ov01_021F3100
	.extern ov01_022069D0
	.extern ov01_022069F0

	.text

	.text
	thumb_func_start ov01_021F2548
ov01_021F2548: ; 0x021F2548
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x30
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x10]
	bl PlayerAvatar_GetMapObject
	add r2, r4, #0
	str r0, [r4, #0x14]
	add r2, #0x1c
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021F257C
	mov r0, #5
	b _021F257E
_021F257C:
	mov r0, #6
_021F257E:
	strh r0, [r4, #2]
	ldr r0, [r6, #0x10]
	ldr r1, _021F258C ; =ov01_021F2628
	add r2, r4, #0
	bl TaskManager_Call
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F258C: .word ov01_021F2628
	thumb_func_end ov01_021F2548

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

	thumb_func_start ov01_021F2628
ov01_021F2628: ; 0x021F2628
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl TaskManager_GetEnvironment
	ldr r7, _021F268C ; =ov01_022069D0
	add r4, r0, #0
_021F2634:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021F2648
	ldrh r2, [r4]
	add r0, r4, #0
	add r1, r6, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	b _021F2656
_021F2648:
	ldrh r2, [r4]
	add r0, r4, #0
	add r1, r6, #0
	lsl r3, r2, #2
	ldr r2, _021F2690 ; =ov01_022069F0
	ldr r2, [r2, r3]
	blx r2
_021F2656:
	add r5, r0, #0
	cmp r5, #2
	beq _021F2634
	cmp r5, #1
	bne _021F2686
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #0xc]
	bl FollowMon_GetMapObject
	mov r1, #1
	bl sub_02069DC8
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov01_0220609C
	add r0, r4, #0
	bl ov01_021F30F4
_021F2686:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F268C: .word ov01_022069D0
_021F2690: .word ov01_022069F0
	thumb_func_end ov01_021F2628

