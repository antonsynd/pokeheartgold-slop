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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F5568

	.text

	.text
	thumb_func_start ov01_021F5568
ov01_021F5568: ; 0x021F5568
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r6, #0
	lsl r5, r0, #2
	add r4, #0x90
	ldr r1, [r4, r5]
	ldr r0, _021F55E4 ; =0x00000864
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r4, r5]
	sub r0, #8
	ldr r0, [r1, r0]
	bl ov01_021FB2F4
	ldr r1, [r4, r5]
	ldr r0, _021F55E8 ; =0x00000868
	ldr r0, [r1, r0]
	bl MapPropManager_Reset
	mov r0, #0
	mov r2, #0x86
	ldr r1, [r4, r5]
	mvn r0, r0
	lsl r2, r2, #4
	str r0, [r1, r2]
	ldr r1, [r4, r5]
	sub r2, #0x60
	bl MIi_CpuClearFast
	ldr r2, [r4, r5]
	ldr r1, _021F55EC ; =0x0000086C
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x81
	lsl r2, r2, #2
	bl MIi_CpuClear32
	add r0, r6, r5
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov01_02204698
	cmp r0, #0
	beq _021F55D8
	add r6, #0xf8
	mov r1, #2
	ldr r2, [r4, r5]
	lsl r1, r1, #0xa
	ldr r0, [r6]
	add r1, r2, r1
	bl ov01_02204688
_021F55D8:
	ldr r1, [r4, r5]
	ldr r0, _021F55F0 ; =0x00000808
	mov r2, #0
	str r2, [r1, r0]
	pop {r4, r5, r6, pc}
	nop
_021F55E4: .word 0x00000864
_021F55E8: .word 0x00000868
_021F55EC: .word 0x0000086C
_021F55F0: .word 0x00000808
	thumb_func_end ov01_021F5568

