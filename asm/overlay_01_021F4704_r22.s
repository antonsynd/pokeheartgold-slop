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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public MapLoadManager_Tick
	.extern ov01_021F477C
	.extern ov01_021F5024
	.extern ov01_021F5CB4
	.extern ov01_021F5D10
	.extern ov01_021F5D20
	.extern ov01_021F5D38
	.extern ov01_021F5F64
	.extern ov01_021F613C
	.extern ov01_021F61DC

	.text

	.text
	thumb_func_start MapLoadManager_Tick
MapLoadManager_Tick: ; 0x021F50F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	add r2, r5, #4
	mul r0, r1
	add r4, #0xd0
	add r6, r2, r0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021F513A
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _021F513A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021F5198
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r1, r0
	ble _021F5128
	bl GF_AssertFail
_021F5128:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021F513C
_021F513A:
	b _021F5276
_021F513C:
	ldr r1, [r4, #0xc]
	add r2, sp, #0x10
	ldr r0, [r1]
	ldr r1, [r1, #8]
	add r3, sp, #0xc
	bl ov01_021F61DC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	bl ov01_021F5F64
	ldr r2, [r4, #0xc]
	add r3, r4, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F517A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	bne _021F5258
_021F517A:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F518E
	bl GF_AssertFail
_021F518E:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	b _021F5276
_021F5198:
	ldr r7, [r2]
	ldr r3, [r4]
	cmp r3, r7
	beq _021F51AE
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021F51AE
	bl GF_AssertFail
	b _021F5276
_021F51AE:
	cmp r3, r7
	bne _021F51BA
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021F5276
_021F51BA:
	mov r3, #1
	str r3, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r2]
	cmp r0, r1
	beq _021F520E
	cmp r0, r1
	ble _021F51D8
	str r4, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	mov r0, #3
	strb r0, [r4, #0x1c]
	b _021F51DE
_021F51D8:
	str r2, [r4, #0x10]
	str r4, [r4, #0x14]
	strb r3, [r4, #0x1c]
_021F51DE:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F51F8
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	bne _021F5258
_021F51F8:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F526E
	bl GF_AssertFail
	b _021F526E
_021F520E:
	add r1, r5, #0
	add r1, #0xdc
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, [r1, #8]
	cmp r0, r1
	ble _021F5230
	add r0, r4, #0
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	b _021F523C
_021F5230:
	add r2, #8
	add r0, r4, #0
	str r2, [r4, #0x10]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #2
_021F523C:
	strb r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F525A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	beq _021F525A
_021F5258:
	b _021F54A4
_021F525A:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021F526E
	bl GF_AssertFail
_021F526E:
	ldrb r0, [r4, #0x1c]
	add r1, r5, #0
	bl ov01_021F613C
_021F5276:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #3
	bls _021F5282
	b _021F53FA
_021F5282:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F528E: ; jump table
	.short _021F5296 - _021F528E - 2 ; case 0
	.short _021F52EC - _021F528E - 2 ; case 1
	.short _021F53FA - _021F528E - 2 ; case 2
	.short _021F53E6 - _021F528E - 2 ; case 3
_021F5296:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, r6, r0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #1
	beq _021F52D6
	add r1, r5, #0
	add r1, #0xc8
	ldr r1, [r1]
	add r4, r5, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r4, #0xfc
	add r1, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	ldr r4, [r4]
	add r1, #0xb8
	add r2, #0xc0
	add r3, #0xc4
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r4, [r4, #4]
	blx r4
_021F52D6:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r6, #0x22
	mov r1, #1
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	b _021F53FA
_021F52EC:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r6, r0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021F5324
	add r0, r6, #0
	bl ov01_021F477C
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	mov r0, #0
	sub r1, r1, #1
	add r1, r6, r1
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	str r0, [r1]
_021F5324:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	bhi _021F53FA
	add r0, r6, #0
	add r0, #0x10
	bl ov01_021F5024
	cmp r0, #1
	bne _021F53FA
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	blo _021F534A
	mov r0, #1
	str r0, [r6, #0x24]
	b _021F5352
_021F534A:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
_021F5352:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	ldr r0, _021F54A8 ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021F53A8
	sub r0, #0x10
	ldr r0, [r2, r0]
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _021F5392
	add r2, r0, #0
	add r2, #8
	beq _021F5386
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _021F5386
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _021F5388
_021F5386:
	mov r1, #0
_021F5388:
	cmp r1, #0
	beq _021F5392
	ldr r1, [r1]
	add r4, r0, r1
	b _021F5394
_021F5392:
	mov r4, #0
_021F5394:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov01_021FBA00
	cmp r0, #1
	bne _021F53A8
	add r0, r4, #0
	bl ov01_021EA3B0
_021F53A8:
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	cmp r3, #0
	beq _021F53FA
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	lsl r2, r2, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	ldr r1, [r4, r2]
	cmp r1, #0
	blt _021F53FA
	add r0, r5, #0
	add r6, r5, #0
	add r0, #0xc4
	add r6, #0xc8
	ldr r0, [r0]
	ldr r6, [r6]
	mul r6, r0
	cmp r1, r6
	bge _021F53FA
	lsr r0, r2, #3
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r4, r2]
	blx r3
	b _021F53FA
_021F53E6:
	add r6, #0x10
	add r0, r6, #0
	bl ov01_021F5024
	cmp r0, #1
	bne _021F53FA
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_021F53FA:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F541C
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r0, #2
	add r5, #0xb4
	add sp, #0x14
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021F541C:
	add r0, r5, #0
	bl ov01_021F5D10
	cmp r0, #1
	bne _021F54A4
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	mov r2, #0
	mul r0, r1
	add r0, r5, r0
	str r2, [r0, #0x2c]
	add r0, r5, #0
	bl ov01_021F5D20
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021F5472
	mov r1, #0
	b _021F5482
_021F5472:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r1, #2
_021F5482:
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021F54A4
	mov r0, #0
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0x70
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov01_021F5D38
	add r0, r5, #0
	bl ov01_021F5CB4
_021F54A4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F54A8: .word 0x00000864
	thumb_func_end MapLoadManager_Tick

