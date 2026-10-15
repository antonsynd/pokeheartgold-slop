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
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public AreaLightManager_New
	.extern ov01_021EA398
	.extern ov01_021EA3E0
	.extern ov01_02206450

	.text

	.text
	thumb_func_start AreaLightManager_New
AreaLightManager_New: ; 0x021EA220
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #5
	blo _021EA22E
	bl GF_AssertFail
_021EA22E:
	mov r0, #4
	mov r1, #0x14
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, _021EA280 ; =ov01_02206450
	lsl r1, r6, #2
	ldr r0, [r0, r1]
	str r5, [r4, #0xc]
	add r1, r4, #4
	bl ov01_021EA3E0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	bl GF_RTC_TimeToSec
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	ldr r5, [r4]
	mov r1, #0
	cmp r5, #0
	bls _021EA272
	ldr r2, [r4, #4]
_021EA260:
	ldr r0, [r2]
	cmp r0, r3
	bls _021EA26A
	str r1, [r4, #8]
	b _021EA272
_021EA26A:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r5
	blo _021EA260
_021EA272:
	mov r0, #1
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov01_021EA398
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EA280: .word ov01_02206450
	thumb_func_end AreaLightManager_New

