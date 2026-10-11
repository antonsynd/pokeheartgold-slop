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
	.public WeatherManager_ChangeWeather
	.extern ov01_021EB320
	.extern ov01_021EB3F0
	.extern ov01_021EB4B4

	.text

	.text
	thumb_func_start WeatherManager_ChangeWeather
WeatherManager_ChangeWeather: ; 0x021EB2B8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xe
	blt _021EB2C6
	bl GF_AssertFail
_021EB2C6:
	ldr r0, [r5, #0xc]
	cmp r0, #6
	beq _021EB2D2
	str r4, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB2D2:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _021EB2DC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EB2DC:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021EB2E6
	bl GF_AssertFail
_021EB2E6:
	str r4, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov01_021EB4B4
	cmp r0, #0
	bne _021EB302
	ldr r0, _021EB314 ; =ov01_021EB320
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl SysTask_CreateOnMainQueue
	b _021EB30E
_021EB302:
	ldr r0, _021EB318 ; =ov01_021EB3F0
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl SysTask_CreateOnMainQueue
_021EB30E:
	str r0, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EB314: .word ov01_021EB320
_021EB318: .word ov01_021EB3F0
	thumb_func_end WeatherManager_ChangeWeather

