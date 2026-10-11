#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6A24
	.extern ov14_021F8614

    .text

	.text
	thumb_func_start ov14_021F6A24
ov14_021F6A24: ; 0x021F6A24
	ldr r3, _021F6A2C ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _021F6A30 ; =ov14_021F8614
	bx r3
	nop
_021F6A2C: .word TouchscreenHitbox_FindRectAtTouchNew
_021F6A30: .word ov14_021F8614
	thumb_func_end ov14_021F6A24

