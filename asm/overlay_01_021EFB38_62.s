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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F1060
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F1060
ov01_021F1060: ; 0x021F1060
	push {r3, lr}
	ldr r0, _021F1090 ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F106E
	bl GF_AssertFail
_021F106E:
	ldr r0, _021F1090 ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02014EBC
	ldr r0, _021F1090 ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	ldr r0, _021F1090 ; =ov01_02209B64
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #8]
	ldr r0, [r0]
	str r2, [r0, #0xc]
	pop {r3, pc}
	.balign 4, 0
_021F1090: .word ov01_02209B64
	thumb_func_end ov01_021F1060

