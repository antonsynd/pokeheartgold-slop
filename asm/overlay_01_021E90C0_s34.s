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
	.include "overlay_01_021E90C0.inc"
	.include "global.inc"
	.public LoadAreaOrDungeonLightTxt
	.extern ov01_021EA300
	.extern ov01_021EA3E0
	.extern ov01_021EA564
	.extern ov01_02206450

	.text

	.text
	thumb_func_start LoadAreaOrDungeonLightTxt
LoadAreaOrDungeonLightTxt: ; 0x021EA6C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	cmp r4, #5
	blo _021EA6D4
	bl GF_AssertFail
_021EA6D4:
	ldr r0, _021EA720 ; =ov01_02206450
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl ov01_021EA3E0
	add r4, r0, #0
	bl GF_RTC_TimeToSec
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	mov r1, #0
	cmp r4, #0
	ble _021EA706
	ldr r2, [sp]
_021EA6F4:
	ldr r0, [r2]
	cmp r0, r3
	bls _021EA6FE
	add r5, r1, #0
	b _021EA706
_021EA6FE:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r4
	blt _021EA6F4
_021EA706:
	mov r0, #0x30
	ldr r1, [sp]
	mul r0, r5
	add r0, r1, r0
	add r1, r6, #0
	bl ov01_021EA300
	add r0, sp, #0
	bl ov01_021EA564
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EA720: .word ov01_02206450
	thumb_func_end LoadAreaOrDungeonLightTxt

