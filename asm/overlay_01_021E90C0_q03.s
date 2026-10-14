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
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public ov01_021E90E4
	.extern GetDoorSE
	.extern ov01_021E95CC
	.extern ov01_021E9700
	.extern ov01_021EA1F4
	.extern ov01_02206428

	.text

	.text
	thumb_func_start ov01_021E90E4
ov01_021E90E4: ; 0x021E90E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #0x64
	bgt _021E9112
	blt _021E90F6
	b _021E9308
_021E90F6:
	cmp r0, #5
	bhi _021E9118
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E9106: ; jump table
	.short _021E911A - _021E9106 - 2 ; case 0
	.short _021E9218 - _021E9106 - 2 ; case 1
	.short _021E9256 - _021E9106 - 2 ; case 2
	.short _021E926A - _021E9106 - 2 ; case 3
	.short _021E92B0 - _021E9106 - 2 ; case 4
	.short _021E92F6 - _021E9106 - 2 ; case 5
_021E9112:
	cmp r0, #0x65
	bne _021E9118
	b _021E9336
_021E9118:
	b _021E934C
_021E911A:
	mov r0, #0
	str r0, [r4, #0x10]
	strb r0, [r4, #0xd]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x48
	str r0, [sp, #8]
	sub r2, r2, #2
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
	mov r0, #1
	strb r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x34]
	bl ov01_021FB904
	str r0, [sp, #0x1c]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	add r3, sp, #0x48
	bl sub_02054D10
	str r0, [sp, #0x18]
	mov r7, #0
	add r5, r0, #0
_021E915E:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9190
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x30
	bl NARC_ReadWholeMember
	add r0, sp, #0x2c
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9190
	ldr r1, [sp, #0x18]
	lsl r5, r7, #2
	ldr r1, [r1, r5]
	add r0, r6, #0
	add r2, sp, #0x48
	add r3, sp, #0x2c
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r5]
	str r0, [sp, #0x20]
	b _021E9198
_021E9190:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E915E
_021E9198:
	ldr r0, [sp, #0x18]
	bl Heap_Free
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E91F4
	ldr r0, [r6, #0x54]
	ldr r1, [sp, #0x20]
	bl MapPropAnimationManager_GetPropAnimationCount
	add r7, r0, #0
	bne _021E91B6
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E91B6:
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	bl MapProp_GetRenderSurface
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	bl MapProp_GetResModel
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x20]
	bl MapPropOneShotAnimationManager_LoadPropAnimations
	mov r1, #1
	ldr r0, [r6, #0x58]
	add r2, r1, #0
	bl ov01_021E90B0
	b _021E91FA
_021E91F4:
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E91FA:
	ldr r0, [sp, #0x20]
	bl ov01_021E9700
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #0x1e]
	ldr r0, _021E9368 ; =0x0000FFFF
	cmp r1, r0
	beq _021E9210
	mov r0, #0x64
	str r0, [r4]
	b _021E934C
_021E9210:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9218:
	ldr r0, [r6, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_GetAnimationMapPropModelID
	add r5, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021EA1F4
	cmp r0, #0
	bne _021E9238
	ldr r0, [r6, #0x24]
	bl Camera_ClearFixedTarget
	mov r0, #1
	str r0, [r4, #0x10]
_021E9238:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl GetDoorSE
	add r3, r0, #0
	ldr r0, [r6, #0x58]
	mov r1, #1
	mov r2, #0
	bl MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9256:
	ldr r0, [r6, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_IsAnimationLoopFinished
	cmp r0, #0
	beq _021E934C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E926A:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	mov r1, #0xc
	add r5, r0, #0
	bl MapObject_SetHeldMovement
	add r0, r6, #0
	bl FollowMon_IsActive
	cmp r0, #0
	beq _021E92A8
	add r0, r6, #0
	bl ov01_022057C4
	cmp r0, #0
	bne _021E92A8
	add r0, r5, #0
	bl MapObject_GetPreviousXCoord
	add r7, r0, #0
	add r0, r5, #0
	bl MapObject_GetPreviousZCoord
	add r3, r6, #0
	add r2, r0, #0
	mov r0, #0xc
	add r1, r7, #0
	add r3, #0xe4
	bl ov01_02205990
_021E92A8:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92B0:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E934C
	add r0, r6, #0
	bl FollowMon_IsActive
	cmp r0, #0
	beq _021E92EE
	add r0, r6, #0
	bl FollowMon_GetMapObject
	add r7, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E934C
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	add r0, r7, #0
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92EE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E92F6:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	mov r1, #1
	bl MapObject_SetVisible
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E9308:
	mov r0, #0x96
	ldr r1, _021E936C ; =0x00456000
	ldr r2, [r6, #0x24]
	lsl r0, r0, #0xc
	bl Camera_SetPerspectiveClippingPlane
	ldr r1, [r6, #0x24]
	mov r0, #4
	bl CreateCameraTranslationWrapper
	str r0, [r4, #0x18]
	ldrh r2, [r4, #0x1e]
	mov r1, #0x14
	ldr r3, _021E9370 ; =ov01_02206428
	mul r1, r2
	add r1, r3, r1
	mov r2, #0x18
	bl SetCameraTranslationPath
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E934C
_021E9336:
	ldr r0, [r4, #0x18]
	bl IsCameraTranslationFinished
	cmp r0, #0
	beq _021E934C
	ldr r0, [r4, #0x18]
	bl DeleteCameraTranslationWrapper
	mov r0, #1
	strh r0, [r4, #0x1c]
	str r0, [r4]
_021E934C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021E9362
	ldrh r0, [r4, #0x1c]
	cmp r0, #0
	bne _021E9362
	add r4, #0xd
	ldr r0, [r6, #0x24]
	add r1, r4, #0
	bl ov01_021E95CC
_021E9362:
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9368: .word 0x0000FFFF
_021E936C: .word 0x00456000
_021E9370: .word ov01_02206428
	thumb_func_end ov01_021E90E4

