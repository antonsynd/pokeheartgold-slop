#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221D204
	.public ov65_0221D25C

	.text

	thumb_func_start ov65_0221D204
ov65_0221D204: ; 0x0221D204
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r2, #0
	mov r2, #1
	add r4, r3, #0
	str r2, [sp]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl GfGfxLoader_LoadFromOpenNarc
	add r6, r0, #0
	beq _0221D256
	add r1, sp, #4
	bl NNS_G2dGetUnpackedScreenData
	cmp r0, #0
	beq _0221D250
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0221D232
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x1c]
_0221D232:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl GetBgTilemapBuffer
	cmp r0, #0
	beq _0221D250
	ldr r2, [sp, #4]
	lsl r1, r4, #0x18
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, #0xc
	bl BG_LoadScreenTilemapData
_0221D250:
	add r0, r6, #0
	bl Heap_Free
_0221D256:
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov65_0221D204

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

