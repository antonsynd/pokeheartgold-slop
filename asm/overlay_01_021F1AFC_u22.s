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
	.public CallFieldTask_Surf
	.public Field_PlayerCanSurfOnTile
	.public ov01_021F202C
	.public ov01_021F2118
	.extern ov01_021F3040
	.extern ov01_021F3054
	.extern ov01_021F3068
	.extern ov01_021F3084
	.extern ov01_021F30D0
	.extern ov01_021F30F4
	.extern ov01_021F3100

	.text

	.text
	thumb_func_start ov01_021F202C
ov01_021F202C: ; 0x021F202C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x1c]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x20]
	bl PlayerAvatar_GetMapObject
	add r2, r4, #0
	str r0, [r4, #0x24]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021F2064 ; =ov01_021F2118
	add r2, r4, #0
	bl TaskManager_Call
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2064: .word ov01_021F2118
	thumb_func_end ov01_021F202C

	thumb_func_start CallFieldTask_Surf
CallFieldTask_Surf: ; 0x021F2068
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
	bhi _021F2098
	mov r0, #1
	str r0, [sp]
	b _021F20B0
_021F2098:
	add r0, r4, #0
	bl ov01_02206268
	cmp r0, #0
	beq _021F20B0
	add r0, r4, #0
	bl ov01_022062CC
	cmp r6, r0
	bne _021F20B0
	mov r0, #0
	str r0, [sp]
_021F20B0:
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ov01_021F202C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end CallFieldTask_Surf

	thumb_func_start Field_PlayerCanSurfOnTile
Field_PlayerCanSurfOnTile: ; 0x021F20C0
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsSurfableWater
	cmp r0, #1
	bne _021F2112
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205BA30
	cmp r0, #1
	beq _021F20F0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205BA24
	cmp r0, #1
	bne _021F20FE
_021F20F0:
	add r0, r6, #0
	bl MapObject_CheckFlag28
	cmp r0, #1
	bne _021F20FE
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F20FE:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B78C
	cmp r0, #1
	bne _021F210E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F210E:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F2112:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end Field_PlayerCanSurfOnTile

	thumb_func_start ov01_021F2118
ov01_021F2118: ; 0x021F2118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #9
	bhi _021F221C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F2134: ; jump table
	.short _021F2148 - _021F2134 - 2 ; case 0
	.short _021F217C - _021F2134 - 2 ; case 1
	.short _021F2192 - _021F2134 - 2 ; case 2
	.short _021F21D2 - _021F2134 - 2 ; case 3
	.short _021F21FC - _021F2134 - 2 ; case 4
	.short _021F2210 - _021F2134 - 2 ; case 5
	.short _021F222A - _021F2134 - 2 ; case 6
	.short _021F2274 - _021F2134 - 2 ; case 7
	.short _021F22A0 - _021F2134 - 2 ; case 8
	.short _021F22C2 - _021F2134 - 2 ; case 9
_021F2148:
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0xc]
	bl Save_VarsFlags_Get
	bl CheckFlag99A
	cmp r0, #0
	bne _021F2172
	bl SndRadio_GetSeqNo
	cmp r0, #0
	bne _021F2172
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FieldBGM_SetOverride
	ldr r0, [r4, #0x1c]
	ldr r1, _021F2328 ; =0x000003F6
	mov r2, #1
	bl FieldBGM_TryFadeOut
_021F2172:
	ldr r0, [r4]
	add r0, r0, #1
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F217C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _021F221C
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F2192:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	ldr r0, [r4, #0x1c]
	bne _021F21A8
	add r1, r4, #0
	add r1, #0xc
	bl ov01_021F3054
	mov r0, #5
	str r0, [r4]
	b _021F2324
_021F21A8:
	mov r1, #0xb
	bl ov02_02250780
	cmp r0, #0
	beq _021F21C4
	mov r0, #0x42
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl FieldSystem_UnkSub108_AddMonMood
	mov r1, #2
	b _021F21C6
_021F21C4:
	mov r1, #1
_021F21C6:
	ldr r0, [r4, #0x1c]
	bl ov02_022507B4
	mov r0, #3
	str r0, [r4]
	b _021F2324
_021F21D2:
	ldr r0, [r4, #0x14]
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r5, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl PlayCry
	mov r0, #4
	str r0, [r4]
	b _021F2324
_021F21FC:
	bl IsCryFinished
	cmp r0, #0
	bne _021F221C
	add r0, r5, #0
	bl ov01_02205EE0
	mov r0, #6
	str r0, [r4]
	b _021F2324
_021F2210:
	add r0, r4, #0
	add r0, #0xc
	bl ov01_021F3068
	cmp r0, #1
	beq _021F221E
_021F221C:
	b _021F2324
_021F221E:
	ldr r0, [r4, #0x1c]
	bl ov01_02205D68
	mov r0, #6
	str r0, [r4]
	b _021F2324
_021F222A:
	ldr r0, [r4, #0x20]
	bl PlayerAvatar_GetXCoord
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl GetDeltaXByFacingDirection
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl PlayerAvatar_GetZCoord
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl GetDeltaYByFacingDirection
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r3, [r4, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl ov01_021FE7DC
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	bl PlayerAvatar_SetUnk34
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl PlayerAvatar_SetState
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F2274:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _021F2324
	ldr r0, [r4, #0x20]
	bl PlayerAvatar_GetGender
	add r1, r0, #0
	mov r0, #0
	bl PlayerAvatar_GetSpriteByStateAndGender
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F3084
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F22A0:
	ldr r0, [r4, #0x24]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021F2324
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_SetHeldMovement
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2324
_021F22C2:
	ldr r0, [r4, #0x24]
	bl MapObject_IsMovementPaused
	cmp r0, #0
	beq _021F2324
	ldr r0, [r4, #0x24]
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov01_021FE9F4
	ldr r0, [r4, #0x20]
	bl PlayerAvatar_GetGender
	add r1, r0, #0
	mov r0, #2
	bl PlayerAvatar_GetSpriteByStateAndGender
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_021F3084
	ldr r0, [r4, #0x1c]
	bl FollowMon_IsActive
	cmp r0, #0
	beq _021F2312
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	ldr r0, [r4, #0x1c]
	bl FollowMon_GetMapObject
	mov r1, #0x38
	bl sub_0205FC94
_021F2312:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FieldSystem_ProcessSoundplate
	add r0, r4, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F2324:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2328: .word 0x000003F6
	thumb_func_end ov01_021F2118

