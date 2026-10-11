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
	.public ov01_021F0E74
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F0E74
ov01_021F0E74: ; 0x021F0E74
	push {r3, lr}
	ldr r0, _021F0E8C ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0E82
	bl GF_AssertFail
_021F0E82:
	ldr r0, _021F0E8C ; =ov01_02209B64
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #3]
	pop {r3, pc}
	.balign 4, 0
_021F0E8C: .word ov01_02209B64
	thumb_func_end ov01_021F0E74

