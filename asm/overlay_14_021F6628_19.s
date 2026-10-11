#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6A34
	.extern ov14_021F8630

    .text

	.text
	thumb_func_start ov14_021F6A34
ov14_021F6A34: ; 0x021F6A34
	ldr r3, _021F6A3C ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _021F6A40 ; =ov14_021F8630
	bx r3
	nop
_021F6A3C: .word TouchscreenHitbox_FindRectAtTouchNew
_021F6A40: .word ov14_021F8630
	thumb_func_end ov14_021F6A34

