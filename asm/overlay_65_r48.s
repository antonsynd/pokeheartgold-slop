#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E330
	.public ov65_0221E354
	.public ov65_0221E3BC
	.public ov65_0221E474
	.public ov65_0221E558
	.public ov65_0221E600
	.public ov65_0221E684
	.extern ov65_0221E740
	.extern ov65_0221FB90
	.extern ov65_0221FC54
	.extern ov65_0221FCA0

	.text

	.text
	thumb_func_start ov65_0221E330
ov65_0221E330: ; 0x0221E330
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xda
	add r3, r0, #0
	lsl r4, r4, #6
	ldr r0, [r3, r4]
	add r4, r4, #4
	str r0, [sp]
	ldr r0, _0221E350 ; =0x000005B4
	mov r2, #1
	add r0, r3, r0
	ldr r3, [r3, r4]
	bl ov65_0221FB90
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0221E350: .word 0x000005B4
	thumb_func_end ov65_0221E330

	thumb_func_start ov65_0221E354
ov65_0221E354: ; 0x0221E354
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E3AC ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221E3A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E386: ; jump table
	.short _0221E3A6 - _0221E386 - 2 ; case 0
	.short _0221E390 - _0221E386 - 2 ; case 1
	.short _0221E398 - _0221E386 - 2 ; case 2
	.short _0221E390 - _0221E386 - 2 ; case 3
	.short _0221E398 - _0221E386 - 2 ; case 4
_0221E390:
	ldr r1, _0221E3B0 ; =ov65_0221E740
	ldr r0, _0221E3B4 ; =0x00002220
	str r1, [r4, r0]
	b _0221E3A6
_0221E398:
	add r0, r4, #0
	mov r1, #0x3f
	bl ov65_0221E330
	ldr r1, _0221E3B8 ; =ov65_0221E600
	ldr r0, _0221E3B4 ; =0x00002220
	str r1, [r4, r0]
_0221E3A6:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0221E3AC: .word 0x00000664
_0221E3B0: .word ov65_0221E740
_0221E3B4: .word 0x00002220
_0221E3B8: .word ov65_0221E600
	thumb_func_end ov65_0221E354

	thumb_func_start ov65_0221E3BC
ov65_0221E3BC: ; 0x0221E3BC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E458 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221E450
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E3EE: ; jump table
	.short _0221E450 - _0221E3EE - 2 ; case 0
	.short _0221E3F8 - _0221E3EE - 2 ; case 1
	.short _0221E42C - _0221E3EE - 2 ; case 2
	.short _0221E3F8 - _0221E3EE - 2 ; case 3
	.short _0221E42C - _0221E3EE - 2 ; case 4
