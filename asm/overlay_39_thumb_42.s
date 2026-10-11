#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02227DEC
	.extern _0222AB80

	.text

	.text
	thumb_func_start ov39_02227DEC
ov39_02227DEC: ; 0x02227DEC
	push {r4, r5, r6, lr}
	mov r1, #2
	lsl r1, r1, #0xc
	bl Heap_Alloc
	add r5, r0, #0
	mov r6, #2
	lsl r6, r6, #0xc
	mov r0, #0
	add r1, r5, #0
	add r2, r5, r6
	mov r3, #1
	bl OS_InitAlloc
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	bl OS_SetArenaLo
	add r2, r5, r6
	add r4, #0x1f
	mov r0, #0x1f
	bic r4, r0
	add r2, #0x1f
	bic r2, r0
	mov r0, #0
	add r1, r4, #0
	bl OS_CreateHeap
	add r1, r0, #0
	ldr r0, _02227E38 ; =_0222AB80
	str r1, [r0]
	mov r0, #0
	bl OS_SetCurrentHeap
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02227E38: .word _0222AB80
	thumb_func_end ov39_02227DEC

