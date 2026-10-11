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
	.public Field_PlayerAvatar_ApplyTransitionFlags
	.extern sPlayerAvatarBitUpdateFuncs

	.text

	.text
	thumb_func_start Field_PlayerAvatar_ApplyTransitionFlags
Field_PlayerAvatar_ApplyTransitionFlags: ; 0x021F1B04
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0
	bl PlayerAvatar_GetTransitionFlags
	ldr r5, _021F1B34 ; =sPlayerAvatarBitUpdateFuncs
	add r4, r0, #0
_021F1B12:
	mov r0, #1
	tst r0, r4
	beq _021F1B1E
	ldr r1, [r5]
	add r0, r7, #0
	blx r1
_021F1B1E:
	add r6, r6, #1
	lsr r4, r4, #1
	add r5, r5, #4
	cmp r6, #0xf
	blo _021F1B12
	add r0, r7, #0
	mov r1, #0
	bl PlayerAvatar_SetTransitionFlags
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1B34: .word sPlayerAvatarBitUpdateFuncs
	thumb_func_end Field_PlayerAvatar_ApplyTransitionFlags

