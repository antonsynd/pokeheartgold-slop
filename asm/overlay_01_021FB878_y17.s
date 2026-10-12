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
	.include "overlay_01_021FB878.inc"
	.include "global.inc"
	.public Field3dModelAnimation_FrameAdvanceAndCheck
	.public Field3dModelAnimation_FrameAdvanceAndLoop

	.text

	.text
	thumb_func_start Field3dModelAnimation_FrameAdvanceAndLoop
Field3dModelAnimation_FrameAdvanceAndLoop: ; 0x021FBEAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r2, r0, #0xc
	cmp r1, #0
	ble _021FBECA
	ldr r0, [r4, #0xc]
	add r0, r0, r1
	add r1, r2, #0
	bl _s32_div_f
	str r1, [r4, #0xc]
	b _021FBEDC
_021FBECA:
	ldr r0, [r4, #0xc]
	add r3, r4, #0
	add r3, #0xc
	add r0, r0, r1
	str r0, [r4, #0xc]
	bpl _021FBEDC
	ldr r0, [r3]
	add r0, r0, r2
	str r0, [r3]
_021FBEDC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0]
	pop {r4, pc}
	thumb_func_end Field3dModelAnimation_FrameAdvanceAndLoop

	thumb_func_start Field3dModelAnimation_FrameAdvanceAndCheck
Field3dModelAnimation_FrameAdvanceAndCheck: ; 0x021FBEE4
	push {r3, r4}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #0
	cmp r1, #0
	ble _021FBF06
	add r1, r3, r1
	cmp r1, r4
	bge _021FBF00
	str r1, [r0, #0xc]
	b _021FBF12
_021FBF00:
	str r4, [r0, #0xc]
	mov r2, #1
	b _021FBF12
_021FBF06:
	add r1, r3, r1
	bmi _021FBF0E
	str r1, [r0, #0xc]
	b _021FBF12
_021FBF0E:
	str r2, [r0, #0xc]
	mov r2, #1
_021FBF12:
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0]
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end Field3dModelAnimation_FrameAdvanceAndCheck

