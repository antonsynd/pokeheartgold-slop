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
	.include "overlay_01_021F1348.inc"
	.include "global.inc"
	.public ov01_021F1AB8
	.public ov01_021F1AD4
	.extern ov01_021F14B4
	.extern ov01_021F1A48

	.public ov01_02208C5C

	.text

	.text
	thumb_func_start ov01_021F1AB8
ov01_021F1AB8: ; 0x021F1AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl ov01_021F14B4
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F1A48
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1AB8

	thumb_func_start ov01_021F1AD4
ov01_021F1AD4: ; 0x021F1AD4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x18]
	bl GF3dGfxRawResMan_GetObjById
	add r5, r0, #0
	ldr r4, _021F1AF8 ; =0x00000000
	bne _021F1AE8
	bl GF_AssertFail
_021F1AE8:
	cmp r5, #0
	beq _021F1AF4
	add r0, r5, #0
	bl GF3dGfxRawResObj_GetTex
	add r4, r0, #0
_021F1AF4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1AF8: .word 0x00000000
	thumb_func_end ov01_021F1AD4

