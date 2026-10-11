#include "constants/pokemon.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/sprites.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "unk_0206979C.inc"
	.include "global.inc"
	.public sub_020699BC
	.extern _020FE8A4
	.extern _020FE8B0
	.extern sub_020699AC

	.public NNS_G3dGlb

	.text

	.text
	thumb_func_start sub_020699BC
sub_020699BC: ; 0x020699BC
	push {r3, lr}
	ldr r2, _020699C8 ; =_020FE8A4
	ldr r3, _020699CC ; =_020FE8B0
	bl sub_020699AC
	pop {r3, pc}
	.balign 4, 0
_020699C8: .word _020FE8A4
_020699CC: .word _020FE8B0
	thumb_func_end sub_020699BC

