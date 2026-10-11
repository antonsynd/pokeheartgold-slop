#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DC34
	.public ov65_0221DF1C
	.public ov65_0221DFB8
	.public ov65_0221E050

	.text

	thumb_func_start ov65_0221E050
ov65_0221E050: ; 0x0221E050
	push {r4, lr}
	add r4, r0, #0
	bl ov65_0221DFB8
	cmp r0, #0
	bne _0221E062
	add r0, r4, #0
	bl ov65_0221DF1C
_0221E062:
	add r0, r4, #0
	bl ov65_0221DC34
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0221E050

