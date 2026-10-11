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
	.public ov01_021F0EC0
	.extern ov01_021F1210
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F0EC0
ov01_021F0EC0: ; 0x021F0EC0
	push {r3, lr}
	ldr r0, _021F0F04 ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0ECE
	bl GF_AssertFail
_021F0ECE:
	bl sub_02014F84
	ldr r0, _021F0F04 ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021F1210
	ldr r0, _021F0F04 ; =ov01_02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021E631C
	ldr r0, _021F0F04 ; =ov01_02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl ov01_021E6340
	ldr r0, _021F0F04 ; =ov01_02209B64
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, _021F0F04 ; =ov01_02209B64
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_021F0F04: .word ov01_02209B64
	thumb_func_end ov01_021F0EC0

