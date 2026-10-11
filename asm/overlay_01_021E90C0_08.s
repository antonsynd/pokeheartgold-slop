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
	.public ov01_021E971C
	.public ov01_021E98F0
	.extern ov01_02206408
	.extern ov01_02206418

	.text

	.text
	thumb_func_start ov01_021E971C
ov01_021E971C: ; 0x021E971C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #5
	bls _021E972E
	b _021E98E0
_021E972E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E973A: ; jump table
	.short _021E9746 - _021E973A - 2 ; case 0
	.short _021E9806 - _021E973A - 2 ; case 1
	.short _021E9846 - _021E973A - 2 ; case 2
	.short _021E9866 - _021E973A - 2 ; case 3
	.short _021E988E - _021E973A - 2 ; case 4
	.short _021E98B4 - _021E973A - 2 ; case 5
_021E9746:
	ldr r3, _021E98E8 ; =ov01_02206408
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021E9770
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r2, r2, #2
	mov r3, #0
	bl sub_02054A60
	b _021E9788
_021E9770:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
_021E9788:
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl sub_02054B74
	cmp r0, #0
	beq _021E97D6
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl MapProp_GetRenderSurface
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl MapProp_GetResModel
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl MapPropOneShotAnimationManager_LoadPropAnimations
	b _021E97E0
_021E97D6:
	bl GF_AssertFail
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E97E0:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E97FA
	add r0, r5, #0
	mov r1, #0x49
	bl MapObject_SetHeldMovement
	b _021E97FE
_021E97FA:
	bl GF_AssertFail
_021E97FE:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9806:
	mov r0, #1
	bl FieldMap_FadeScreen
	ldr r0, [r6, #0x58]
	ldr r3, _021E98EC ; =SEQ_SE_DP_ESUKA
	mov r1, #2
	mov r2, #0
	bl MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E983A
	cmp r5, #3
	bne _021E9830
	mov r1, #0xb
	b _021E9832
_021E9830:
	mov r1, #0xa
_021E9832:
	add r0, r6, #0
	bl MapObject_SetHeldMovement
	b _021E983E
_021E983A:
	bl GF_AssertFail
_021E983E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9846:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E98E0
	add r0, r5, #0
	mov r1, #0x4a
	bl MapObject_SetHeldMovement
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E9866:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E98E0
	cmp r5, #3
	bne _021E987E
	mov r1, #0xb
	b _021E9880
_021E987E:
	mov r1, #0xa
_021E9880:
	add r0, r6, #0
	bl MapObject_SetHeldMovement
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E988E:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r7, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E98E0
	add r0, r7, #0
	bl MapObject_ClearHeldMovementIfActive
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_02205790
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E98E0
_021E98B4:
	ldr r0, [r6, #0x58]
	mov r1, #2
	bl MapPropOneShotAnimationManager_IsAnimationLoopFinished
	cmp r0, #0
	beq _021E98E0
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E98E0
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	mov r2, #2
	bl MapPropOneShotAnimationManager_UnloadAnimation
	ldr r0, _021E98EC ; =SEQ_SE_DP_ESUKA
	mov r1, #0
	bl StopSE
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E98E0:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E98E8: .word ov01_02206408
_021E98EC: .word SEQ_SE_DP_ESUKA
	thumb_func_end ov01_021E971C

	thumb_func_start ov01_021E98F0
ov01_021E98F0: ; 0x021E98F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	add r5, r2, #0
	cmp r0, #4
	bls _021E9902
	b _021E9AAC
_021E9902:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E990E: ; jump table
	.short _021E9918 - _021E990E - 2 ; case 0
	.short _021E99DA - _021E990E - 2 ; case 1
	.short _021E9A3C - _021E990E - 2 ; case 2
	.short _021E9A62 - _021E990E - 2 ; case 3
	.short _021E9A80 - _021E990E - 2 ; case 4
_021E9918:
	ldr r3, _021E9AB4 ; =ov01_02206418
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r5, #2
	bne _021E9942
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x34
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r2, r2, #2
	mov r3, #0
	bl sub_02054A60
	b _021E995A
_021E9942:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x34
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r3, r2, #0
	bl sub_02054A60
_021E995A:
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x24
	mov r2, #4
	add r3, sp, #0x34
	bl sub_02054B74
	cmp r0, #0
	beq _021E99AA
	ldr r0, [r6, #0x34]
	bl ov01_021FB9E0
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl MapProp_GetRenderSurface
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	bl MapProp_GetResModel
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	ldr r3, [sp, #0x1c]
	mov r2, #2
	bl MapPropOneShotAnimationManager_LoadPropAnimations
	b _021E99B4
_021E99AA:
	bl GF_AssertFail
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E99B4:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E99CE
	add r0, r5, #0
	mov r1, #0x49
	bl MapObject_SetHeldMovement
	b _021E99D2
_021E99CE:
	bl GF_AssertFail
_021E99D2:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E99DA:
	ldr r0, [r6, #0x58]
	ldr r3, _021E9AB8 ; =SEQ_SE_DP_ESUKA
	mov r1, #2
	mov r2, #0
	bl MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r7, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E9A30
	cmp r5, #2
	bne _021E99FE
	mov r5, #0xa
	b _021E9A00
_021E99FE:
	mov r5, #0xb
_021E9A00:
	add r0, r7, #0
	add r1, r5, #0
	bl MapObject_SetHeldMovement
	add r0, r6, #0
	bl FollowMon_IsActive
	cmp r0, #0
	beq _021E9A34
	add r0, r7, #0
	bl MapObject_GetPreviousXCoord
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl MapObject_GetPreviousZCoord
	add r6, #0xe4
	add r2, r0, #0
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	add r3, r6, #0
	bl ov01_02205990
	b _021E9A34
_021E9A30:
	bl GF_AssertFail
_021E9A34:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A3C:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _021E9AAC
	add r0, r5, #0
	mov r1, #0x4a
	bl MapObject_SetHeldMovement
	mov r0, #0
	bl FieldMap_FadeScreen
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A62:
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	add r5, r0, #0
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _021E9AAC
	add r0, r5, #0
	bl MapObject_ClearHeldMovementIfActive
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E9AAC
_021E9A80:
	ldr r0, [r6, #0x58]
	mov r1, #2
	bl MapPropOneShotAnimationManager_IsAnimationLoopFinished
	cmp r0, #0
	beq _021E9AAC
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9AAC
	ldr r0, [r6, #0x54]
	ldr r1, [r6, #0x58]
	mov r2, #2
	bl MapPropOneShotAnimationManager_UnloadAnimation
	ldr r0, _021E9AB8 ; =SEQ_SE_DP_ESUKA
	mov r1, #0
	bl StopSE
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E9AAC:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021E9AB4: .word ov01_02206418
_021E9AB8: .word SEQ_SE_DP_ESUKA
	thumb_func_end ov01_021E98F0

