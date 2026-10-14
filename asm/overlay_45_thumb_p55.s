#include "config.h"
	.include "macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222A844
	.extern ov45_0222A9A0
	.extern ov45_0222A9CC
	.extern ov45_0222AA10
	.extern ov45_0222AA5C
	.extern ov45_0222B28C

	.text

	.text
	thumb_func_start ov45_0222A844
ov45_0222A844: ; 0x0222A844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, #8
	mov r1, #8
	add r7, r2, #0
	bl ov45_0222B28C
	mov r6, #0
	cmp r0, #1
	bne _0222A8A0
	add r1, r5, #0
	add r0, r4, #0
	add r1, #8
	bl Save_Profile_PlayerName_Set
	mov r0, #0x20
	add r1, r7, #0
	bl String_New
	str r0, [sp]
	mov r0, #0x20
	add r1, r7, #0
	bl String_New
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl PlayerName_FlatToString
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r6, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _0222A892
	mov r6, #1
_0222A892:
	ldr r0, [sp]
	bl String_Delete
	ldr r0, [sp, #4]
	bl String_Delete
	b _0222A8A2
_0222A8A0:
	mov r6, #1
_0222A8A2:
	cmp r6, #0
	beq _0222A8D0
	ldr r2, _0222A91C ; =0x00000309
	mov r0, #1
	mov r1, #0x1b
	add r3, r7, #0
	bl NewMsgDataFromNarc
	mov r1, #0x40
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl PlayerName_StringToFlat
	add r0, r7, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
_0222A8D0:
	add r0, r5, #0
	bl ov45_0222A9A0
	add r1, r0, #0
	add r0, r4, #0
	bl PlayerProfile_SetTrainerID
	add r0, r5, #0
	bl ov45_0222A9CC
	add r1, r0, #0
	add r0, r4, #0
	bl PlayerProfile_SetTrainerGender
	add r0, r5, #0
	bl ov45_0222AA5C
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl PlayerProfile_SetAvatar
	add r0, r5, #0
	bl ov45_0222AA10
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl PlayerProfile_SetLanguage
	add r0, r4, #0
	bl PlayerProfile_SetGameClearFlag
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A91C: .word 0x00000309
	thumb_func_end ov45_0222A844

