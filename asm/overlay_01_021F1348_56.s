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
	.public ov01_021F1A48
	.public ov01_021F1AB8
	.public ov01_021F1AD4
	.extern ov01_021F14B4

	.public ov01_02208C5C

	.text

	.text
	thumb_func_start ov01_021F1A48
ov01_021F1A48: ; 0x021F1A48
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r0, [r4]
	add r6, r1, #0
	add r5, r2, #0
	bl NNS_G3dGetTex
	cmp r0, #0
	beq _021F1A78
	bl GF3dRender_ResTexIsLoaded
	cmp r0, #0
	bne _021F1A78
	ldr r0, [r4]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r4]
	bl NNS_G3dResDefaultSetup
	cmp r0, #0
	bne _021F1A78
	bl GF_AssertFail
_021F1A78:
	ldr r0, [r4]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021F1AA2
	add r2, r0, #0
	add r2, #8
	beq _021F1A96
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021F1A96
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021F1A98
_021F1A96:
	mov r1, #0
_021F1A98:
	cmp r1, #0
	beq _021F1AA2
	ldr r1, [r1]
	add r0, r0, r1
	b _021F1AA4
_021F1AA2:
	mov r0, #0
_021F1AA4:
	str r0, [r5]
	cmp r5, #0
	bne _021F1AAE
	bl GF_AssertFail
_021F1AAE:
	ldr r1, [r5]
	add r0, r6, #0
	bl NNS_G3dRenderObjInit
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F1A48

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