_0221E3F8:
	ldr r0, [r4, #4]
	bl Save_Frontier_GetStatic
	ldr r1, _0221E45C ; =0x0000367C
	ldr r1, [r4, r1]
	bl sub_020311AC
	ldr r1, _0221E460 ; =0x000036A0
	ldr r0, [r4, r1]
	sub r1, #0x24
	ldr r1, [r4, r1]
	bl sub_0202C338
	mov r0, #0
	str r0, [sp]
	ldr r1, _0221E464 ; =0x00003678
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	mov r2, #0x1f
	mov r3, #0x1a
	bl sub_0203A280
	ldr r1, _0221E468 ; =ov65_0221E740
	ldr r0, _0221E46C ; =0x00002220
	str r1, [r4, r0]
	b _0221E450
_0221E42C:
	ldr r0, _0221E464 ; =0x00003678
	ldr r0, [r4, r0]
	bl sub_02034818
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	mov r1, #0x40
	bl ov65_0221E330
	ldr r1, _0221E470 ; =ov65_0221E354
	ldr r0, _0221E46C ; =0x00002220
	str r1, [r4, r0]
_0221E450:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0221E458: .word 0x00000664
_0221E45C: .word 0x0000367C
_0221E460: .word 0x000036A0
_0221E464: .word 0x00003678
_0221E468: .word ov65_0221E740
_0221E46C: .word 0x00002220
_0221E470: .word ov65_0221E354
	thumb_func_end ov65_0221E3BC

	thumb_func_start ov65_0221E474
ov65_0221E474: ; 0x0221E474
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0221E530 ; =0x0000368C
	ldr r0, [r5, r0]
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0221E494
	add r0, r0, #1
	cmp r4, r0
	bne _0221E4C0
	mov r0, #0
	pop {r4, r5, r6, pc}
_0221E494:
	ldr r0, _0221E534 ; =0x000005DC
	bl PlaySE
	ldr r0, _0221E538 ; =0x00003678
	ldr r0, [r5, r0]
	bl sub_02034818
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl BufferPlayersName
	add r0, r5, #0
	mov r1, #0x40
	bl ov65_0221E330
	ldr r1, _0221E53C ; =ov65_0221E354
	ldr r0, _0221E540 ; =0x00002220
	str r1, [r5, r0]
	b _0221E506
_0221E4C0:
	ldr r0, _0221E534 ; =0x000005DC
	bl PlaySE
	ldr r0, _0221E544 ; =0x0000367C
	str r4, [r5, r0]
	mov r0, #0x1a
	bl PlayerProfile_New
	add r6, r0, #0
	ldr r0, _0221E548 ; =0x000036A0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202C254
	add r1, r0, #0
	add r0, r6, #0
	bl Save_Profile_PlayerName_Set
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl BufferPlayersName
	add r0, r6, #0
	bl Heap_Free
	add r0, r5, #0
	mov r1, #0x41
	bl ov65_0221E330
	ldr r1, _0221E54C ; =ov65_0221E3BC
	ldr r0, _0221E540 ; =0x00002220
	str r1, [r5, r0]
_0221E506:
	ldr r0, _0221E550 ; =0x00003690
	mov r1, #0
	add r0, r5, r0
	bl sub_0200E5D4
	ldr r0, _0221E550 ; =0x00003690
	add r0, r5, r0
	bl RemoveWindow
	ldr r0, _0221E530 ; =0x0000368C
	mov r1, #0
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl DestroyListMenu
	ldr r0, _0221E554 ; =0x00003688
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221E530: .word 0x0000368C
_0221E534: .word 0x000005DC
_0221E538: .word 0x00003678
_0221E53C: .word ov65_0221E354
_0221E540: .word 0x00002220
_0221E544: .word 0x0000367C
_0221E548: .word 0x000036A0
_0221E54C: .word ov65_0221E3BC
_0221E550: .word 0x00003690
_0221E554: .word 0x00003688
	thumb_func_end ov65_0221E474

	thumb_func_start ov65_0221E558
ov65_0221E558: ; 0x0221E558
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0221E5EC ; =0x000036A0
	ldr r0, [r5, r0]
	bl sub_0202C2F8
	str r0, [sp]
	add r0, r0, #1
	mov r1, #0x1a
	bl ListMenuItems_New
	ldr r1, _0221E5F0 ; =0x00003688
	str r0, [r5, r1]
	mov r0, #0x64
	mov r1, #0x1a
	bl String_New
	ldr r7, _0221E5EC ; =0x000036A0
	add r6, r0, #0
	mov r4, #0
_0221E580:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	beq _0221E5AA
	ldr r0, _0221E5EC ; =0x000036A0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202C254
	add r1, r0, #0
	add r0, r6, #0
	bl CopyU16ArrayToString
	ldr r0, _0221E5F0 ; =0x00003688
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ListMenuItems_AddItem
_0221E5AA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0221E580
	ldr r1, _0221E5F0 ; =0x00003688
	mov r2, #0xb
	ldr r0, [r5, r1]
	sub r1, r1, #4
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0xd
	bl ListMenuItems_AppendFromMsgData
	add r0, r6, #0
	bl String_Delete
	ldr r2, _0221E5F0 ; =0x00003688
	mov r3, #6
	lsl r3, r3, #6
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [sp]
	ldr r3, [r5, r3]
	add r2, r5, r2
	bl ov65_0221FCA0
	ldr r1, _0221E5F4 ; =0x0000368C
	str r0, [r5, r1]
	ldr r1, _0221E5F8 ; =ov65_0221E474
	ldr r0, _0221E5FC ; =0x00002220
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221E5EC: .word 0x000036A0
_0221E5F0: .word 0x00003688
_0221E5F4: .word 0x0000368C
_0221E5F8: .word ov65_0221E474
_0221E5FC: .word 0x00002220
	thumb_func_end ov65_0221E558

	thumb_func_start ov65_0221E600
ov65_0221E600: ; 0x0221E600
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E670 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221E668
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E632: ; jump table
	.short _0221E668 - _0221E632 - 2 ; case 0
	.short _0221E63C - _0221E632 - 2 ; case 1
	.short _0221E644 - _0221E632 - 2 ; case 2
	.short _0221E63C - _0221E632 - 2 ; case 3
	.short _0221E644 - _0221E632 - 2 ; case 4
_0221E63C:
	ldr r1, _0221E674 ; =ov65_0221E558
	ldr r0, _0221E678 ; =0x00002220
	str r1, [r4, r0]
	b _0221E668
_0221E644:
	ldr r0, _0221E67C ; =0x00003678
	ldr r0, [r4, r0]
	bl sub_02034818
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	mov r1, #0x40
	bl ov65_0221E330
	ldr r1, _0221E680 ; =ov65_0221E354
	ldr r0, _0221E678 ; =0x00002220
	str r1, [r4, r0]
_0221E668:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0221E670: .word 0x00000664
_0221E674: .word ov65_0221E558
_0221E678: .word 0x00002220
_0221E67C: .word 0x00003678
_0221E680: .word ov65_0221E354
	thumb_func_end ov65_0221E600

	thumb_func_start ov65_0221E684
ov65_0221E684: ; 0x0221E684
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E714 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221E70E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E6B6: ; jump table
	.short _0221E70E - _0221E6B6 - 2 ; case 0
	.short _0221E6C0 - _0221E6B6 - 2 ; case 1
	.short _0221E708 - _0221E6B6 - 2 ; case 2
	.short _0221E6C0 - _0221E6B6 - 2 ; case 3
	.short _0221E708 - _0221E6B6 - 2 ; case 4
_0221E6C0:
	ldr r1, _0221E718 ; =ov65_0221E740
	ldr r0, _0221E71C ; =0x00002220
	ldr r6, _0221E720 ; =0x000036A0
	str r1, [r4, r0]
	mov r5, #0
_0221E6CA:
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _0221E6EA
	mov r0, #0
	str r0, [sp]
	ldr r1, _0221E724 ; =0x00003678
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	add r2, r5, #0
	mov r3, #0x1a
	bl sub_0203A280
	b _0221E6F0
_0221E6EA:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0221E6CA
_0221E6F0:
	cmp r5, #0x20
	bne _0221E70E
	add r0, r4, #0
	mov r1, #0x3f
	bl ov65_0221E330
	ldr r1, _0221E728 ; =ov65_0221E600
	ldr r0, _0221E71C ; =0x00002220
	add sp, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0221E708:
	ldr r1, _0221E718 ; =ov65_0221E740
	ldr r0, _0221E71C ; =0x00002220
	str r1, [r4, r0]
_0221E70E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0221E714: .word 0x00000664
_0221E718: .word ov65_0221E740
_0221E71C: .word 0x00002220
_0221E720: .word 0x000036A0
_0221E724: .word 0x00003678
_0221E728: .word ov65_0221E600
	thumb_func_end ov65_0221E684

