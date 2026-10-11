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
	.include "overlay_01_021F4464.inc"
	.include "global.inc"
	.public ov01_021F4464
	.extern ov01_021F4544
	.extern ov01_021F4584
	.extern ov01_021F45E4

	.text

	.text
	thumb_func_start ov01_021F4464
ov01_021F4464: ; 0x021F4464
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021F44AC ; =ov01_021F4544
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl CreateSysTaskAndEnvironment
	add r6, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021F4480:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021F4480
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl GX_GetBankForLCDC
	str r0, [r4]
	add r0, r4, #4
	bl ov01_021F45E4
	ldr r0, _021F44B0 ; =ov01_021F4584
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnVWaitQueue
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F44AC: .word ov01_021F4544
_021F44B0: .word ov01_021F4584
	thumb_func_end ov01_021F4464

