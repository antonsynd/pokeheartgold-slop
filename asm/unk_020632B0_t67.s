#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_020632B0.inc"
	.include "global.inc"
	.public sub_020645B4
	.extern sub_02064630

	.text

	.text
	thumb_func_start sub_020645B4
sub_020645B4: ; 0x020645B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r7, r2, #0
	str r3, [sp]
	bl Heap_AllocAtEnd
	add r4, r0, #0
	bne _020645CE
	bl GF_AssertFail
_020645CE:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl memset
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0xff
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	str r5, [r4, #0x2c]
	str r6, [r4, #0x24]
	ldr r0, _02064608 ; =sub_02064630
	str r7, [r4, #0x28]
	bl SysTask_CreateOnMainQueue
	add r4, r0, #0
	bne _02064604
	bl GF_AssertFail
_02064604:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02064608: .word sub_02064630
	thumb_func_end sub_020645B4

