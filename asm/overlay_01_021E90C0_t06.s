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
	.public GetDoorSE

	.text

	.text
	thumb_func_start GetDoorSE
GetDoorSE: ; 0x021E9650
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r0, [r0, #0x34]
	add r5, r1, #0
	add r4, r2, #0
	bl ov01_021FB904
	add r1, r5, #0
	add r2, sp, #0
	bl NARC_ReadWholeMember
	cmp r4, #0
	add r0, sp, #0
	beq _021E96AA
	ldrb r0, [r0, #4]
	cmp r0, #4
	bhi _021E96A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E967E: ; jump table
	.short _021E96A0 - _021E967E - 2 ; case 0
	.short _021E9688 - _021E967E - 2 ; case 1
	.short _021E968E - _021E967E - 2 ; case 2
	.short _021E9694 - _021E967E - 2 ; case 3
	.short _021E969A - _021E967E - 2 ; case 4
_021E9688:
	add sp, #0x18
	ldr r0, _021E96E8 ; =SEQ_SE_DP_DOOR_OPEN
	pop {r3, r4, r5, pc}
_021E968E:
	add sp, #0x18
	ldr r0, _021E96EC ; =SEQ_SE_DP_DOOR10
	pop {r3, r4, r5, pc}
_021E9694:
	add sp, #0x18
	ldr r0, _021E96F0 ; =SEQ_SE_PL_DOOR_OPEN5
	pop {r3, r4, r5, pc}
_021E969A:
	add sp, #0x18
	ldr r0, _021E96F4 ; =SEQ_SE_GS_HIKIDO_OPEN
	pop {r3, r4, r5, pc}
_021E96A0:
	bl GF_AssertFail
	add sp, #0x18
	ldr r0, _021E96E8 ; =SEQ_SE_DP_DOOR_OPEN
	pop {r3, r4, r5, pc}
_021E96AA:
	ldrb r0, [r0, #4]
	cmp r0, #4
	bhi _021E96DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E96BC: ; jump table
	.short _021E96DE - _021E96BC - 2 ; case 0
	.short _021E96C6 - _021E96BC - 2 ; case 1
	.short _021E96CC - _021E96BC - 2 ; case 2
	.short _021E96D2 - _021E96BC - 2 ; case 3
	.short _021E96D8 - _021E96BC - 2 ; case 4
_021E96C6:
	add sp, #0x18
	ldr r0, _021E96F8 ; =SEQ_SE_DP_DOOR_CLOSE2
	pop {r3, r4, r5, pc}
_021E96CC:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E96D2:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E96D8:
	add sp, #0x18
	ldr r0, _021E96FC ; =SEQ_SE_GS_HIKIDO_CLOSE
	pop {r3, r4, r5, pc}
_021E96DE:
	bl GF_AssertFail
	ldr r0, _021E96F8 ; =SEQ_SE_DP_DOOR_CLOSE2
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E96E8: .word SEQ_SE_DP_DOOR_OPEN
_021E96EC: .word SEQ_SE_DP_DOOR10
_021E96F0: .word SEQ_SE_PL_DOOR_OPEN5
_021E96F4: .word SEQ_SE_GS_HIKIDO_OPEN
_021E96F8: .word SEQ_SE_DP_DOOR_CLOSE2
_021E96FC: .word SEQ_SE_GS_HIKIDO_CLOSE
	thumb_func_end GetDoorSE

