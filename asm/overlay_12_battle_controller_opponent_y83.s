#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225A9E0
	.public ov12_0225AA6C
	.public ov12_0225AAE0
	.extern ov12_0225FFDC
	.extern ov12_02260030
	.extern ov12_022600F0

	.text

	.text
	thumb_func_start ov12_0225A9E0
ov12_0225A9E0: ; 0x0225A9E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0225A9F2
	bl GF_AssertFail
_0225A9F2:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl MI_CpuFill8
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	add r1, r0, #0
	ldr r0, _0225AA60 ; =0x00000195
	ldrb r0, [r6, r0]
	bl BattleHpBar_Util_GetBarTypeFromBattlerSide
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #8]
	str r0, [r4, #0x30]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldr r1, [r5, #8]
	ldr r0, _0225AA64 ; =0x00007FFF
	cmp r1, r0
	bne _0225AA50
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
_0225AA50:
	mov r2, #0xfa
	ldr r0, _0225AA68 ; =ov12_0225FFDC
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AA60: .word 0x00000195
_0225AA64: .word 0x00007FFF
_0225AA68: .word ov12_0225FFDC
	thumb_func_end ov12_0225A9E0

	thumb_func_start ov12_0225AA6C
ov12_0225AA6C: ; 0x0225AA6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0225AA7E
	bl GF_AssertFail
_0225AA7E:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl MI_CpuFill8
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	ldr r1, [r5, #4]
	add r0, r0, #1
	str r1, [r4, #0x38]
	ldr r1, [r5, #0xc]
	str r1, [r4, #0x3c]
	ldr r2, [r5, #8]
	ldr r1, [r4, #0x38]
	sub r1, r2, r1
	str r1, [r4, #0x40]
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _0225AACA
	mov r2, #0xfa
	ldr r0, _0225AADC ; =ov12_02260030
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225AACA:
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl ov12_0226430C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225AADC: .word ov12_02260030
	thumb_func_end ov12_0225AA6C

	thumb_func_start ov12_0225AAE0
ov12_0225AAE0: ; 0x0225AAE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x74
	str r2, [sp]
	bl Heap_Alloc
	add r1, r0, #0
	ldr r0, _0225ABB0 ; =0x00000195
	ldrb r2, [r4, r0]
	mov r0, #1
	tst r0, r2
	beq _0225AB00
	mov r2, #2
	b _0225AB02
_0225AB00:
	mov r2, #0
_0225AB02:
	add r0, r1, #0
	add r0, #0x67
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x66
	strb r0, [r2]
	str r5, [r1]
	ldr r2, [sp]
	str r4, [r1, #4]
	ldrb r3, [r2]
	add r2, r1, #0
	add r2, #0x64
	strb r3, [r2]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	add r2, r1, #0
	add r2, #0x65
	strb r3, [r2]
	ldr r2, [r4, #0x20]
	add r7, r1, #0
	str r2, [r1, #8]
	ldr r2, [sp]
	ldrh r3, [r2, #2]
	add r2, r1, #0
	add r2, #0x68
	strh r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #1]
	add r2, r1, #0
	add r2, #0x6a
	strb r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #8]
	add r2, r1, #0
	add r2, #0x6b
	strb r3, [r2]
	ldr r2, [sp]
	ldr r2, [r2, #4]
	str r2, [r1, #0x6c]
	ldr r2, [sp]
	ldrb r3, [r2, #9]
	add r2, r1, #0
	add r2, #0x70
	strh r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #0xa]
	add r2, r1, #0
	add r2, #0x72
	strh r3, [r2]
	ldr r2, [sp]
	add r3, r1, #0
	mov ip, r2
_0225AB6E:
	mov r4, ip
	ldrh r4, [r4, #0xc]
	strh r4, [r7, #0x24]
	ldr r4, [sp]
	add r7, r7, #2
	add r6, r4, r0
	add r4, r1, r0
	ldrb r5, [r6, #0x14]
	add r4, #0x2c
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x18]
	add r4, #0x30
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x1c]
	add r4, #0x34
	add r0, r0, #1
	strb r5, [r4]
	ldr r4, [r2, #0x20]
	add r2, r2, #4
	str r4, [r3, #0x38]
	mov r4, ip
	add r4, r4, #2
	add r3, r3, #4
	mov ip, r4
	cmp r0, #4
	blt _0225AB6E
	ldr r0, _0225ABB4 ; =ov12_022600F0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225ABB0: .word 0x00000195
_0225ABB4: .word ov12_022600F0
	thumb_func_end ov12_0225AAE0

