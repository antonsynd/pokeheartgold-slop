#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_02246744
	.extern ov02_0224650C
	.extern ov02_02246548

	.text

	.text
	thumb_func_start ov02_02246744
ov02_02246744: ; 0x02246744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0xc
	add r7, r2, #0
	str r3, [sp, #4]
	bl Heap_Alloc
	add r4, r0, #0
	bne _02246766
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02246766:
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	str r5, [r4, #4]
	mov r1, #4
	str r1, [r4]
	ldr r0, [r4, #4]
	bl ov02_0224650C
	str r0, [r4, #8]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	lsl r1, r6, #0x10
	lsl r2, r7, #0x10
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r3, [sp, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov02_02246548
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov02_02246744

