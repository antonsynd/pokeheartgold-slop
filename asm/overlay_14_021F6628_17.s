#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6A14
	.extern ov14_021F864C

    .text

	.text
	thumb_func_start ov14_021F6A14
ov14_021F6A14: ; 0x021F6A14
	ldr r3, _021F6A1C ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, _021F6A20 ; =ov14_021F864C
	bx r3
	nop
_021F6A1C: .word TouchscreenHitbox_FindRectAtTouchNew
_021F6A20: .word ov14_021F864C
	thumb_func_end ov14_021F6A14

