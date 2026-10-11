#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021ED9AC

    .text

	thumb_func_start ov14_021ED9AC
ov14_021ED9AC: ; 0x021ED9AC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	mov r3, #2
	ldr r0, [r0, #0x18]
	add r2, r1, #0
	lsl r3, r3, #8
	bl PaletteData_LoadPaletteSlotFromHardware
	mov r3, #0
	mov r2, #3
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021ED9E8 ; =0x00007FFF
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	lsl r2, r2, #0xe
	ldr r0, [r0, #0x18]
	bl PaletteData_BeginPaletteFade
	mov r0, #0x46
	str r0, [r4, #0x30]
	mov r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021ED9E8: .word 0x00007FFF
	thumb_func_end ov14_021ED9AC

