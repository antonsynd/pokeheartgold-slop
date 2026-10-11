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
	.public ov01_021F1224
	.public ov01_021F1250
	.public ov01_021F127C
	.public ov01_021F1290
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F1224
ov01_021F1224: ; 0x021F1224
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F124C ; =ov01_02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F1236
	bl GF_AssertFail
_021F1236:
	cmp r4, #0
	beq _021F123E
	bl GF_AssertFail
_021F123E:
	ldr r0, _021F124C ; =ov01_02209B64
	ldr r2, [r0]
	ldr r0, [r2, #0x10]
	add r1, r0, r5
	str r1, [r2, #0x10]
	pop {r3, r4, r5, pc}
	nop
_021F124C: .word ov01_02209B64
	thumb_func_end ov01_021F1224

	thumb_func_start ov01_021F1250
ov01_021F1250: ; 0x021F1250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F1278 ; =ov01_02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F1262
	bl GF_AssertFail
_021F1262:
	cmp r4, #0
	beq _021F126A
	bl GF_AssertFail
_021F126A:
	ldr r0, _021F1278 ; =ov01_02209B64
	ldr r2, [r0]
	ldr r0, [r2, #0x14]
	add r1, r0, r5
	str r1, [r2, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021F1278: .word ov01_02209B64
	thumb_func_end ov01_021F1250

	thumb_func_start ov01_021F127C
ov01_021F127C: ; 0x021F127C
	ldr r3, _021F1288 ; =SysTask_CreateOnVBlankQueue
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021F128C ; =ov01_021F1290
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021F1288: .word SysTask_CreateOnVBlankQueue
_021F128C: .word ov01_021F1290
	thumb_func_end ov01_021F127C

	thumb_func_start ov01_021F1290
ov01_021F1290: ; 0x021F1290
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021F12A4
	ldr r0, [r4]
	bl sub_02014C08
	mov r0, #0
	str r0, [r4, #8]
_021F12A4:
	ldr r0, [r4]
	bl sub_02014C40
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov01_021F1290

