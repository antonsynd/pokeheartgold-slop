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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public ov01_021FA31C
	.extern ov01_02208B64

	.text

	.text
	thumb_func_start ov01_021FA31C
ov01_021FA31C: ; 0x021FA31C
	push {r4, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, sp, #0x14
	str r0, [r3]
	ldr r3, _021FA36C ; =ov01_02208B64
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl sub_02023D44
	add r4, r0, #0
	beq _021FA364
	mov r1, #0
	bl sub_02023EA4
	add r0, r4, #0
	mov r1, #0
	bl sub_02023EE0
	add r0, r4, #0
	mov r1, #0
	bl sub_02023F40
	add r0, r4, #0
	bl sub_02023F90
	bl ov01_021EA3B0
_021FA364:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	nop
_021FA36C: .word ov01_02208B64
	thumb_func_end ov01_021FA31C

