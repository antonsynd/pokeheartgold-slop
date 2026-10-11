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
	.public WeatherManager_Delete
	.extern ov01_021EB68C

	.text

	.text
	thumb_func_start WeatherManager_Delete
WeatherManager_Delete: ; 0x021EB234
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EB242
	bl SysTask_Destroy
_021EB242:
	add r0, r4, #0
	bl ov01_021EB68C
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021EB24E:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021EB24E
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end WeatherManager_Delete

