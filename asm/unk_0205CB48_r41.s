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
	.include "unk_0205CB48.inc"
	.include "global.inc"
	.public sub_0205DA34
	.extern sub_0205DAA8
	.extern sub_0205DB68
	.extern sub_0205DBF4
	.extern sub_0205DCA0
	.extern sub_0205DCFC

	.text

	.text
	thumb_func_start sub_0205DA34
sub_0205DA34: ; 0x0205DA34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	bl sub_0205DAA8
	mov r1, #0xa
	str r0, [sp]
	tst r0, r1
	beq _0205DA60
	mov r0, #1
	orr r4, r0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205DBF4
	cmp r0, #0
	beq _0205DA60
	mov r0, #8
	orr r4, r0
_0205DA60:
	ldr r0, [sp]
	mov r1, #4
	tst r0, r1
	beq _0205DA6C
	mov r0, #2
	orr r4, r0
_0205DA6C:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205DB68
	cmp r0, #0
	beq _0205DA7E
	mov r0, #4
	orr r4, r0
_0205DA7E:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205DCA0
	cmp r0, #1
	bne _0205DA90
	mov r0, #0x20
	orr r4, r0
_0205DA90:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0205DCFC
	cmp r0, #1
	bne _0205DAA2
	mov r0, #1
	orr r4, r0
_0205DAA2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0205DA34

