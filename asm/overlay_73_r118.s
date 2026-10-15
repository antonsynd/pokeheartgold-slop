#include "config.h"
	.include "macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E85AC
	.extern ov73_021E8440
	.extern ov73_021EA848

	.text

	.text
	thumb_func_start ov73_021E85AC
ov73_021E85AC: ; 0x021E85AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov73_021E8440
	bl sub_0203A930
	ldr r4, [r5, #0x1c]
	ldr r1, _021E85D8 ; =ov73_021EA848
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _021E85D6
	mov r1, #0xf9
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_021E85D6:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E85D8: .word ov73_021EA848
	thumb_func_end ov73_021E85AC

