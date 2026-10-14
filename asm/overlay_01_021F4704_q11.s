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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F4B1C

	.text

	.text
	thumb_func_start ov01_021F4B1C
ov01_021F4B1C: ; 0x021F4B1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r7, r1, #0
	str r0, [sp, #0xc]
	add r4, r3, #0
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	str r2, [sp, #8]
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #1
	blo _021F4B56
	cmp r6, #3
	bhi _021F4B56
	cmp r4, #1
	blo _021F4B56
	cmp r4, #2
	bls _021F4B70
_021F4B56:
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [sp, #8]
	ldr r2, _021F4BE4 ; =0x00000868
	ldr r0, [r5, r0]
	add r5, #0xf4
	ldr r1, [r1, #0xc]
	ldr r2, [r7, r2]
	ldr r3, [r5]
	bl MapPropManager_LoadFromNARC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021F4B70:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Save_SafariZone_Get
	str r0, [sp, #0x14]
	bl sub_0202F620
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl SafariZone_GetAreaSet
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F4BA6
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Save_PlayerData_GetProfile
	bl PlayerProfile_GetTrainerGender
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _021F4BAC
_021F4BA6:
	ldr r0, [sp, #0x14]
	bl SafariZone_GetLinkLeaderGender
_021F4BAC:
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #1
	lsl r0, r0, #8
	sub r4, r4, #1
	ldr r0, [r5, r0]
	add r5, #0xf4
	sub r3, r6, #1
	lsl r3, r3, #0x10
	ldr r1, _021F4BE4 ; =0x00000868
	lsl r4, r4, #0x10
	ldr r2, [r5]
	lsr r5, r4, #0x10
	lsl r4, r5, #1
	lsr r3, r3, #0x10
	add r4, r5, r4
	add r4, r3, r4
	mov r3, #0x7a
	add r5, r4, #0
	mul r5, r3
	ldr r3, [sp, #0x10]
	ldr r1, [r7, r1]
	add r3, r3, r5
	bl MapPropManager_LoadFromSafariZone
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F4BE4: .word 0x00000868
	thumb_func_end ov01_021F4B1C

