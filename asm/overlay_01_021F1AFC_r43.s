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
	.public ov01_021F29E4

	.text

	.text
	thumb_func_start ov01_021F29E4
ov01_021F29E4: ; 0x021F29E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl MapObject_GetXCoord
	add r4, r0, #0
	mov r0, #0
	bl GetDeltaXByFacingDirection
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl MapObject_GetZCoord
	add r6, r0, #0
	mov r0, #0
	bl GetDeltaYByFacingDirection
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl sub_020611C8
	ldr r0, [r5, #0x30]
	mov r1, #1
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x34]
	ldr r2, [r5, #0x2c]
	ldr r3, [r5, #0x28]
	bl sub_02054790
	str r0, [r5, #0x2c]
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F2A3C
	bl GF_AssertFail
_021F2A3C:
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0x18
	bl MapObject_CopyPositionVector
	ldr r1, [sp, #0x20]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	bgt _021F2A62
	bl GF_AssertFail
_021F2A62:
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	blt _021F2A6E
	bl GF_AssertFail
_021F2A6E:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x1c]
	add r3, sp, #0xc
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x10]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #0x10]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #0x14]
	asr r0, r0, #6
	str r0, [sp, #0x14]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	bl ov02_0224D598
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov01_021F29E4

