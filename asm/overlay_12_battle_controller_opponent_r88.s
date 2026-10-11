#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225AF74
	.public ov12_0225B028
	.public ov12_0225B060
	.public ov12_0225B0A0
	.public ov12_0225B0E8
	.public ov12_0225B120
	.public ov12_0225B16C
	.public ov12_0225B1A8
	.public ov12_0225B200
	.public ov12_0225B234
	.public ov12_0225B26C
	.public ov12_0225B2A4
	.public ov12_0225B2F8
	.public ov12_0225B34C
	.public ov12_0225B3A0
	.public ov12_0225B3D4
	.extern ov12_022605D0
	.extern ov12_022609F8
	.extern ov12_02260B30
	.extern ov12_02260BA0
	.extern ov12_02260C58
	.extern ov12_02260CDC
	.extern ov12_02260D28
	.extern ov12_02261928
	.extern ov12_022619E4
	.extern ov12_02261AD4
	.extern ov12_02261CA8

	.text

	.text
	thumb_func_start ov12_0225AF74
ov12_0225AF74: ; 0x0225AF74
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
	ldr r0, _0225B024 ; =0x00000195
	ldrb r0, [r6, r0]
	bl BattleHpBar_Util_GetBarTypeFromBattlerSide
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	mov r2, #0
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
	str r2, [r4, #0x30]
	ldr r0, [r5, #8]
	sub r2, #0x21
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r1, [r5, #6]
	add r0, #0x26
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x27
	strb r1, [r0]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl ov12_0226498C
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl ov12_0226430C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B024: .word 0x00000195
	thumb_func_end ov12_0225AF74

	thumb_func_start ov12_0225B028
ov12_0225B028: ; 0x0225B028
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r5, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r1, #9]
	ldrh r0, [r4, #2]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xe]
	ldr r0, _0225B05C ; =ov12_022609F8
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225B05C: .word ov12_022609F8
	thumb_func_end ov12_0225B028

	thumb_func_start ov12_0225B060
ov12_0225B060: ; 0x0225B060
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r6, [r1]
	ldr r0, [r5, #0x20]
	str r0, [r1, #4]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #9]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xb]
	strb r2, [r1, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r1, #0xd]
	ldr r0, _0225B09C ; =ov12_02260B30
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	nop
_0225B09C: .word ov12_02260B30
	thumb_func_end ov12_0225B060

	thumb_func_start ov12_0225B0A0
ov12_0225B0A0: ; 0x0225B0A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0225B0CA:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0225B0CA
	ldr r0, _0225B0E4 ; =ov12_02260BA0
	mov r2, #0
	strb r2, [r1, #0xe]
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225B0E4: .word ov12_02260BA0
	thumb_func_end ov12_0225B0A0

	thumb_func_start ov12_0225B0E8
ov12_0225B0E8: ; 0x0225B0E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	ldr r0, _0225B11C ; =ov12_02260C58
	strb r2, [r1, #0xe]
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225B11C: .word ov12_02260C58
	thumb_func_end ov12_0225B0E8

	thumb_func_start ov12_0225B120
ov12_0225B120: ; 0x0225B120
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0225B14A:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0225B14A
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0225B168 ; =ov12_02260BA0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	nop
_0225B168: .word ov12_02260BA0
	thumb_func_end ov12_0225B120

	thumb_func_start ov12_0225B16C
ov12_0225B16C: ; 0x0225B16C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0225B1A4 ; =ov12_02260C58
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	nop
_0225B1A4: .word ov12_02260C58
	thumb_func_end ov12_0225B16C

	thumb_func_start ov12_0225B1A8
ov12_0225B1A8: ; 0x0225B1A8
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, _0225B1F8 ; =0x00000196
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0225B1E6
	bl BattleSystem_GetMessageLoader
	add r1, r0, #0
	ldr r2, _0225B1FC ; =0x0000039B
	add r0, sp, #0
	strh r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #1]
	add r0, r5, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	add r0, r5, #0
	mov r1, #0
	bl BattleSystem_GetWindow
	mov r1, #1
	bl WaitingIcon_New
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223BB80
_0225B1E6:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x37
	bl ov12_0226430C
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_0225B1F8: .word 0x00000196
_0225B1FC: .word 0x0000039B
	thumb_func_end ov12_0225B1A8

	thumb_func_start ov12_0225B200
ov12_0225B200: ; 0x0225B200
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl ov12_02261CA8
	add r0, sp, #0
	mov r1, #5
	bl ov07_0223494C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov12_0226430C
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225B200

	thumb_func_start ov12_0225B234
ov12_0225B234: ; 0x0225B234
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0225B268 ; =ov12_02260CDC
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225B268: .word ov12_02260CDC
	thumb_func_end ov12_0225B234

	thumb_func_start ov12_0225B26C
ov12_0225B26C: ; 0x0225B26C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl Heap_Alloc
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0225B2A0 ; =ov12_02260D28
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225B2A0: .word ov12_02260D28
	thumb_func_end ov12_0225B26C

	thumb_func_start ov12_0225B2A4
ov12_0225B2A4: ; 0x0225B2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov12_02261928
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3b
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B2F4 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B2F4: .word ov12_022605D0
	thumb_func_end ov12_0225B2A4

	thumb_func_start ov12_0225B2F8
ov12_0225B2F8: ; 0x0225B2F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r3, sp, #0
	add r6, r1, #0
	bl ov12_022619E4
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3c
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B348 ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B348: .word ov12_022605D0
	thumb_func_end ov12_0225B2F8

	thumb_func_start ov12_0225B34C
ov12_0225B34C: ; 0x0225B34C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov12_02261AD4
	add r0, r5, #0
	bl BattleSystem_GetMessageLoader
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3d
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl BattleSystem_PrintBattleMessage
	strb r0, [r4, #6]
	ldr r0, _0225B39C ; =ov12_022605D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B39C: .word ov12_022605D0
	thumb_func_end ov12_0225B34C

	thumb_func_start ov12_0225B3A0
ov12_0225B3A0: ; 0x0225B3A0
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl ov12_02261CA8
	add r0, sp, #0
	mov r1, #5
	bl ov07_02234A20
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov12_0226430C
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0225B3A0

	thumb_func_start ov12_0225B3D4
ov12_0225B3D4: ; 0x0225B3D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r0, _0225B424 ; =0x00000195
	mov r1, #1
	ldrb r0, [r5, r0]
	add r4, r2, #0
	tst r0, r1
	beq _0225B3EA
	mov r1, #0x75
	b _0225B3EC
_0225B3EA:
	sub r1, #0x76
_0225B3EC:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225B3FC
	cmp r0, #1
	beq _0225B40C
	cmp r0, #2
	beq _0225B404
	b _0225B412
_0225B3FC:
	ldr r0, _0225B428 ; =0x000006FE
	bl sub_0200602C
	b _0225B412
_0225B404:
	ldr r0, _0225B42C ; =0x000006FC
	bl sub_0200602C
	b _0225B412
_0225B40C:
	ldr r0, _0225B430 ; =0x000006FD
	bl sub_0200602C
_0225B412:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov12_0226430C
	pop {r4, r5, r6, pc}
	nop
_0225B424: .word 0x00000195
_0225B428: .word 0x000006FE
_0225B42C: .word 0x000006FC
_0225B430: .word 0x000006FD
	thumb_func_end ov12_0225B3D4

