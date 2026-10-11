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
	.public ScrCmd_808

	.text

	.text
	thumb_func_start ScrCmd_808
ScrCmd_808: ; 0x022053EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl FieldSystem_VarGet
	ldr r6, _02205420 ; =FS_OVERLAY_ID(OVY_25)
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl HandleLoadOverlay
	add r5, #0x80
	ldr r0, [r5]
	add r1, r4, #0
	bl TrainerHouse_StartBattle
	add r0, r6, #0
	bl UnloadOverlayByID
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02205420: .word FS_OVERLAY_ID(OVY_25)
	thumb_func_end ScrCmd_808

