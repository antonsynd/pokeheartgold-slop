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
	.public ov01_021E9C40
	.extern GetDoorSE
	.extern ov01_021E9610

	.text

	.text
	thumb_func_start ov01_021E9C40
ov01_021E9C40: ; 0x021E9C40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r6, r0, #0
	ldr r0, [r6]
	cmp r0, #8
	bls _021E9C5C
	b _021E9ECC
_021E9C5C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9C68: ; jump table
	.short _021E9C7A - _021E9C68 - 2 ; case 0
	.short _021E9DAE - _021E9C68 - 2 ; case 1
	.short _021E9DCC - _021E9C68 - 2 ; case 2
	.short _021E9DEA - _021E9C68 - 2 ; case 3
	.short _021E9E04 - _021E9C68 - 2 ; case 4
	.short _021E9E28 - _021E9C68 - 2 ; case 5
	.short _021E9E46 - _021E9C68 - 2 ; case 6
	.short _021E9E58 - _021E9C68 - 2 ; case 7
	.short _021E9E9C - _021E9C68 - 2 ; case 8
_021E9C7A:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [r6, #0x10]
	strb r0, [r6, #0xd]
	ldr r0, [r4, #0x24]
	bl Camera_GetPerspectiveAngle
	strh r0, [r6, #0xe]
	ldr r0, _021E9EE4 ; =0x0000FFA0
	ldr r1, [r4, #0x24]
	bl Camera_AdjustPerspectiveAngle
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r3, _021E9EE8 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetFacingDirection
	cmp r0, #1
	bne _021E9D88
	mov r1, #1
	strb r1, [r6, #0xc]
	mov r2, #3
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #0x24]
	str r1, [sp, #4]
	add r0, sp, #0x4c
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	ldr r3, [sp, #0x24]
	sub r2, r2, #4
	bl sub_02054A60
	ldr r0, [r4, #0x34]
	bl ov01_021FB904
	str r0, [sp, #0x1c]
	mov r0, #0
	mov r1, #4
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	add r3, sp, #0x4c
	bl sub_02054D10
	str r0, [sp, #0x18]
	mov r7, #0
	add r5, r0, #0
_021E9CF8:
	ldr r1, [r5]
	cmp r1, #0
	beq _021E9D2A
	ldr r0, [sp, #0x1c]
	add r2, sp, #0x34
	bl NARC_ReadWholeMember
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021E9D2A
	ldr r1, [sp, #0x18]
	lsl r5, r7, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	add r2, sp, #0x4c
	add r3, sp, #0x30
	bl sub_02054AE4
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r5]
	str r0, [sp, #0x20]
	b _021E9D32
_021E9D2A:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021E9CF8
_021E9D32:
	ldr r0, [sp, #0x18]
	bl Heap_Free
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021E9D88
	ldr r0, [r4, #0x54]
	ldr r1, [sp, #0x20]
	bl MapPropAnimationManager_GetPropAnimationCount
	add r7, r0, #0
	bne _021E9D50
	add sp, #0x5c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E9D50:
	ldr r0, [r4, #0x34]
	bl ov01_021FB9E0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	bl MapProp_GetRenderSurface
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	bl MapProp_GetResModel
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #1
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	ldr r3, [sp, #0x20]
	bl MapPropOneShotAnimationManager_LoadPropAnimations
	mov r0, #4
	str r0, [r6]
	b _021E9ECC
_021E9D88:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetFacingDirection
	cmp r0, #1
	bne _021E9DA0
	ldr r0, [sp, #0x28]
	mov r1, #1
	bl MapObject_SetVisible
	mov r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DA0:
	ldr r0, [sp, #0x28]
	mov r1, #0
	bl MapObject_SetVisible
	mov r0, #3
	str r0, [r6]
	b _021E9ECC
_021E9DAE:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	mov r1, #0
	bl MapObject_SetVisible
	add r0, r5, #0
	mov r1, #0xd
	bl MapObject_SetHeldMovement
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DCC:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E9ECC
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9DEA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x24]
	bl Camera_GetPerspectiveAngle
	ldrh r1, [r6, #0xe]
	cmp r1, r0
	bne _021E9ECC
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9E04:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_GetAnimationMapPropModelID
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl GetDoorSE
	add r3, r0, #0
	ldr r0, [r4, #0x58]
	mov r1, #1
	mov r2, #0
	bl MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
	mov r0, #5
	str r0, [r6]
	b _021E9ECC
_021E9E28:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_IsAnimationLoopFinished
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	mov r1, #0
	bl MapObject_SetVisible
	mov r0, #6
	str r0, [r6]
	b _021E9ECC
_021E9E46:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	mov r1, #0xd
	bl MapObject_SetHeldMovement
	mov r0, #7
	str r0, [r6]
	b _021E9ECC
_021E9E58:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E9ECC
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	add r0, r4, #0
	mov r1, #1
	bl ov01_02205790
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_GetAnimationMapPropModelID
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl GetDoorSE
	add r3, r0, #0
	mov r1, #1
	ldr r0, [r4, #0x58]
	add r2, r1, #0
	bl MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9ECC
_021E9E9C:
	ldr r0, [r4, #0x58]
	mov r1, #1
	bl MapPropOneShotAnimationManager_IsAnimationLoopFinished
	cmp r0, #0
	beq _021E9ECC
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9ECC
	ldr r0, [r4, #0x24]
	bl Camera_GetPerspectiveAngle
	ldrh r1, [r6, #0xe]
	cmp r1, r0
	bne _021E9ECC
	ldr r0, [r4, #0x54]
	ldr r1, [r4, #0x58]
	mov r2, #1
	bl MapPropOneShotAnimationManager_UnloadAnimation
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9ECC:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021E9EDC
	add r6, #0xd
	ldr r0, [r4, #0x24]
	add r1, r6, #0
	bl ov01_021E9610
_021E9EDC:
	mov r0, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E9EE4: .word 0x0000FFA0
_021E9EE8: .word 0x00007FFF
	thumb_func_end ov01_021E9C40

