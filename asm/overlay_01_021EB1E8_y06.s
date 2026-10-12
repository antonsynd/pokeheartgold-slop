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
	.public ov01_021EB320
	.public ov01_021EB3F0
	.extern WeatherManager_ChangeWeather
	.extern ov01_021EB700
	.extern ov01_021EB804

	.text

	.text
	thumb_func_start ov01_021EB320
ov01_021EB320: ; 0x021EB320
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _021EB3EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB336: ; jump table
	.short _021EB342 - _021EB336 - 2 ; case 0
	.short _021EB35C - _021EB336 - 2 ; case 1
	.short _021EB382 - _021EB336 - 2 ; case 2
	.short _021EB39C - _021EB336 - 2 ; case 3
	.short _021EB3B0 - _021EB336 - 2 ; case 4
	.short _021EB3D2 - _021EB336 - 2 ; case 5
_021EB342:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #5
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB354
	bl GF_AssertFail
_021EB354:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB35C:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov01_021EB804
	cmp r0, #3
	beq _021EB3EE
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB37A
	bl GF_AssertFail
_021EB37A:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB382:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB394
	bl GF_AssertFail
_021EB394:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB39C:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov01_021EB804
	cmp r0, #1
	beq _021EB3EE
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB3B0:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #2
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB3C2
	bl GF_AssertFail
_021EB3C2:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_021EB3D2:
	mov r1, #6
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	bl SysTask_Destroy
	ldr r1, [r4, #0x10]
	cmp r1, #0xe
	beq _021EB3EE
	add r0, r4, #0
	bl WeatherManager_ChangeWeather
	mov r0, #0xe
	str r0, [r4, #0x10]
_021EB3EE:
	pop {r4, pc}
	thumb_func_end ov01_021EB320

	thumb_func_start ov01_021EB3F0
ov01_021EB3F0: ; 0x021EB3F0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #4
	bhi _021EB4B2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB406: ; jump table
	.short _021EB410 - _021EB406 - 2 ; case 0
	.short _021EB42A - _021EB406 - 2 ; case 1
	.short _021EB43E - _021EB406 - 2 ; case 2
	.short _021EB46A - _021EB406 - 2 ; case 3
	.short _021EB490 - _021EB406 - 2 ; case 4
_021EB410:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB422
	bl GF_AssertFail
_021EB422:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB42A:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov01_021EB804
	cmp r0, #1
	beq _021EB4B2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB43E:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #7
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB450
	bl GF_AssertFail
_021EB450:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #4
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB462
	bl GF_AssertFail
_021EB462:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB46A:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov01_021EB804
	cmp r0, #3
	beq _021EB4B2
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl ov01_021EB700
	cmp r0, #0
	bne _021EB488
	bl GF_AssertFail
_021EB488:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021EB490:
	ldr r1, [r4, #8]
	mov r2, #0
	str r1, [r4, #4]
	str r2, [r4, #8]
	mov r1, #6
	str r1, [r4, #0xc]
	str r2, [r4, #0x14]
	bl SysTask_Destroy
	ldr r1, [r4, #0x10]
	cmp r1, #0xe
	beq _021EB4B2
	add r0, r4, #0
	bl WeatherManager_ChangeWeather
	mov r0, #0xe
	str r0, [r4, #0x10]
_021EB4B2:
	pop {r4, pc}
	thumb_func_end ov01_021EB3F0

