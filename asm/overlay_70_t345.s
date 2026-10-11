#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224308C
	.public ov70_022430CC
	.public ov70_02243120
	.public ov70_0224316C
	.public ov70_02243254
	.public ov70_022433A8
	.public ov70_02243400
	.extern ov70_02238F9C
	.extern ov70_0224190C
	.extern ov70_02241DB4
	.extern ov70_022421D0
	.extern ov70_02242390
	.extern ov70_02242D44
	.extern ov70_02242FC4
	.extern ov70_02243E8C
	.extern ov70_02243EB8
	.extern ov70_02243F54
	.extern ov70_02243F7C
	.extern ov70_02245E26
	.extern ov70_02245E27
	.extern ov70_02245E84
	.extern ov70_02245F58
	.extern ov70_02245F5C
	.extern ov70_02245FA0

	.text

	.text
	thumb_func_start ov70_0224308C
ov70_0224308C: ; 0x0224308C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #4
	mov r2, #0x20
	bl ov70_02242D44
	ldr r0, [r4, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0xc]
	mov r1, #0x88
	mov r2, #0x28
	bl ov70_02238F9C
	mov r1, #0
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	sub r2, r1, #4
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #1
	str r0, [r4, #0x4c]
	mov r0, #5
	str r0, [r4, #0x50]
	sub r0, r0, #6
	strh r0, [r4, #0x3c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0224308C

	thumb_func_start ov70_022430CC
ov70_022430CC: ; 0x022430CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x64
	bl ov70_022421D0
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022430F6
	cmp r4, #8
	bhi _02243118
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #6
	str r0, [r5, #0x4c]
	strh r4, [r5, #0x3c]
	b _02243118
_022430F6:
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r2, #4
	str r2, [sp]
	mov r1, #0
	ldr r0, [r5, #0x1c]
	add r3, r1, #0
	bl sub_020198FC
	mov r0, #3
	str r0, [r5, #0x4c]
	mov r0, #6
	str r0, [r5, #0x50]
	sub r0, r0, #7
	strh r0, [r5, #0x3c]
_02243118:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov70_022430CC

	thumb_func_start ov70_02243120
ov70_02243120: ; 0x02243120
	push {r4, lr}
	add r4, r0, #0
	mov r1, #4
	bl ov70_02241DB4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x3c
	ldrsh r1, [r4, r0]
	cmp r1, #0
	blt _0224315C
	cmp r1, #8
	ble _02243142
	bl GF_AssertFail
_02243142:
	mov r0, #0x3c
	ldrsh r0, [r4, r0]
	lsl r1, r0, #3
	ldr r0, _02243168 ; =ov70_02245F5C
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02243158
	mov r0, #0
	strh r0, [r4, #0x3e]
	mov r0, #0xc
	b _02243160
_02243158:
	mov r0, #8
	b _02243160
_0224315C:
	sub r0, #0x3e
	pop {r4, pc}
_02243160:
	str r0, [r4, #0x4c]
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	.balign 4, 0
_02243168: .word ov70_02245F5C
	thumb_func_end ov70_02243120

	thumb_func_start ov70_0224316C
ov70_0224316C: ; 0x0224316C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x22
	bl sub_02019688
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r5, #0
	mov r1, #4
	bl ov70_0224190C
	add r0, r5, #0
	add r0, #0x64
	mov r1, #1
	mov r2, #0x1a
	bl MI_CpuFill8
	mov r4, #0
	add r6, r4, #0
_022431A0:
	add r1, r4, #0
	ldr r0, [r5, #0x24]
	add r1, #0x6e
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02243F7C
	cmp r0, #1
	bne _022431C2
	add r2, r5, r4
	ldr r0, _02243244 ; =0x000F0E02
	add r2, #0x64
	mov r1, #1
	b _022431CA
_022431C2:
	add r2, r5, r4
	ldr r0, _02243248 ; =0x00080902
	add r2, #0x64
	mov r1, #0
_022431CA:
	strb r1, [r2]
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x1c]
	add r1, r1, r6
	add r2, r7, #0
	mov r3, #2
	bl ov70_02242FC4
	add r0, r7, #0
	bl String_Delete
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #9
	blt _022431A0
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_020197F4
	ldr r0, [r5, #0xc]
	mov r1, #0x3d
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x3c
	ldrsh r0, [r5, r0]
	ldr r1, _0224324C ; =ov70_02245E26
	ldr r2, _02243250 ; =ov70_02245E27
	lsl r3, r0, #1
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	mov r0, #0x3c
	ldrsh r0, [r5, r0]
	mov r1, #1
	str r0, [r5, #0x48]
	ldr r0, [r5, #0xc]
	bl Sprite_SetDrawFlag
	mov r0, #5
	str r0, [r5, #0x4c]
	sub r0, r0, #6
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243244: .word 0x000F0E02
_02243248: .word 0x00080902
_0224324C: .word ov70_02245E26
_02243250: .word ov70_02245E27
	thumb_func_end ov70_0224316C

	thumb_func_start ov70_02243254
ov70_02243254: ; 0x02243254
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	mov r2, #0x64
	mov r3, #0x20
	bl sub_02019688
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl sub_02019B08
	add r0, r5, #0
	mov r1, #5
	bl ov70_0224190C
	add r0, r5, #0
	add r0, #0x64
	mov r1, #1
	mov r2, #0x1a
	bl MI_CpuFill8
	mov r0, #2
	str r0, [sp]
	ldr r0, _02243388 ; =0x000F0E02
	mov r3, #0x3c
	str r0, [sp, #4]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #4]
	add r3, #0x6e
	bl ov70_02243E8C
	mov r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, _0224338C ; =ov70_02245F5C
	mov r4, #1
	lsl r2, r1, #3
	ldr r0, [r0, r2]
	cmp r0, #1
	blt _0224332C
	mov r7, #0x10
_022432B0:
	lsl r2, r1, #2
	ldr r1, _02243390 ; =ov70_02245E84
	add r0, r5, #0
	ldr r1, [r1, r2]
	add r1, r4, r1
	sub r1, r1, #1
	bl ov70_02243F54
	cmp r0, #0
	ble _022432DA
	mov r1, #0x3c
	ldrsh r1, [r5, r1]
	ldr r0, _02243388 ; =0x000F0E02
	lsl r2, r1, #2
	ldr r1, _02243390 ; =ov70_02245E84
	ldr r2, [r1, r2]
	add r1, r5, r4
	add r2, r2, r1
	add r2, #0x63
	mov r1, #1
	b _022432EE
_022432DA:
	mov r1, #0x3c
	ldrsh r1, [r5, r1]
	ldr r0, _02243394 ; =0x00080902
	lsl r2, r1, #2
	ldr r1, _02243390 ; =ov70_02245E84
	ldr r2, [r1, r2]
	add r1, r5, r4
	add r2, r2, r1
	add r2, #0x63
	mov r1, #0
_022432EE:
	strb r1, [r2]
	mov r1, #5
	str r1, [sp]
	str r0, [sp, #4]
	mov r3, #0x3c
	ldrsh r3, [r5, r3]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	lsl r6, r3, #3
	ldr r3, _02243398 ; =ov70_02245F58
	ldr r1, [r5, #0x24]
	ldr r3, [r3, r6]
	add r2, r2, r7
	add r3, r4, r3
	lsl r6, r3, #2
	ldr r3, _0224339C ; =ov70_02245FA0
	add r3, r3, r6
	sub r3, r3, #4
	ldr r3, [r3]
	bl ov70_02243E8C
	mov r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, _02243398 ; =ov70_02245F58
	add r4, r4, #1
	lsl r2, r1, #3
	add r0, r0, r2
	ldr r0, [r0, #4]
	add r7, #0x10
	cmp r4, r0
	ble _022432B0
_0224332C:
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x24]
	add r2, #0xe0
	mov r3, #0x44
	bl ov70_02243EB8
	mov r1, #0
	ldr r0, [r5, #0x1c]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020196E8
	ldr r0, [r5, #0xc]
	mov r1, #0x2f
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x3e
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0224335A
	mov r0, #0
	b _0224335A
_0224335A:
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x48]
	ldr r1, _022433A0 ; =ov70_02245E26
	lsl r3, r0, #1
	ldr r2, _022433A4 ; =ov70_02245E27
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	add r1, #0x10
	lsl r1, r1, #3
	lsl r2, r2, #3
	bl ov70_02238F9C
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #9
	str r0, [r5, #0x4c]
	sub r0, #0xa
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243388: .word 0x000F0E02
_0224338C: .word ov70_02245F5C
_02243390: .word ov70_02245E84
_02243394: .word 0x00080902
_02243398: .word ov70_02245F58
_0224339C: .word ov70_02245FA0
_022433A0: .word ov70_02245E26
_022433A4: .word ov70_02245E27
	thumb_func_end ov70_02243254

	thumb_func_start ov70_022433A8
ov70_022433A8: ; 0x022433A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x64
	bl ov70_02242390
	add r5, r0, #0
	cmp r5, #4
	bhi _022433D0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022433C6: ; jump table
	.short _022433DA - _022433C6 - 2 ; case 0
	.short _022433DA - _022433C6 - 2 ; case 1
	.short _022433DA - _022433C6 - 2 ; case 2
	.short _022433DA - _022433C6 - 2 ; case 3
	.short _022433DA - _022433C6 - 2 ; case 4
_022433D0:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _022433EA
	b _022433FA
_022433DA:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xa
	str r0, [r4, #0x4c]
	strh r5, [r4, #0x3e]
	b _022433FA
_022433EA:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0xa
	str r0, [r4, #0x4c]
	sub r0, #0xb
	strh r0, [r4, #0x3e]
_022433FA:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022433A8

	thumb_func_start ov70_02243400
ov70_02243400: ; 0x02243400
	push {r4, lr}
	mov r1, #5
	add r4, r0, #0
	bl ov70_02241DB4
	mov r0, #0x3e
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _02243416
	mov r0, #0xc
	b _02243418
_02243416:
	mov r0, #7
_02243418:
	str r0, [r4, #0x4c]
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	thumb_func_end ov70_02243400

