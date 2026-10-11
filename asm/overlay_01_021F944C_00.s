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
	.public ov01_021F944C
	.public ov01_021F9698
	.public ov01_021F9808
	.public ov01_021F9A8C
	.public ov01_021FA2EC
	.public ov01_021FA854

	.text

	thumb_func_start ov01_021F944C
ov01_021F944C: ; 0x021F944C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0x41
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r1, r4, #0
	bl ov01_021FA2EC
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA854
	mov r2, #4
	mov r1, #8
	ldr r0, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov01_021F9808
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021F9698
	ldr r1, [sp, #0x20]
	ldr r2, _021F9498 ; =ov01_02207260
	ldr r3, _021F949C ; =ov01_02206CF0
	add r0, r5, #0
	bl ov01_021F9A8C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F9498: .word ov01_02207260
_021F949C: .word ov01_02206CF0
	thumb_func_end ov01_021F944C

