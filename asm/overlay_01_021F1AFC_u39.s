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
	.public ov01_021F28B8
	.extern ov01_021F30D0

	.text

	.text
	thumb_func_start ov01_021F28B8
ov01_021F28B8: ; 0x021F28B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x54
	add r7, r1, #0
	add r5, r2, #0
	bl ov01_021F30D0
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x34]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x38]
	ldr r0, [r6, #0x40]
	bl PlayerAvatar_GetMapObject
	str r0, [r4, #0x3c]
	cmp r5, #0
	beq _021F28E8
	add r2, r4, #0
	add r2, #0x40
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
_021F28E8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F28B8

