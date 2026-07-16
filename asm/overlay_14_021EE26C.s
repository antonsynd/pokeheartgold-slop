#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EE26C.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021EE26C
ov14_021EE26C: ; 0x021EE26C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r4, [r1]
	sub r4, #0x1e
	add r1, r4, #0
	bl ov14_021E6480
	cmp r0, #0
	bne _021EE29A
	ldr r0, _021EE320 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #6
	mov r2, #0x25
	bl ov14_021F67B0
	mov r0, #0x5d
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EE29A:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EE2D2
	ldr r0, _021EE320 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0x25
	bl ov14_021F685C
	mov r0, #0x5d
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EE2D2:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021EE2FA
	ldr r0, _021EE320 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	mov r2, #5
	mov r3, #0x25
	bl ov14_021F685C
	mov r0, #0x5d
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EE2FA:
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	add r0, #0x25
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov14_021F3488
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r1, _021EE324 ; =ov14_021E96C8
	add r0, r5, #0
	mov r2, #0x5e
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021EE320: .word 0x000005F3
_021EE324: .word ov14_021E96C8
	thumb_func_end ov14_021EE26C

	thumb_func_start ov14_021EE328
ov14_021EE328: ; 0x021EE328
	ldr r3, _021EE330 ; =ov14_021F0234
	ldr r1, _021EE334 ; =ov14_021E9450
	mov r2, #0xe
	bx r3
	.balign 4, 0
_021EE330: .word ov14_021F0234
_021EE334: .word ov14_021E9450
	thumb_func_end ov14_021EE328

	thumb_func_start ov14_021EE338
ov14_021EE338: ; 0x021EE338
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F4BC0
	add r0, r4, #0
	bl ov14_021F4848
	add r0, r4, #0
	bl ov14_021F48B4
	add r0, r4, #0
	bl ov14_021F57B8
	add r0, r4, #0
	mov r1, #0x5f
	bl ov14_021F10B4
	pop {r4, pc}
	thumb_func_end ov14_021EE338

	thumb_func_start ov14_021EE35C
ov14_021EE35C: ; 0x021EE35C
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F60A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8560
	ldr r1, _021EE37C ; =ov14_021E95C8
	add r0, r4, #0
	mov r2, #0x60
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE37C: .word ov14_021E95C8
	thumb_func_end ov14_021EE35C

	thumb_func_start ov14_021EE380
