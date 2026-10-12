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
	.public ov01_021F1D94
	.extern ov01_021F1DF4
	.extern ov01_021F2538

	.text

	.text
	thumb_func_start ov01_021F1D94
ov01_021F1D94: ; 0x021F1D94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r7, r3, #0
	bl PlayerAvatar_CheckForcedMovement
	cmp r0, #1
	bne _021F1DBE
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov01_021F2538
	cmp r0, #1
	bne _021F1DBA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1DBA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DBE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205CBE4
	cmp r0, #0
	bne _021F1DCE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DCE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021F1DDA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1DDA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov01_021F1DF4
	cmp r0, #1
	bne _021F1DEE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F1DEE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1D94

