#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D25C

	.text

	.text
	thumb_func_start ov65_0221D25C
ov65_0221D25C: ; 0x0221D25C
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #2
	add r4, r0, #0
	bl GetBgTilemapBuffer
	add r2, r0, #0
	mov r0, #0
	mov r3, #6
	str r0, [sp]
	add r0, r4, #0
	mov r1, #2
	lsl r3, r3, #8
	bl BgCopyOrUncompressTilemapBufferRangeToVram
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov65_0221D25C

