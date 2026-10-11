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
	.public ov01_021F2378
	.public ov01_021F23B8
	.extern ov01_021F3084
	.extern ov01_021F30D0
	.extern ov01_021F30F4

	.text

	.text
	thumb_func_start ov01_021F2378
ov01_021F2378: ; 0x021F2378
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r5, r1, #0
	add r7, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r6, [r4, #4]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl PlayerAvatar_GetMapObject
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl PlayerAvatar_GetUnk34
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _021F23A6
	bl GF_AssertFail
_021F23A6:
	ldr r1, _021F23B4 ; =ov01_021F23B8
	add r0, r5, #0
	add r2, r4, #0
	bl FieldSystem_CreateTask
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F23B4: .word ov01_021F23B8
	thumb_func_end ov01_021F2378

	thumb_func_start ov01_021F23B8
ov01_021F23B8: ; 0x021F23B8
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _021F23D0
	cmp r0, #1
	beq _021F2412
	cmp r0, #2
	beq _021F24B8
	b _021F24F0
_021F23D0:
	ldr r0, [r4, #0x10]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	beq _021F23DC
	b _021F24F0
_021F23DC:
	ldr r0, [r4, #0xc]
	bl PlayerAvatar_GetGender
	add r1, r0, #0
	mov r0, #0
	bl PlayerAvatar_GetSpriteByStateAndGender
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ov01_021F3084
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl MapObject_SetHeldMovement
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ov01_021FE9F4
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _021F24F0
_021F2412:
	ldr r0, [r4, #0x10]
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _021F24F0
	ldr r0, [r4, #0x10]
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r4, #0x14]
	bl ov01_021F1640
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl PlayerAvatar_SetUnk34
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl PlayerAvatar_SetState
	ldr r0, [r4, #8]
	mov r1, #0
	bl FieldSystem_ProcessSoundplate
	ldr r0, [r4, #8]
	bl FollowMon_IsActive
	cmp r0, #0
	beq _021F2476
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #8]
	bl FollowMon_GetMapObject
	mov r1, #1
	bl sub_02069DC8
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov01_0220609C
	ldr r0, [r4, #8]
	bl FollowMon_GetMapObject
	mov r1, #0x30
	bl sub_0205FC94
_021F2476:
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl Save_VarsFlags_Get
	bl CheckFlag99A
	cmp r0, #0
	bne _021F249A
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x20]
	ldr r1, [r1]
	bl FieldBGM_GetForMapHeader
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #4
	bl FieldBGM_TryFadeOut
_021F249A:
	bl SndRadio_GetSeqNo
	cmp r0, #0
	beq _021F24AE
	mov r0, #0x28
	strh r0, [r4, #2]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _021F24F0
_021F24AE:
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24B8:
	bl SndRadio_GetSeqNo
	cmp r0, #0
	bne _021F24D2
	ldr r0, [r4, #8]
	mov r1, #1
	bl FieldSystem_ProcessSoundplate
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24D2:
	ldrh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _021F24F0
	ldr r0, [r4, #8]
	mov r1, #1
	bl FieldSystem_ProcessSoundplate
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, pc}
_021F24F0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov01_021F23B8

