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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EB968

	.text

	.text
	thumb_func_start ov01_021EB968
ov01_021EB968: ; 0x021EB968
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021EB9A4 ; =0x0000FFFF
	add r4, r2, #0
	cmp r1, r0
	beq _021EB9A0
	ldr r0, [r4]
	cmp r0, #0
	beq _021EB97E
	bl SpriteTransfer_DeleteCharTransferTask
_021EB97E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB988
	bl SpriteTransfer_DeletePlttTransferTask
_021EB988:
	mov r6, #0
_021EB98A:
	ldr r1, [r4]
	cmp r1, #0
	beq _021EB996
	ldr r0, [r5, #8]
	bl DestroySingle2DGfxResObj
_021EB996:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021EB98A
_021EB9A0:
	pop {r4, r5, r6, pc}
	nop
_021EB9A4: .word 0x0000FFFF
	thumb_func_end ov01_021EB968

