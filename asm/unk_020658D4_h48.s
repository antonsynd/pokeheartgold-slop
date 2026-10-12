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
	.include "unk_020658D4.inc"
	.include "global.inc"
	.public sub_02066444
	.extern _020FE3F4
	.extern _020FE434
	.extern _020FE444

	.text

	.text
	thumb_func_start sub_02066444
sub_02066444: ; 0x02066444
	push {r3, r4, r5, lr}
	sub sp, #0x30
	ldr r5, _020664CC ; =_020FE3F4
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0x20
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020664D0 ; =_020FE434
	add r4, sp, #0x10
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r5, _020664D4 ; =_020FE444
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	mov r1, #0
_02066472:
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	cmp r3, r0
	bne _02066480
	add sp, #0x30
	mov r0, #3
	pop {r3, r4, r5, pc}
_02066480:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _02066472
	mov r2, #0
	add r1, sp, #0x10
_0206648E:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _0206649C
	add sp, #0x30
	mov r0, #2
	pop {r3, r4, r5, pc}
_0206649C:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0206648E
	mov r2, #0
	add r1, sp, #0
_020664AA:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _020664B8
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, pc}
_020664B8:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _020664AA
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.balign 4, 0
_020664CC: .word _020FE3F4
_020664D0: .word _020FE434
_020664D4: .word _020FE444
	thumb_func_end sub_02066444

