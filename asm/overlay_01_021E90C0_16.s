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
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public ov01_021E9C40
	.public ov01_021E9EEC
	.public ov01_021E9F78
	.public ov01_021E9FF8
	.extern GetDoorSE
	.extern ov01_021E95CC
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

	thumb_func_start ov01_021E9EEC
ov01_021E9EEC: ; 0x021E9EEC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r5, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _021E9F0C
	cmp r0, #1
	beq _021E9F48
	b _021E9F5C
_021E9F0C:
	ldr r0, [r4, #0x40]
	bl PlayerAvatar_GetMapObject
	mov r1, #1
	bl MapObject_SetVisible
	mov r0, #0
	str r0, [r5, #4]
	strb r0, [r5, #1]
	ldr r0, _021E9F70 ; =SEQ_SE_DP_KAIDAN2
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021E9F74 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r5, #4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021E9F5C
_021E9F48:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9F5C
	add r0, r5, #0
	bl Heap_Free
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E9F5C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E9F6A
	ldr r0, [r4, #0x24]
	add r1, r5, #1
	bl ov01_021E95CC
_021E9F6A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E9F70: .word SEQ_SE_DP_KAIDAN2
_021E9F74: .word 0x00007FFF
	thumb_func_end ov01_021E9EEC

	thumb_func_start ov01_021E9F78
ov01_021E9F78: ; 0x021E9F78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl TaskManager_GetFieldSystem
	add r6, r0, #0
	add r0, r5, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021E9F98
	cmp r0, #1
	beq _021E9FCA
	b _021E9FDE
_021E9F98:
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #1]
	ldr r0, _021E9FF4 ; =SEQ_SE_DP_KAIDAN2
	bl PlaySE
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0x10
	add r3, r1, #0
	bl NewFieldFadeEnvironment
	mov r0, #1
	str r0, [r4, #4]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021E9FDE
_021E9FCA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9FDE
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E9FDE:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E9FEC
	ldr r0, [r6, #0x24]
	add r1, r4, #1
	bl ov01_021E95CC
_021E9FEC:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E9FF4: .word SEQ_SE_DP_KAIDAN2
	thumb_func_end ov01_021E9F78

	thumb_func_start ov01_021E9FF8
ov01_021E9FF8: ; 0x021E9FF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	bl TaskManager_GetFieldSystem
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhi _021EA110
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA01E: ; jump table
	.short _021EA026 - _021EA01E - 2 ; case 0
	.short _021EA0B4 - _021EA01E - 2 ; case 1
	.short _021EA0D2 - _021EA01E - 2 ; case 2
	.short _021EA0F0 - _021EA01E - 2 ; case 3
_021EA026:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetFacingDirection
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #1
	bne _021EA048
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl MapObject_SetVisible
	mov r0, #1
	b _021EA052
_021EA048:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl MapObject_SetVisible
	mov r0, #3
_021EA052:
	strb r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	strb r0, [r4, #1]
	ldr r0, [r5, #0x24]
	bl Camera_GetPerspectiveAngle
	strh r0, [r4, #2]
	ldr r0, _021EA124 ; =0x0000FFA0
	ldr r1, [r5, #0x24]
	bl Camera_AdjustPerspectiveAngle
	cmp r7, #3
	bhi _021EA092
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EA07A: ; jump table
	.short _021EA082 - _021EA07A - 2 ; case 0
	.short _021EA086 - _021EA07A - 2 ; case 1
	.short _021EA08A - _021EA07A - 2 ; case 2
	.short _021EA08E - _021EA07A - 2 ; case 3
_021EA082:
	mov r6, #3
	b _021EA096
_021EA086:
	mov r6, #5
	b _021EA096
_021EA08A:
	mov r6, #7
	b _021EA096
_021EA08E:
	mov r6, #0x27
	b _021EA096
_021EA092:
	bl GF_AssertFail
_021EA096:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r6, #0
	bl NewFieldFadeEnvironment
	mov r0, #1
	str r0, [r4, #4]
	b _021EA110
_021EA0B4:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	mov r1, #0
	bl MapObject_SetVisible
	add r0, r6, #0
	mov r1, #0xd
	bl MapObject_SetHeldMovement
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA110
_021EA0D2:
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021EA110
	add r0, r6, #0
	bl MapObject_ClearHeldMovementIfActive
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _021EA110
_021EA0F0:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EA110
	ldr r0, [r5, #0x24]
	bl Camera_GetPerspectiveAngle
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021EA110
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EA110:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EA11E
	ldr r0, [r5, #0x24]
	add r1, r4, #1
	bl ov01_021E9610
_021EA11E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA124: .word 0x0000FFA0
	thumb_func_end ov01_021E9FF8

