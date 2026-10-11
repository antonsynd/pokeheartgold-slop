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
	.public Field_PlayerMovementSavingSet
	.extern Field_PlayerAvatar_ApplyTransitionFlags
	.extern Field_PlayerAvatar_OrrTransitionFlags
	.extern ov01_021F3030

	.text

	.text
	thumb_func_start Field_PlayerMovementSavingSet
Field_PlayerMovementSavingSet: ; 0x021F2F70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x40]
	add r0, r6, #0
	bl PlayerAvatar_GetState
	add r4, r0, #0
	beq _021F2F88
	cmp r4, #3
	beq _021F2F88
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F2F88:
	add r0, r6, #0
	bl PlayerAvatar_GetMapObject
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	bl Heap_AllocAtEnd
	add r5, r0, #0
	mov r0, #0
	str r0, [r5]
	str r7, [r5, #8]
	str r6, [r5, #0xc]
	str r4, [r5, #4]
	cmp r4, #0
	bne _021F2FAC
	mov r4, #0x80
	b _021F2FBC
_021F2FAC:
	cmp r4, #3
	bne _021F2FB6
	mov r4, #1
	lsl r4, r4, #0xe
	b _021F2FBC
_021F2FB6:
	bl GF_AssertFail
	mov r4, #0x80
_021F2FBC:
	ldr r0, [sp]
	bl MapObject_UnpauseMovement
	add r0, r6, #0
	add r1, r4, #0
	bl Field_PlayerAvatar_OrrTransitionFlags
	add r0, r6, #0
	bl Field_PlayerAvatar_ApplyTransitionFlags
	ldr r0, _021F2FE8 ; =ov01_021F3030
	ldr r2, _021F2FEC ; =0x0000FFFF
	add r1, r5, #0
	bl SysTask_CreateOnMainQueue
	add r4, r0, #0
	bne _021F2FE2
	bl GF_AssertFail
_021F2FE2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2FE8: .word ov01_021F3030
_021F2FEC: .word 0x0000FFFF
	thumb_func_end Field_PlayerMovementSavingSet

