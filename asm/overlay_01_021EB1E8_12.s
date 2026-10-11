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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EB64C
	.extern ov01_021EB4B8
	.extern ov01_0220675C
	.extern ov01_022098B0

	.text

	.text
	thumb_func_start ov01_021EB64C
ov01_021EB64C: ; 0x021EB64C
	push {r3, r4, r5, lr}
	mov r1, #0x43
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r0, #8
	bl ov01_021EB4B8
	ldr r0, _021EB684 ; =ov01_022098B0
	mov r1, #4
	str r0, [r4]
	ldr r0, _021EB688 ; =ov01_0220675C
	str r0, [r4, #4]
	mov r0, #0x3f ; NARC_a_0_6_3
	bl NARC_New
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EB684: .word ov01_022098B0
_021EB688: .word ov01_0220675C
	thumb_func_end ov01_021EB64C

