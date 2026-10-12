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
	.public ov01_021F1824

	.public ov01_02208C5C

	.text

	.text
	thumb_func_start ov01_021F1824
ov01_021F1824: ; 0x021F1824
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r5, [r6, #4]
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [sp]
	ldr r6, [r6, #0x1c]
	add r7, r3, #0
	str r1, [sp, #0x1c]
	mov r4, #0
	add r2, r5, #0
	add r3, r6, #0
_021F183C:
	ldr r1, [r3]
	cmp r1, r0
	bne _021F1846
	ldr r0, [r3, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021F1846:
	add r3, #8
	sub r2, r2, #1
	bne _021F183C
_021F184C:
	ldr r1, [r6]
	cmp r1, #0xf
	bne _021F1858
	str r0, [r6]
	ldr r4, [r6, #4]
	b _021F185E
_021F1858:
	add r6, #8
	sub r5, r5, #1
	bne _021F184C
_021F185E:
	cmp r4, #0
	bne _021F1866
	bl GF_AssertFail
_021F1866:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4]
	add r2, #0xc
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021F18A0
	bl GF3dGfxRawResObj_GetTexKey
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	bl GF3dGfxRawResObj_GetTex4x4Key
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	bl GF3dGfxRawResObj_GetPlttKey
	str r0, [r4, #0x24]
_021F18A0:
	ldr r0, [sp, #0x20]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1824

