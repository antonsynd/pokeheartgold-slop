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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public sub_021FA248

	.text

	.text
	thumb_func_start sub_021FA248
sub_021FA248: ; 0x021FA248
	push {r3, lr}
	ldr r3, _021FA280 ; =ov01_022074A8
	ldr r1, _021FA284 ; =0x0000FFFF
_021FA24E:
	ldrh r2, [r3]
	cmp r2, r0
	bne _021FA270
	ldrh r0, [r3, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1a
	cmp r0, #0xff ; Never eq due to data type limitations
	bne _021FA268
	bne _021FA264
	bl GF_AssertFail
_021FA264:
	ldr r0, _021FA288 ; =ov01_02207318
	pop {r3, pc}
_021FA268:
	ldr r1, _021FA288 ; =ov01_02207318
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, pc}
_021FA270:
	add r3, r3, #6
	ldrh r2, [r3]
	cmp r2, r1
	bne _021FA24E
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021FA280: .word ov01_022074A8
_021FA284: .word 0x0000FFFF
_021FA288: .word ov01_02207318
	thumb_func_end sub_021FA248

