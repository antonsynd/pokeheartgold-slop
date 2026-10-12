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
	.public ov01_021F0DDC
	.extern ov01_021F1094
	.extern ov01_021F10C8
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F0DDC
ov01_021F0DDC: ; 0x021F0DDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F0E5C ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	beq _021F0DEC
	bl GF_AssertFail
_021F0DEC:
	mov r0, #4
	mov r1, #0x18
	bl Heap_Alloc
	ldr r1, _021F0E5C ; =ov01_02209B64
	mov r2, #0x18
	str r0, [r1]
	mov r1, #0
_021F0DFC:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021F0DFC
	ldr r0, _021F0E5C ; =ov01_02209B64
	mov r1, #0
	ldr r2, [r0]
	strh r1, [r2]
	ldr r2, [r0]
	strb r1, [r2, #2]
	ldr r0, [r0]
	str r4, [r0, #4]
	mov r0, #2
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	bl GX_ResetBankForBG
	mov r2, #2
	ldr r1, _021F0E60 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	ldr r0, _021F0E64 ; =0xC0320C04
	ldr r2, _021F0E68 ; =0x04000064
	ldr r1, _021F0E5C ; =ov01_02209B64
	str r0, [r2]
	ldr r0, _021F0E6C ; =ov01_021F1094
	ldr r1, [r1]
	lsr r2, r2, #0x10
	bl SysTask_CreateOnVWaitQueue
	ldr r1, _021F0E5C ; =ov01_02209B64
	mov r2, #1
	ldr r0, _021F0E70 ; =ov01_021F10C8
	ldr r1, [r1]
	lsl r2, r2, #0xa
	bl SysTask_CreateOnMainQueue
	pop {r4, pc}
	.balign 4, 0
_021F0E5C: .word ov01_02209B64
_021F0E60: .word 0x06840000
_021F0E64: .word 0xC0320C04
_021F0E68: .word 0x04000064
_021F0E6C: .word ov01_021F1094
_021F0E70: .word ov01_021F10C8
	thumb_func_end ov01_021F0DDC

