#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_02246304
	.public ov02_02246330
	.extern ov02_02246398
	.extern ov02_02246444
	.extern ov02_02246490

	.text

	.text
	thumb_func_start ov02_02246304
ov02_02246304: ; 0x02246304
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x10
	bl Heap_Alloc
	add r4, r0, #0
	bne _0224631C
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224631C:
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	str r5, [r4, #4]
	mov r0, #4
	str r0, [r4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov02_02246304

	thumb_func_start ov02_02246330
ov02_02246330: ; 0x02246330
	push {r4, lr}
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02246348
	cmp r1, #1
	beq _0224635A
	cmp r1, #2
	beq _02246374
	b _0224638E
_02246348:
	bl ov02_02246398
	ldr r0, _02246394 ; =SEQ_SE_GS_AJITO_SIREN
	bl PlaySE
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224638E
_0224635A:
	bl ov02_02246490
	cmp r0, #0
	beq _0224638E
	ldrb r1, [r4, #0xc]
	add r0, r1, #1
	strb r0, [r4, #0xc]
	cmp r1, #1
	blo _0224638E
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224638E
_02246374:
	ldr r0, _02246394 ; =SEQ_SE_GS_AJITO_SIREN
	bl IsSEPlaying
	cmp r0, #0
	bne _0224638E
	add r0, r4, #0
	bl ov02_02246444
	add r0, r4, #0
	bl Heap_Free
	mov r0, #1
	pop {r4, pc}
_0224638E:
	mov r0, #0
	pop {r4, pc}
	nop
_02246394: .word SEQ_SE_GS_AJITO_SIREN
	thumb_func_end ov02_02246330

