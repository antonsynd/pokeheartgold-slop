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
	.public CallFieldTask_Whirlpool
	.public ov01_021F2DD0
	.extern ov01_021F2D68
	.extern ov01_021F3040
	.extern ov01_021F30F4
	.extern ov01_021F3100
	.extern ov01_02206994

	.text

	.text
	thumb_func_start CallFieldTask_Whirlpool
CallFieldTask_Whirlpool: ; 0x021F2DA4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r1, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r1, r5, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov01_021F2D68
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end CallFieldTask_Whirlpool

	thumb_func_start ov01_021F2DD0
ov01_021F2DD0: ; 0x021F2DD0
	push {r4, r5, r6, lr}
	bl TaskManager_GetEnvironment
	ldr r6, _021F2E04 ; =ov01_02206994
	add r5, r0, #0
_021F2DDA:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
	add r4, r0, #0
	cmp r4, #2
	beq _021F2DDA
	cmp r4, #1
	bne _021F2E00
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	add r0, r5, #0
	bl ov01_021F30F4
_021F2E00:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2E04: .word ov01_02206994
	thumb_func_end ov01_021F2DD0