ov14_021EE380: ; 0x021EE380
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	ldr r2, _021EE3C4 ; =0x0000043C
	str r1, [r0, r2]
	ldr r3, [r4, #0x34]
	add r0, r4, #0
	ldr r2, [r3, r2]
	mov r1, #1
	bl ov14_021F6AC0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0xe
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x61
	pop {r4, pc}
	nop
_021EE3C4: .word 0x0000043C
	thumb_func_end ov14_021EE380

	thumb_func_start ov14_021EE3C8
ov14_021EE3C8: ; 0x021EE3C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bhi _021EE402
	bhs _021EE472
	cmp r0, #9
	bhi _021EE4A4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EE3EE: ; jump table
	.short _021EE40C - _021EE3EE - 2 ; case 0
	.short _021EE416 - _021EE3EE - 2 ; case 1
	.short _021EE420 - _021EE3EE - 2 ; case 2
	.short _021EE42A - _021EE3EE - 2 ; case 3
	.short _021EE434 - _021EE3EE - 2 ; case 4
	.short _021EE43E - _021EE3EE - 2 ; case 5
	.short _021EE448 - _021EE3EE - 2 ; case 6
	.short _021EE45A - _021EE3EE - 2 ; case 7
	.short _021EE46A - _021EE3EE - 2 ; case 8
	.short _021EE48A - _021EE3EE - 2 ; case 9
_021EE402:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021EE494
	b _021EE4A4
_021EE40C:
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F1448
	pop {r4, pc}
_021EE416:
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1448
	pop {r4, pc}
_021EE420:
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F1448
	pop {r4, pc}
_021EE42A:
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F1448
	pop {r4, pc}
_021EE434:
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F1448
	pop {r4, pc}
_021EE43E:
	add r0, r4, #0
	mov r1, #5
	bl ov14_021F1448
	pop {r4, pc}
_021EE448:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F1504
	pop {r4, pc}
_021EE45A:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1504
	pop {r4, pc}
_021EE46A:
	add r0, r4, #0
	bl ov14_021F1540
	pop {r4, pc}
_021EE472:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EE4A4
	add r0, r4, #0
	mov r1, #0x71
	bl ov14_021F0244
	pop {r4, pc}
_021EE48A:
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
_021EE494:
	ldr r0, _021EE4A8 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F1534
	pop {r4, pc}
_021EE4A4:
	mov r0, #0x61
	pop {r4, pc}
	.balign 4, 0
_021EE4A8: .word 0x000005DC
	thumb_func_end ov14_021EE3C8

	thumb_func_start ov14_021EE4AC
ov14_021EE4AC: ; 0x021EE4AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8588
	ldr r1, _021EE4D4 ; =ov14_021E9604
	add r0, r4, #0
	mov r2, #0x63
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EE4D4: .word ov14_021E9604
	thumb_func_end ov14_021EE4AC

	thumb_func_start ov14_021EE4D8
ov14_021EE4D8: ; 0x021EE4D8
	ldr r3, _021EE4E0 ; =ov14_021F10DC
	mov r1, #0x64
	bx r3
	nop
_021EE4E0: .word ov14_021F10DC
	thumb_func_end ov14_021EE4D8

	thumb_func_start ov14_021EE4E4
ov14_021EE4E4: ; 0x021EE4E4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F4CA0
	ldr r1, _021EE4F8 ; =ov14_021E98AC
	add r0, r4, #0
	mov r2, #0x65
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE4F8: .word ov14_021E98AC
	thumb_func_end ov14_021EE4E4

	thumb_func_start ov14_021EE4FC
ov14_021EE4FC: ; 0x021EE4FC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #7
	bl ov14_021F6AC0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	bl ov14_021F3F6C
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F40E8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	mov r0, #0xe
	pop {r4, pc}
	thumb_func_end ov14_021EE4FC

	thumb_func_start ov14_021EE538
ov14_021EE538: ; 0x021EE538
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8588
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r1, _021EE574 ; =ov14_021E99F0
	add r0, r4, #0
	mov r2, #0x67
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE574: .word ov14_021E99F0
	thumb_func_end ov14_021EE538

	thumb_func_start ov14_021EE578
ov14_021EE578: ; 0x021EE578
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r0, [r4, #4]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021EE5A0
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	mov r3, #0x25
	bl ov14_021F685C
	mov r0, #0x5e
	str r0, [r4, #0x30]
	mov r0, #6
	pop {r4, pc}
_021EE5A0:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov14_021F3488
	ldr r0, [r4, #0x34]
	mov r1, #0x27
	bl ov14_021F6654
	add r0, r4, #0
	bl ov14_021F4CA0
	ldr r1, _021EE5C4 ; =ov14_021E98AC
	add r0, r4, #0
	mov r2, #0x68
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE5C4: .word ov14_021E98AC
	thumb_func_end ov14_021EE578

	thumb_func_start ov14_021EE5C8
ov14_021EE5C8: ; 0x021EE5C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8048
	ldr r1, _021EE5E4 ; =ov14_021E952C
	add r0, r4, #0
	mov r2, #0x69
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE5E4: .word ov14_021E952C
	thumb_func_end ov14_021EE5C8

	thumb_func_start ov14_021EE5E8
ov14_021EE5E8: ; 0x021EE5E8
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x25
	ldrb r2, [r4, #0x1f]
	ldrb r1, [r1]
	strb r1, [r4, #0x1f]
	add r1, r4, #0
	add r1, #0x25
	ldrb r1, [r1]
	cmp r2, r1
	bne _021EE604
	mov r0, #0x6a
	pop {r4, pc}
_021EE604:
	cmp r2, r1
	ldrb r1, [r4, #0x1f]
	bls _021EE62E
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	bl ov14_021E783C
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r1, _021EE65C ; =ov14_021E92AC
	b _021EE650
_021EE62E:
	bl ov14_021F2DE8
	ldrb r1, [r4, #0x1f]
	add r0, r4, #0
	bl ov14_021E7930
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov14_021E783C
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r1, _021EE660 ; =ov14_021E9370
_021EE650:
	add r0, r4, #0
	mov r2, #0x6a
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EE65C: .word ov14_021E92AC
_021EE660: .word ov14_021E9370
	thumb_func_end ov14_021EE5E8

	thumb_func_start ov14_021EE664
ov14_021EE664: ; 0x021EE664
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r2, #2
	add r1, #0x22
	strb r2, [r1]
	bl ov14_021F08BC
	ldr r1, _021EE680 ; =ov14_021E9234
	add r0, r4, #0
	mov r2, #0x6b
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EE680: .word ov14_021E9234
	thumb_func_end ov14_021EE664

	thumb_func_start ov14_021EE684
ov14_021EE684: ; 0x021EE684
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	ldr r0, _021EE6C8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	bl ov14_021E637C
	add r1, r4, #0
	add r1, #0xe4
	add r4, #0xe8
	ldr r1, [r1]
	ldr r2, [r4]
	add r0, r5, #0
	bl ov14_021E6548
	add r0, r5, #0
	bl ov14_021F08F0
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8094
	ldr r1, _021EE6CC ; =ov14_021E954C
	add r0, r5, #0
	mov r2, #0x6c
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021EE6C8: .word 0x000005EA
_021EE6CC: .word ov14_021E954C
	thumb_func_end ov14_021EE684

	thumb_func_start ov14_021EE6D0
ov14_021EE6D0: ; 0x021EE6D0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl ov14_021F5EB4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r1, _021EE6F4 ; =ov14_021E95B4
	add r0, r4, #0
	mov r2, #0x6d
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EE6F4: .word ov14_021E95B4
	thumb_func_end ov14_021EE6D0

	thumb_func_start ov14_021EE6F8
ov14_021EE6F8: ; 0x021EE6F8
	push {r4, lr}
	mov r1, #0
	add r2, r1, #0
	add r4, r0, #0
	bl ov14_021F6AC0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	add r0, r4, #0
	mov r1, #0x1e
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	mov r0, #0x5b
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE6F8

	thumb_func_start ov14_021EE728
ov14_021EE728: ; 0x021EE728
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	ldr r0, _021EE7B0 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	bl ov14_021E637C
	add r1, r4, #0
	add r1, #0xe4
	add r4, #0xe8
	ldr r1, [r1]
	ldr r2, [r4]
	add r0, r5, #0
	bl ov14_021E6548
	add r0, r5, #0
	bl ov14_021F08F0
	ldr r0, [r5, #0x34]
	mov r1, #0x28
	bl ov14_021F6678
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	cmp r1, #0xff
	bne _021EE78E
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	ldr r0, [r5, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r5, #0
	mov r1, #0x1e
	bl ov14_021E7588
	b _021EE7AC
_021EE78E:
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	ldr r0, [r5, #0x34]
	mov r1, #7
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
_021EE7AC:
	mov r0, #0x5b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EE7B0: .word 0x000005EA
	thumb_func_end ov14_021EE728

	thumb_func_start ov14_021EE7B4
ov14_021EE7B4: ; 0x021EE7B4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0xc
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE7B4

	thumb_func_start ov14_021EE7C4
ov14_021EE7C4: ; 0x021EE7C4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x29
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE7C4

	thumb_func_start ov14_021EE7D4
ov14_021EE7D4: ; 0x021EE7D4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x24
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE7D4

	thumb_func_start ov14_021EE7E4
ov14_021EE7E4: ; 0x021EE7E4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x5b
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE7E4

	thumb_func_start ov14_021EE7F4
ov14_021EE7F4: ; 0x021EE7F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x5b
	pop {r4, pc}
	thumb_func_end ov14_021EE7F4

	thumb_func_start ov14_021EE810
ov14_021EE810: ; 0x021EE810
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x61
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE810

	thumb_func_start ov14_021EE820
ov14_021EE820: ; 0x021EE820
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x16
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE820

	thumb_func_start ov14_021EE830
ov14_021EE830: ; 0x021EE830
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x3d
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE830

	thumb_func_start ov14_021EE840
ov14_021EE840: ; 0x021EE840
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x42
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE840

	thumb_func_start ov14_021EE850
ov14_021EE850: ; 0x021EE850
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x51
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EE850

	thumb_func_start ov14_021EE860
ov14_021EE860: ; 0x021EE860
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x27
	bl ov14_021F685C
	mov r0, #0x51
	pop {r4, pc}
	thumb_func_end ov14_021EE860

	thumb_func_start ov14_021EE87C
ov14_021EE87C: ; 0x021EE87C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EE976
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EE8CE
	ldr r0, _021EEBDC ; =0x000005EB
	bl PlaySE
	ldr r2, [r4, #0x34]
	ldr r1, _021EEBE0 ; =0x000040B8
	add r0, r2, r1
	add r1, r1, #4
	add r1, r2, r1
	bl System_GetTouchNewCoords
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F18B0
	pop {r3, r4, r5, pc}
_021EE8CE:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021EE956
	add r0, r4, #0
	add r0, #0x21
	ldrb r5, [r0]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r1, [r4, #0x34]
	ldr r0, _021EEBE4 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EE94A
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EE94A:
	ldr r1, _021EEBE8 ; =ov14_021EA674
	add r0, r4, #0
	mov r2, #0x76
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021EE956:
	ldr r0, [r4, #0x34]
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x75
	pop {r3, r4, r5, pc}
_021EE976:
	add r0, r4, #0
	bl ov14_021F74B0
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021EE9BA
	blo _021EE98A
	b _021EEB08
_021EE98A:
	cmp r5, #0x25
	bhi _021EE9AE
	sub r0, #0x1e
	bmi _021EE9B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EE99E: ; jump table
	.short _021EE9CE - _021EE99E - 2 ; case 0
	.short _021EE9EC - _021EE99E - 2 ; case 1
	.short _021EEA20 - _021EE99E - 2 ; case 2
	.short _021EEA54 - _021EE99E - 2 ; case 3
	.short _021EEA66 - _021EE99E - 2 ; case 4
	.short _021EEB3C - _021EE99E - 2 ; case 5
	.short _021EEA78 - _021EE99E - 2 ; case 6
	.short _021EEA8A - _021EE99E - 2 ; case 7
_021EE9AE:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	bne _021EE9B8
	b _021EEB66
_021EE9B8:
	b _021EEB92
_021EE9BA:
	add r0, r1, #1
	cmp r5, r0
	bhi _021EE9C6
	bne _021EE9C4
	b _021EEB54
_021EE9C4:
	b _021EEB92
_021EE9C6:
	add r0, r1, #2
	cmp r5, r0
	beq _021EEABE
	b _021EEB92
_021EE9CE:
	ldr r0, _021EEBEC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	bl ov14_021F1128
	pop {r3, r4, r5, pc}
_021EE9EC:
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x1e
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #0x75
	bl ov14_021F028C
	pop {r3, r4, r5, pc}
_021EEA20:
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #0x1e
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #0x75
	bl ov14_021F0314
	pop {r3, r4, r5, pc}
_021EEA54:
	ldr r0, _021EEBF4 ; =0x00000632
	bl PlaySE
	add r0, r4, #0
	mov r1, #8
	mov r2, #0xab
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EEA66:
	ldr r0, _021EEBF4 ; =0x00000632
	bl PlaySE
	add r0, r4, #0
	mov r1, #9
	mov r2, #0xac
	bl ov14_021F2330
	pop {r3, r4, r5, pc}
_021EEA78:
	ldr r0, _021EEBEC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xad
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EEA8A:
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0x21
	ldrb r5, [r0]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0xae
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EEABE:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	cmp r0, #0x1e
	beq _021EEACC
	b _021EEBD6
_021EEACC:
	ldr r0, _021EEBF8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021EEAEC
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x75
	bl ov14_021F028C
	pop {r3, r4, r5, pc}
_021EEAEC:
	mov r0, #0x10
	tst r0, r1
	beq _021EEBD6
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x75
	bl ov14_021F0314
	pop {r3, r4, r5, pc}
_021EEB08:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x1e
	bhs _021EEB1E
	add r0, r4, #0
	bl ov14_021E7588
	b _021EEB2C
_021EEB1E:
	cmp r1, #0x24
	beq _021EEB2C
	cmp r1, #0x25
	beq _021EEB2C
	add r0, r4, #0
	bl ov14_021E765C
_021EEB2C:
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x76
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EEB3C:
	ldr r0, _021EEBEC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E765C
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x93
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EEB54:
	ldr r0, _021EEBEC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x94
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EEB66:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x1e
	bhs _021EEB7C
	add r0, r4, #0
	bl ov14_021E7588
	b _021EEB8A
_021EEB7C:
	cmp r1, #0x24
	beq _021EEB8A
	cmp r1, #0x25
	beq _021EEB8A
	add r0, r4, #0
	bl ov14_021E765C
_021EEB8A:
	ldr r0, _021EEBF0 ; =0x000005DC
	bl PlaySE
	b _021EEBD6
_021EEB92:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EEBD6
	ldr r0, _021EEBEC ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x24
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	mov r1, #0x24
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F1808
	pop {r3, r4, r5, pc}
_021EEBD6:
	mov r0, #0x75
	pop {r3, r4, r5, pc}
	nop
_021EEBDC: .word 0x000005EB
_021EEBE0: .word 0x000040B8
_021EEBE4: .word 0x000088C8
_021EEBE8: .word ov14_021EA674
_021EEBEC: .word 0x000005DD
_021EEBF0: .word 0x000005DC
_021EEBF4: .word 0x00000632
_021EEBF8: .word gSystem
	thumb_func_end ov14_021EE87C

	thumb_func_start ov14_021EEBFC
ov14_021EEBFC: ; 0x021EEBFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A44
	cmp r0, #1
	bne _021EEC30
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EEC30:
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EEC72
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	b _021EEC7C
_021EEC72:
	add r0, r4, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
_021EEC7C:
	ldr r1, _021EEC88 ; =ov14_021E9450
	add r0, r4, #0
	mov r2, #0x7b
	bl ov14_021F0234
	pop {r4, pc}
	.balign 4, 0
_021EEC88: .word ov14_021E9450
	thumb_func_end ov14_021EEBFC

	thumb_func_start ov14_021EEC8C
ov14_021EEC8C: ; 0x021EEC8C
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x75
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EEC8C

	thumb_func_start ov14_021EEC9C
ov14_021EEC9C: ; 0x021EEC9C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	blo _021EED0C
	ldr r1, [r5, #0x34]
	ldr r0, _021EED20 ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EED0C
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, _021EED24 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EED0C:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x25
	bl ov14_021F68C0
	add r0, r5, #0
	mov r1, #2
	bl ov14_021F0254
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EED20: .word 0x000088C8
_021EED24: .word 0x000005F3
	thumb_func_end ov14_021EEC9C

	thumb_func_start ov14_021EED28
ov14_021EED28: ; 0x021EED28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #0
	bne _021EEDAE
	add r0, r5, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EED48
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EED48:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x25
	bl ov14_021F68C0
	add r0, r5, #0
	mov r1, #0
	bl ov14_021F5FBC
	ldr r1, [r5, #0x34]
	ldr r0, _021EEDB4 ; =0x000088C8
	mov r2, #0
	strh r2, [r1, r0]
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
_021EEDAE:
	mov r0, #0x79
	pop {r3, r4, r5, pc}
	nop
_021EEDB4: .word 0x000088C8
	thumb_func_end ov14_021EED28

	thumb_func_start ov14_021EEDB8
ov14_021EEDB8: ; 0x021EEDB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x21
	ldrb r4, [r1]
	cmp r4, #0x1e
	bhs _021EEDEA
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	b _021EEDF8
_021EEDEA:
	sub r4, #0x1e
	lsl r1, r4, #0x10
	lsr r4, r1, #0x10
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
_021EEDF8:
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	ldr r0, [r5, #0x34]
	mov r1, #0x25
	bl ov14_021F6654
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021EEE78
	add r0, r5, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	b _021EEE82
_021EEE78:
	add r0, r5, #0
	mov r1, #0x82
	mov r2, #1
	bl ov14_021F3488
_021EEE82:
	ldr r1, _021EEE90 ; =ov14_021E9450
	add r0, r5, #0
	mov r2, #0x7b
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
	nop
_021EEE90: .word ov14_021E9450
	thumb_func_end ov14_021EEDB8

	thumb_func_start ov14_021EEE94
ov14_021EEE94: ; 0x021EEE94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EEEA8
	mov r0, #0x7b
	pop {r4, pc}
_021EEEA8:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #1
	bl ov14_021F2A18
	add r4, #0x21
	ldrb r0, [r4]
	cmp r0, #0x1e
	blo _021EEED0
	mov r0, #0x8b
	pop {r4, pc}
_021EEED0:
	mov r0, #0x75
	pop {r4, pc}
	thumb_func_end ov14_021EEE94

	thumb_func_start ov14_021EEED4
ov14_021EEED4: ; 0x021EEED4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EEEE6
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EEEE6:
	ldr r0, [r5, #0x34]
	lsl r1, r4, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x32
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	add r2, sp, #0
	ldr r0, [r1, r0]
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, _021EEF30 ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x25
	bl ov14_021F68C0
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EEF30: .word 0x000005F3
	thumb_func_end ov14_021EEED4

