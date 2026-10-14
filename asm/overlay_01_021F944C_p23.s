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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public ov01_021F9918
	.extern ov01_021FA470
	.extern ov01_021FA524

	.text

	.text
	thumb_func_start ov01_021F9918
ov01_021F9918: ; 0x021F9918
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xf0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r0]
	add r1, r4, #0
	bl GF3dGfxRawResMan_DoesNotHaveObjWithId
	cmp r0, #0
	bne _021F9932
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F9932:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA524
	cmp r0, #0
	beq _021F9942
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F9942:
	add r0, r4, #0
	bl GetMoveModelNoBySpriteId
	add r2, r0, #0
	bpl _021F9950
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F9950:
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ov01_021FA470
	cmp r0, #1
	bne _021F9962
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F9962:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021F9918

