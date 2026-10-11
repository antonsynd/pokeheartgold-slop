#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_0205CB48.inc"
	.include "global.inc"
	.public sub_0205D2D0
	.extern sub_0205DA1C

	.text

	.text
	thumb_func_start sub_0205D2D0
sub_0205D2D0: ; 0x0205D2D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl PlayerAvatar_GetMapObject
	add r4, r0, #0
	add r0, r6, #0
	mov r5, #0x10
	bl PlayerAvatar_GetUnk24
	cmp r0, #1
	beq _0205D2F2
	cmp r0, #2
	beq _0205D2F6
	cmp r0, #3
	beq _0205D2FA
	b _0205D2FC
_0205D2F2:
	mov r5, #0x50
	b _0205D2FC
_0205D2F6:
	mov r5, #0x14
	b _0205D2FC
_0205D2FA:
	mov r5, #0x14
_0205D2FC:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0206234C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0205DA1C
	add r0, r4, #0
	bl MapObject_GetFieldSystem
	add r5, r0, #0
	bl FollowMon_IsActive
	cmp r0, #0
	beq _0205D33C
	add r0, r4, #0
	bl MapObject_GetPreviousXCoord
	add r6, r0, #0
	add r0, r4, #0
	bl MapObject_GetPreviousZCoord
	add r5, #0xe4
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r3, r5, #0
	bl ov01_02205990
_0205D33C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0205D2D0

