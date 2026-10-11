#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_022053EC.inc"
	.include "global.inc"
	.public ov01_0220542C
	.extern ov01_02209710
	.extern ov01_02209720
	.extern ov01_02209730
	.extern ov01_02209740

	.text

	.text
	thumb_func_start ov01_0220542C
ov01_0220542C: ; 0x0220542C
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r6, _022054D0 ; =ov01_02209720
	add r5, sp, #0x30
	add r4, r0, #0
	add r3, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054D4 ; =ov01_02209730
	add r5, sp, #0x20
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054D8 ; =ov01_02209740
	add r5, sp, #0x10
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r6, _022054DC ; =ov01_02209710
	add r5, sp, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	mov r1, #0
_02205468:
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	cmp r3, r0
	bne _0220547A
	add r0, sp, #0x20
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0220547A:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _02205468
	mov r2, #0
	add r1, sp, #0x20
_02205488:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _0220549A
	add r0, sp, #0x10
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0220549A:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _02205488
	mov r2, #0
	add r1, sp, #0x10
_022054A8:
	lsl r0, r2, #2
	ldr r0, [r1, r0]
	cmp r3, r0
	bne _022054BA
	add r0, sp, #0
	lsl r1, r4, #2
	add sp, #0x40
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_022054BA:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _022054A8
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x40
	pop {r4, r5, r6, pc}
	nop
_022054D0: .word ov01_02209720
_022054D4: .word ov01_02209730
_022054D8: .word ov01_02209740
_022054DC: .word ov01_02209710
	thumb_func_end ov01_0220542C

