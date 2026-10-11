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
	.public sub_02061B1C
	.public sub_02061B2C
	.public sub_02061B3C
	.public sub_02061B4C
	.public sub_02061B5C
	.public sub_02061B6C
	.public sub_02061B7C
	.public sub_02061B8C
	.public sub_02061B9C
	.public sub_02061BAC
	.public sub_02061BBC
	.public sub_02061BCC
	.public sub_02061BDC
	.public sub_02061BEC
	.public sub_02061BFC
	.public sub_02061C0C
	.extern sub_02061AEC

	.text

	.text
	thumb_func_start sub_02061B1C
sub_02061B1C: ; 0x02061B1C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xe
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B1C

	thumb_func_start sub_02061B2C
sub_02061B2C: ; 0x02061B2C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0xf
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B2C

	thumb_func_start sub_02061B3C
sub_02061B3C: ; 0x02061B3C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x10
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B3C

	thumb_func_start sub_02061B4C
sub_02061B4C: ; 0x02061B4C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x11
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B4C

	thumb_func_start sub_02061B5C
sub_02061B5C: ; 0x02061B5C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x12
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B5C

	thumb_func_start sub_02061B6C
sub_02061B6C: ; 0x02061B6C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x13
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B6C

	thumb_func_start sub_02061B7C
sub_02061B7C: ; 0x02061B7C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B7C

	thumb_func_start sub_02061B8C
sub_02061B8C: ; 0x02061B8C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x15
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B8C

	thumb_func_start sub_02061B9C
sub_02061B9C: ; 0x02061B9C
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x16
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061B9C

	thumb_func_start sub_02061BAC
sub_02061BAC: ; 0x02061BAC
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x17
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BAC

	thumb_func_start sub_02061BBC
sub_02061BBC: ; 0x02061BBC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x18
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BBC

	thumb_func_start sub_02061BCC
sub_02061BCC: ; 0x02061BCC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x19
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BCC

	thumb_func_start sub_02061BDC
sub_02061BDC: ; 0x02061BDC
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1a
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BDC

	thumb_func_start sub_02061BEC
sub_02061BEC: ; 0x02061BEC
	push {r3, lr}
	mov r1, #2
	mov r2, #1
	mov r3, #0x1b
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BEC

	thumb_func_start sub_02061BFC
sub_02061BFC: ; 0x02061BFC
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1c
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061BFC

	thumb_func_start sub_02061C0C
sub_02061C0C: ; 0x02061C0C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #0x1d
	bl sub_02061AEC
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02061C0C

