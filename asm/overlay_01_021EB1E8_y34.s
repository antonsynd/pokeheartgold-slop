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
	.public ov01_021EBEB8

	.text

	.text
	thumb_func_start ov01_021EBEB8
ov01_021EBEB8: ; 0x021EBEB8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldr r0, _021EBEEC ; =0x0000FFFF
	cmp r1, r0
	beq _021EBEE8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021EBECE
	mov r0, #1
	pop {r4, pc}
_021EBECE:
	mov r0, #4
	mov r1, #0x64
	bl Heap_Alloc
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBEE0
	mov r0, #0
	pop {r4, pc}
_021EBEE0:
	mov r1, #0
	mov r2, #0x64
	bl memset
_021EBEE8:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021EBEEC: .word 0x0000FFFF
	thumb_func_end ov01_021EBEB8

