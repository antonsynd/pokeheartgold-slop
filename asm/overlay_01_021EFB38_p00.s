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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021EFB38
	.extern ov01_022068C4
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021EFB38
ov01_021EFB38: ; 0x021EFB38
	push {r3, lr}
	ldr r2, _021EFB5C ; =ov01_02209B64
	ldr r2, [r2, #4]
	lsl r3, r2, #2
	ldr r2, _021EFB60 ; =ov01_022068C4
	ldr r2, [r2, r3]
	blx r2
	ldr r0, _021EFB5C ; =ov01_02209B64
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bl OS_GetTick
	mov r0, #0
	add r1, r0, #0
	bl OS_SetTick
	pop {r3, pc}
	.balign 4, 0
_021EFB5C: .word ov01_02209B64
_021EFB60: .word ov01_022068C4
	thumb_func_end ov01_021EFB38

