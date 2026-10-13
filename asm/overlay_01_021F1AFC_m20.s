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
	.include "overlay_01_021F1AFC.inc"
	.include "global.inc"
	.public ov01_021F1EA4
	.extern ov01_021F1ECC
	.extern ov01_021F30D0

	.text

	.text
	thumb_func_start ov01_021F1EA4
ov01_021F1EA4: ; 0x021F1EA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov01_021F30D0
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r7, [r2, #0x10]
	ldr r1, _021F1EC8 ; =ov01_021F1ECC
	add r0, r4, #0
	str r6, [r2, #0xc]
	bl FieldSystem_CreateTask
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1EC8: .word ov01_021F1ECC
	thumb_func_end ov01_021F1EA4

