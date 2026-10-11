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
	.include "overlay_01_022053EC.inc"
	.include "global.inc"
	.public ov01_022059AC

	.text

	.text
	thumb_func_start ov01_022059AC
ov01_022059AC: ; 0x022059AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r0, #0xf9
	ldrb r0, [r0]
	cmp r0, #0
	beq _02205A2A
	add r0, r5, #0
	add r0, #0xfa
	ldrb r0, [r0]
	cmp r0, #0
	bne _02205A02
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetXCoord
	add r4, r0, #0
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetZCoord
	add r6, r0, #0
	ldr r0, [r5, #0x40]
	bl PlayerAvatar_GetFacingDirection
	add r3, r0, #0
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	ldr r0, [r0]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [r5, #0x3c]
	bl FollowMon_InitMapObject
	add r1, r5, #0
	add r1, #0xfa
	add r0, r5, #0
	add r0, #0xe4
	ldrb r1, [r1]
	ldr r0, [r0]
	cmp r1, #1
	bne _02205A2A
	bl ov01_021F9048
	b _02205A2A
_02205A02:
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl FollowMon_GetSpecies
	ldr r1, [r5, #0x20]
	ldr r1, [r1]
	bl FollowMon_GetPermissionBySpeciesAndMap
	cmp r0, #0
	bne _02205A2A
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl MapObject_Remove
	add r0, r5, #0
	mov r1, #0
	add r0, #0xfa
	strb r1, [r0]
_02205A2A:
	mov r0, #0
	add r5, #0xf9
	strb r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_022059AC

