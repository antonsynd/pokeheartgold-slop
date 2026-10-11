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
	.public WeatherManager_New
	.extern ov01_021EB64C
	.extern ov01_021EB68C

	.text

	.text
	thumb_func_start WeatherManager_New
WeatherManager_New: ; 0x021EB1F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021EB208:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021EB208
	add r0, r5, #0
	bl ov01_021EB64C
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	mov r0, #0xe
	str r0, [r4, #0x10]
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end WeatherManager_New

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

