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
	.public ov01_021F1EA4
	.public ov01_021F1ECC
	.public ov01_021F1F8C
	.extern ov01_021F2004
	.extern ov01_021F30D0
	.extern ov01_021F30F4
	.extern ov01_02206A14

	.text

	.text
	thumb_func_start ov01_021F1EA4
ov01_021F1EA4: ; 0x021F1EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021F30D0
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r7, [r2, #0x10]
	ldr r1, _021F1EC8 ; =ov01_021F1ECC
	add r0, r4, #0
	str r6, [r2, #0xc]
	bl FieldSystem_CreateTask
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1EC8: .word ov01_021F1ECC
	thumb_func_end ov01_021F1EA4

	thumb_func_start ov01_021F1ECC
ov01_021F1ECC: ; 0x021F1ECC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0x10]
	cmp r0, #0
	beq _021F1EF0
	cmp r0, #1
	beq _021F1F3C
	cmp r0, #2
	beq _021F1F62
	b _021F1F82
_021F1EF0:
	add r0, r5, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #0
	beq _021F1F82
	add r0, r6, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #0
	bne _021F1F0E
	ldr r0, [r4, #0xc]
	bl sub_0205DE38
	cmp r0, #0
	beq _021F1F82
_021F1F0E:
	ldr r0, [r4, #4]
	mov r1, #8
	bl sub_0206234C
	add r1, r0, #0
	add r0, r5, #0
	bl MapObject_SetHeldMovement
	ldr r0, [r4, #4]
	mov r1, #0x20
	bl sub_0206234C
	add r1, r0, #0
	add r0, r6, #0
	bl MapObject_SetHeldMovement
	ldr r0, _021F1F88 ; =SEQ_SE_DP_UG_023
	bl PlaySE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F1F82
_021F1F3C:
	add r0, r5, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _021F1F82
	add r0, r6, #0
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _021F1F82
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	add r0, r6, #0
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021F1F62:
	ldr r6, [r4, #8]
	add r0, r4, #0
	bl ov01_021F30F4
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	cmp r0, #0xed
	bne _021F1F7E
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021F2004
	pop {r3, r4, r5, r6, r7, pc}
_021F1F7E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1F82:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1F88: .word SEQ_SE_DP_UG_023
	thumb_func_end ov01_021F1ECC

	thumb_func_start ov01_021F1F8C
ov01_021F1F8C: ; 0x021F1F8C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _021F2000 ; =ov01_02206A14
	add r7, r0, #0
	add r5, r1, #0
	mov r6, #0
_021F1F96:
	add r0, r5, #0
	bl MapObject_GetMapID
	ldrh r1, [r4]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl MapObject_GetID
	ldrh r1, [r4, #6]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl MapObject_GetXCoord
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl MapObject_GetZCoord
	ldrh r1, [r4, #4]
	cmp r1, r0
	bne _021F1FF4
	add r0, r5, #0
	bl MapObject_GetEventFlag
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl FieldSystem_FlagSet
	add r0, r5, #0
	bl MapObject_Delete
	mov r1, #0xa
	add r2, r6, #0
	mul r2, r1
	ldr r1, _021F2000 ; =ov01_02206A14
	add r0, r7, #0
	add r1, r1, r2
	ldrh r1, [r1, #8]
	bl FieldSystem_FlagClear
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1FF4:
	add r6, r6, #1
	add r4, #0xa
	cmp r6, #4
	blo _021F1F96
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2000: .word ov01_02206A14
	thumb_func_end ov01_021F1F8C

