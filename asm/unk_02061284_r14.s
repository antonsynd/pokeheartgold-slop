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
	.include "unk_02061284.inc"
	.include "global.inc"
	.public sub_020613A0
	.public sub_020613B0
	.public sub_020613C0
	.extern sub_020613D0

	.text

	.text
	thumb_func_start sub_020613A0
sub_020613A0: ; 0x020613A0
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xb
	mov r3, #0
	bl sub_020613D0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020613A0

	thumb_func_start sub_020613B0
sub_020613B0: ; 0x020613B0
	push {r3, lr}
	mov r1, #0xc
	add r2, r1, #0
	mov r3, #0
	bl sub_020613D0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020613B0

	thumb_func_start sub_020613C0
sub_020613C0: ; 0x020613C0
	push {r3, lr}
	mov r1, #0xc
	mov r2, #0xd
	mov r3, #0
	bl sub_020613D0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020613C0

