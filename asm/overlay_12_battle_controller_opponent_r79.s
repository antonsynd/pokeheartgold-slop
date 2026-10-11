#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225A334
	.public ov12_0225A37C
	.public ov12_0225A414
	.public ov12_0225A4DC
	.public ov12_0225A524
	.public ov12_0225A604
	.public ov12_0225A674
	.public ov12_0225A700
	.public ov12_0225A7AC
	.public ov12_0225A818
	.public ov12_0225A85C
	.extern ov12_0225D890
	.extern ov12_0225D990
	.extern ov12_0225DA18
	.extern ov12_0225DA8C
	.extern ov12_022605D0
	.extern ov12_02261B2C

	.text

	.text
	thumb_func_start ov12_0225A334
ov12_0225A334: ; 0x0225A334
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl Heap_Alloc
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #0xa]
	add r2, r4, #0
	str r5, [r1]
	add r2, #0x94
	ldrb r2, [r2]
	strb r2, [r1, #8]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	add r2, r2, #1
	strb r3, [r1, #9]
	str r4, [r1, #4]
	ldrb r3, [r4, r2]
	mov r2, #1
	tst r2, r3
	beq _0225A36A
	mov r0, #2
	b _0225A36A
_0225A36A:
	strb r0, [r1, #0xb]
	ldr r0, _0225A378 ; =ov12_0225D890
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_0225A378: .word ov12_0225D890
	thumb_func_end ov12_0225A334

	thumb_func_start ov12_0225A37C
ov12_0225A37C: ; 0x0225A37C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl BattleSystem_GetPokepicManager
	mov r0, #5
	mov r1, #0x10
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	ldr r1, _0225A400 ; =0x00000195
	strb r0, [r4, #0xa]
	ldrb r2, [r5, r1]
	mov r1, #1
	tst r1, r2
	beq _0225A3A6
	mov r0, #2
	b _0225A3A6
_0225A3A6:
	strb r0, [r4, #0xb]
	ldr r0, _0225A400 ; =0x00000195
	mov r2, #0
	ldrb r3, [r5, r0]
	mov r0, #1
	add r1, r3, #0
	and r1, r0
	mov r0, #6
	str r2, [sp]
	ldr r2, _0225A404 ; =ov07_022377F4 + 36
	mul r0, r1
	ldrsh r2, [r2, r0]
	str r2, [sp, #4]
	ldr r2, _0225A408 ; =ov07_022377F4 + 38
	ldrsh r0, [r2, r0]
	str r0, [sp, #8]
	ldrh r2, [r6, #2]
	add r0, r7, #0
	bl ov12_02261B2C
	str r0, [r5, #0x18]
	str r0, [r4, #4]
	ldr r3, _0225A400 ; =0x00000195
	ldr r2, [r6, #4]
	ldrb r0, [r5, r3]
	lsl r2, r2, #1
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0225A40C ; =ov07_022377DC
	add r0, r0, r1
	ldrsh r0, [r2, r0]
	add r1, r4, #0
	mov r2, #0
	strh r0, [r4, #0xc]
	str r7, [r4]
	ldrb r0, [r6]
	strb r0, [r4, #8]
	sub r0, r3, #1
	ldrb r0, [r5, r0]
	strb r0, [r4, #9]
	ldr r0, _0225A410 ; =ov12_0225D990
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A400: .word 0x00000195
_0225A404: .word ov07_022377F4 + 36
_0225A408: .word ov07_022377F4 + 38
_0225A40C: .word ov07_022377DC
_0225A410: .word ov12_0225D990
	thumb_func_end ov12_0225A37C

	thumb_func_start ov12_0225A414
ov12_0225A414: ; 0x0225A414
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x28
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl MIi_CpuClearFast
	mov r0, #0x65
	str r7, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	add r1, r0, #0
	ldr r0, _0225A4D4 ; =0x00000195
	ldrb r0, [r6, r0]
	bl BattleHpBar_Util_GetBarTypeFromBattlerSide
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x1e
	add r0, r4, #0
	add r0, #0x49
	strb r1, [r0]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r5, #8]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r2, [r5, #6]
	add r0, #0x26
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0x14]
	add r0, #0x4d
	strb r2, [r0]
	add r0, r4, #0
	ldr r2, [r5, #0x10]
	add r0, #0x27
	strb r2, [r0]
	add r0, r4, #0
	bl BattleHpBar_SetEnabled
	mov r2, #0
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	mvn r2, r2
	bl ov12_0226498C
	mov r2, #0xfa
	ldr r0, _0225A4D8 ; =ov12_0225DA18
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A4D4: .word 0x00000195
_0225A4D8: .word ov12_0225DA18
	thumb_func_end ov12_0225A414

	thumb_func_start ov12_0225A4DC
ov12_0225A4DC: ; 0x0225A4DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x28
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl MIi_CpuClearFast
	mov r0, #0x65
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r5, #0x94
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02264FB0
	mov r2, #0xfa
	ldr r0, _0225A520 ; =ov12_0225DA8C
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225A520: .word ov12_0225DA8C
	thumb_func_end ov12_0225A4DC

	thumb_func_start ov12_0225A524
ov12_0225A524: ; 0x0225A524
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x3c
	add r7, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x3c
	bl MIi_CpuClearFast
	mov r2, #0
	strb r2, [r4, #0xa]
	strb r2, [r4, #0xb]
	str r5, [r4]
	ldrb r0, [r7]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #8]
	ldr r0, [sp]
	add r5, r7, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	add r6, r4, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r4, #4]
	add r0, r4, #0
	ldrb r1, [r7, #1]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x24
	ldrsh r0, [r7, r0]
	strh r0, [r4, #0x36]
	ldrh r0, [r7, #0x26]
	strh r0, [r4, #0x38]
	add r0, r7, #0
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3b
	strb r1, [r0]
_0225A596:
	mov r3, #0
_0225A598:
	add r0, r5, r3
	ldrb r1, [r0, #8]
	add r0, r6, r3
	add r3, r3, #1
	strb r1, [r0, #0x10]
	cmp r3, #6
	blt _0225A598
	add r2, r2, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r2, #2
	blt _0225A596
	mov r0, #0
	add r3, r0, #0
_0225A5B4:
	add r2, r7, r0
	ldrb r1, [r2, #8]
	cmp r1, #2
	bne _0225A5C2
	add r1, r4, r0
	strb r3, [r1, #0x1c]
	b _0225A5C8
_0225A5C2:
	ldrb r2, [r2, #2]
	add r1, r4, r0
	strb r2, [r1, #0x1c]
_0225A5C8:
	add r0, r0, #1
	cmp r0, #6
	blt _0225A5B4
	mov r3, #0
	add r5, r7, #0
	add r6, r4, #0
_0225A5D4:
	ldrh r0, [r5, #0x14]
	add r2, r7, r3
	add r5, r5, #2
	strh r0, [r6, #0x24]
	ldrb r1, [r2, #0x1c]
	add r0, r4, r3
	add r0, #0x2c
	strb r1, [r0]
	add r0, r4, r3
	add r2, #0x20
	ldrb r1, [r2]
	add r0, #0x30
	add r3, r3, #1
	add r6, r6, #2
	strb r1, [r0]
	cmp r3, #4
	blt _0225A5D4
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0225A524

	thumb_func_start ov12_0225A604
ov12_0225A604: ; 0x0225A604
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x24
	add r7, r2, #0
	bl Heap_Alloc
	add r3, r0, #0
	mov r1, #0x65
	mov r4, #0
	add r0, #0x20
	strb r4, [r0]
	ldr r0, [sp]
	str r5, [r3]
	add r0, #0x94
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r7, #0
	strb r0, [r3, #0x1c]
	ldr r0, [sp]
	add r6, r3, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r3, #0x1d]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r3, #0x1e]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r3, #4]
	ldrb r0, [r7, #1]
	strb r0, [r3, #0x1f]
_0225A646:
	ldrh r0, [r5, #4]
	add r2, r7, r4
	add r1, r3, r4
	strh r0, [r6, #0xc]
	ldrb r0, [r2, #0xc]
	add r4, r4, #1
	add r5, r5, #2
	strb r0, [r1, #0x14]
	ldrb r0, [r2, #0x10]
	add r6, r6, #2
	cmp r4, #4
	strb r0, [r1, #0x18]
	blt _0225A646
	ldrh r0, [r7, #2]
	add r1, r3, #0
	mov r2, #0
	strh r0, [r3, #0x22]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225A604

	thumb_func_start ov12_0225A674
ov12_0225A674: ; 0x0225A674
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	mov r0, #5
	mov r1, #0x34
	add r5, r2, #0
	bl Heap_Alloc
	add r6, r0, #0
	mov r0, #0
	strb r0, [r6, #0xf]
	ldr r0, [sp]
	str r0, [r6]
	add r0, r7, #0
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r6, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r7, r0]
	add r0, r0, #1
	strb r1, [r6, #0xd]
	ldrb r0, [r7, r0]
	strb r0, [r6, #0xe]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0x30]
	add r0, r7, #0
	add r0, #0x28
	str r0, [r6, #4]
	add r0, r6, #0
	ldrb r1, [r5, #1]
	add r0, #0x32
	strb r1, [r0]
	ldr r0, [sp]
	add r1, sp, #4
	bl ov12_0223C1C4
	ldr r0, [sp]
	bl BattleSystem_GetMaxBattlers
	add r4, r0, #0
	ldr r0, [sp]
	bl BattleSystem_GetBattleType
	mov r0, #0
	cmp r4, #0
	ble _0225A6F0
	add r1, r6, #0
_0225A6D6:
	ldrh r2, [r5, #4]
	add r0, r0, #1
	strh r2, [r1, #0x10]
	ldrh r2, [r5, #6]
	strh r2, [r1, #0x12]
	ldrh r2, [r5, #8]
	strh r2, [r1, #0x14]
	ldrh r2, [r5, #0xa]
	add r5, #8
	strh r2, [r1, #0x16]
	add r1, #8
	cmp r0, r4
	blt _0225A6D6
_0225A6F0:
	ldr r0, [r7, #8]
	add r1, r6, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225A674

	thumb_func_start ov12_0225A700
ov12_0225A700: ; 0x0225A700
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	str r2, [sp, #4]
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x34
	bl Heap_Alloc
	str r0, [r4, #8]
	mov r0, #5
	mov r1, #0x38
	bl Heap_Alloc
	ldr r1, [r4, #8]
	str r0, [r1, #4]
	mov r0, #5
	bl SaveArray_Party_Alloc
	ldr r1, [r4, #8]
	mov r6, #0
	ldr r1, [r1, #4]
	ldr r3, [sp, #4]
	str r0, [r1]
	strb r6, [r4, #0xe]
	str r5, [r4]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r4, #0
	strb r0, [r4, #0xc]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r4, #0xd]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x15]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x16]
_0225A76A:
	ldr r0, [sp, #4]
	ldr r1, [r4, #8]
	add r7, r0, r6
	ldrb r0, [r7, #4]
	add r1, r1, r6
	mov r2, #0
	strb r0, [r1, #0xc]
_0225A778:
	add r0, r3, r2
	ldrb r1, [r0, #8]
	add r0, r5, r2
	add r2, r2, #1
	strb r1, [r0, #0x18]
	cmp r2, #6
	blt _0225A778
	add r7, #0x20
	ldrb r1, [r7]
	add r0, r4, r6
	add r0, #0x30
	add r6, r6, #1
	strb r1, [r0]
	add r3, r3, #6
	add r5, r5, #6
	cmp r6, #4
	blt _0225A76A
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225A700

	thumb_func_start ov12_0225A7AC
ov12_0225A7AC: ; 0x0225A7AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	add r7, r2, #0
	bl Heap_Alloc
	add r2, r0, #0
	mov r3, #0
	strb r3, [r2, #0xa]
	str r4, [r2]
	ldrb r0, [r7]
	add r5, r7, #0
	add r6, r2, #0
	strb r0, [r2, #8]
	ldrb r0, [r7, #1]
	strb r0, [r2, #9]
	ldrb r0, [r7, #2]
	strb r0, [r2, #0xb]
	ldr r0, [r7, #0x20]
	str r0, [r2, #0x10]
	ldrb r0, [r7, #3]
	strb r0, [r2, #0x16]
	add r0, r7, #0
	strh r3, [r2, #0x14]
	add r0, #0x24
	ldrb r0, [r0]
	strb r0, [r2, #0x18]
_0225A7E6:
	add r0, r7, r3
	ldrb r1, [r0, #4]
	add r0, r2, r3
	mov r4, #0
	strb r1, [r0, #0xc]
_0225A7F0:
	add r0, r5, r4
	ldrb r1, [r0, #8]
	add r0, r6, r4
	add r4, r4, #1
	strb r1, [r0, #0x1c]
	cmp r4, #6
	blt _0225A7F0
	add r3, r3, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r3, #4
	blt _0225A7E6
	ldr r0, [sp]
	add r1, r2, #0
	ldr r0, [r0, #0x10]
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225A7AC

	thumb_func_start ov12_0225A818
ov12_0225A818: ; 0x0225A818
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x1c
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r6, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #0xd]
	add r0, r5, #0
	add r0, #0x28
	str r0, [r1, #4]
	ldrh r0, [r4, #2]
	str r0, [r1, #0x10]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #4]
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x14]
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225A818

	thumb_func_start ov12_0225A85C
ov12_0225A85C: ; 0x0225A85C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov12_0223A934
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r6, [r4]
	ldrb r0, [r5]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #4]
	ldrb r0, [r7, r1]
	strb r0, [r4, #5]
	ldrh r2, [r5, #2]
	lsl r0, r2, #1
	add r2, r2, r0
	add r0, sp, #4
	strh r2, [r0, #2]
	mov r2, #2
	strb r2, [r0, #1]
	ldrb r0, [r5, #1]
	ldrb r1, [r7, r1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, sp, #4
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225A8C0 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A8C0: .word ov12_022605D0
	thumb_func_end ov12_0225A85C

