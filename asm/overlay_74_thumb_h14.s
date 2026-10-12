#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222962C
	.extern ov74_02228D20
	.extern ov74_02229084
	.extern ov74_0222947C
	.extern ov74_022295C8
	.extern ov74_022295D0
	.extern ov74_02230A84
	.extern ov74_02230D28
	.extern ov74_02230D6C
	.extern ov74_02230DB8
	.extern ov74_02230DF4
	.extern ov74_02230E7C
	.extern ov74_02230E94
	.extern ov74_02230EB4
	.extern ov74_02230EE8
	.extern ov74_02230F14
	.extern ov74_02230F40
	.extern ov74_02230F6C
	.extern ov74_02230F98
	.extern ov74_02230FD4
	.extern ov74_02231008
	.extern ov74_02231048
	.extern ov74_022310B8
	.extern ov74_02235568
	.extern ov74_022360A0
	.extern ov74_022360B0
	.extern ov74_02236128
	.extern ov74_0223615C
	.extern ov74_0223BD5C
	.extern ov74_0223C1F4
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_0222962C
ov74_0222962C: ; 0x0222962C
	push {r3, r4, r5, lr}
	mov r5, #0x57
	lsl r5, r5, #2
	add r4, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02229652
	bl ov74_02230E7C
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
	bl ov74_02230D28
	mov r0, #1
	bl ov74_022310B8
_02229652:
	ldr r0, [r4, r5]
	cmp r0, #0x1e
	bls _0222965A
	b _02229B52
_0222965A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02229666: ; jump table
	.short _022296A4 - _02229666 - 2 ; case 0
	.short _022296BA - _02229666 - 2 ; case 1
	.short _022296E0 - _02229666 - 2 ; case 2
	.short _02229702 - _02229666 - 2 ; case 3
	.short _0222972C - _02229666 - 2 ; case 4
	.short _02229B52 - _02229666 - 2 ; case 5
	.short _02229B52 - _02229666 - 2 ; case 6
	.short _0222975E - _02229666 - 2 ; case 7
	.short _022297D4 - _02229666 - 2 ; case 8
	.short _022297F2 - _02229666 - 2 ; case 9
	.short _0222983C - _02229666 - 2 ; case 10
	.short _02229878 - _02229666 - 2 ; case 11
	.short _02229892 - _02229666 - 2 ; case 12
	.short _022298C6 - _02229666 - 2 ; case 13
	.short _02229908 - _02229666 - 2 ; case 14
	.short _02229928 - _02229666 - 2 ; case 15
	.short _02229940 - _02229666 - 2 ; case 16
	.short _0222995A - _02229666 - 2 ; case 17
	.short _022299B0 - _02229666 - 2 ; case 18
	.short _02229A38 - _02229666 - 2 ; case 19
	.short _02229A80 - _02229666 - 2 ; case 20
	.short _02229B52 - _02229666 - 2 ; case 21
	.short _02229AB4 - _02229666 - 2 ; case 22
	.short _02229AB8 - _02229666 - 2 ; case 23
	.short _02229B52 - _02229666 - 2 ; case 24
	.short _02229B52 - _02229666 - 2 ; case 25
	.short _02229B20 - _02229666 - 2 ; case 26
	.short _02229B52 - _02229666 - 2 ; case 27
	.short _02229AEC - _02229666 - 2 ; case 28
	.short _0222977A - _02229666 - 2 ; case 29
	.short _022297B8 - _02229666 - 2 ; case 30
_022296A4:
	add r0, r4, #0
	bl ov74_02228D20
	bl sub_02034D8C
	mov r0, #0x52
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4, r5]
	b _02229B52
_022296BA:
	bl sub_02034DB8
	cmp r0, #0
	beq _02229772
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, _022299FC ; =ov74_0223BD5C
	add r1, r4, r1
	bl ov74_02230A84
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl sub_0203A880
	mov r0, #2
	str r0, [r4, r5]
	b _02229B52
_022296E0:
	bl ov74_02230D6C
	mov r1, #0x19
	add r0, r4, #0
	lsl r1, r1, #6
	bl ov74_022295C8
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl WaitingIcon_New
	ldr r1, _02229A00 ; =0x000034D8
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r4, r5]
	b _02229B52
_02229702:
	bl ov74_02230E94
	cmp r0, #0
	beq _0222971E
	sub r1, r0, #1
	mov r0, #0x59
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _02229A04 ; =0x00000708
	add r0, r4, #0
	bl ov74_022295C8
	mov r0, #4
	str r0, [r4, r5]
_0222971E:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_0222972C:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov74_02230DB8
	cmp r0, #0
	beq _02229750
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov74_02230DF4
	mov r0, #7
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _02229A04 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
_02229750:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_0222975E:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov74_022295D0
	bl ov74_02230FD4
	cmp r0, #0
	bne _02229774
_02229772:
	b _02229B52
_02229774:
	mov r0, #0x1d
	str r0, [r4, r5]
	b _02229B52
_0222977A:
	mov r0, #0x1f
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r0, _02229A08 ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02229A00 ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200F450
	ldr r0, _02229A00 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _02229A0C ; =SEQ_SE_DP_SELECT
	bl PlaySE
	mov r0, #0x16
	ldr r1, _02229A04 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x1e
	str r0, [r4, r5]
	b _02229B52
_022297B8:
	ldr r0, _02229A10 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022297C6
	mov r0, #8
	str r0, [r4, r5]
_022297C6:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_022297D4:
	bl ov74_02230EB4
	mov r0, #9
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _02229A04 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_022297F2:
	bl ov74_02230F40
	cmp r0, #0
	beq _0222982E
	bl ov74_02230EE8
	mov r0, #0xa
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x23
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r0, _02229A0C ; =SEQ_SE_DP_SELECT
	bl PlaySE
	ldr r0, _02229A00 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222982E:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_0222983C:
	bl ov74_02230F40
	cmp r0, #0
	beq _0222986A
	mov r0, #0x49
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r0, _02229A08 ; =0x00003170
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov74_02229084
	mov r0, #0xb
	str r0, [r4, r5]
_0222986A:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_02229878:
	ldr r0, _02229A14 ; =ov74_0223C1F4
	mov r1, #0x2a
	mov r2, #1
	bl ov74_02230F14
	mov r0, #0xc
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _02229B52
_02229892:
	bl ov74_02230F6C
	cmp r0, #0
	beq _022298B8
	mov r0, #0xd
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0x3c
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x49
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
_022298B8:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov74_022295D0
	b _02229B52
_022298C6:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02229938
	mov r0, #0x4a
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl WaitingIcon_New
	ldr r1, _02229A00 ; =0x000034D8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov74_0222947C
	ldr r0, [r4, #8]
	bl ov74_022360A0
	mov r0, #0xe
	str r0, [r4, r5]
	b _02229B52
_02229908:
	bl ov74_022360B0
	cmp r0, #1
	bne _02229938
	mov r0, #0xf
	str r0, [r4, r5]
	bl OS_GetTickLo
	mov r1, #0x36
	bl _s32_div_f
	mov r0, #0x16
	add r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _02229B52
_02229928:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222993A
_02229938:
	b _02229B52
_0222993A:
	mov r0, #0x10
	str r0, [r4, r5]
	b _02229B52
_02229940:
	ldr r0, _02229A14 ; =ov74_0223C1F4
	mov r1, #0x2a
	mov r2, #2
	bl ov74_02230F14
	mov r0, #0x11
	str r0, [r4, r5]
	mov r1, #0x4b
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _02229B52
_0222995A:
	bl ov74_02230F98
	cmp r0, #0
	beq _02229976
	bl ov74_02236128
	mov r0, #0x12
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _02229B52
_02229976:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02229996
	bl ov74_02231008
	mov r0, #0x17
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
_02229996:
	bl ov74_02230FD4
	cmp r0, #0
	bne _02229A48
	bl ov74_02231008
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _02229B52
_022299B0:
	bl ov74_0223615C
	cmp r0, #3
	bne _022299CA
	bl ov74_02231008
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _02229A18
_022299CA:
	bl ov74_0223615C
	cmp r0, #2
	beq _022299D8
	bl ov74_022360B0
	b _02229A18
_022299D8:
	bl ov74_02230F6C
	cmp r0, #0
	bne _022299E8
	bl ov74_02230FD4
	cmp r0, #0
	bne _02229A18
_022299E8:
	mov r0, #0x13
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl ov74_02231008
	b _02229B52
	nop
_022299FC: .word ov74_0223BD5C
_02229A00: .word 0x000034D8
_02229A04: .word 0x00000708
_02229A08: .word 0x00003170
_02229A0C: .word SEQ_SE_DP_SELECT
_02229A10: .word gSystem
_02229A14: .word ov74_0223C1F4
_02229A18:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02229A38
	bl ov74_02231008
	mov r0, #0x17
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r4, r0]
_02229A38:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02229A4A
_02229A48:
	b _02229B52
_02229A4A:
	mov r0, #0x14
	str r0, [r4, r5]
	mov r0, #0x4b
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r0, _02229B58 ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02229B5C ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200F450
	ldr r0, _02229B60 ; =SEQ_SE_DP_SELECT
	bl PlaySE
	ldr r0, _02229B5C ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	b _02229B52
_02229A80:
	bl ov74_02231048
	cmp r0, #0
	beq _02229B52
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02229AA2
	bl sub_02034DE0
	bl sub_0203A914
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02229AA2:
	ldr r0, _02229B64 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02229B52
	mov r0, #0x1b
	str r0, [r4, r5]
	mov r0, #4
	pop {r3, r4, r5, pc}
_02229AB4:
	mov r0, #0x17
	str r0, [r4, r5]
_02229AB8:
	mov r0, #0x4c
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov74_02235568
	ldr r0, _02229B58 ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _02229B5C ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02229AE0
	bl sub_0200F450
_02229AE0:
	ldr r0, _02229B5C ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x1c
	str r0, [r4, r5]
	b _02229B52
_02229AEC:
	bl ov74_02231048
	cmp r0, #0
	beq _02229B52
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02229B0E
	bl sub_02034DE0
	bl sub_0203A914
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02229B0E:
	ldr r0, _02229B64 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02229B52
	mov r0, #0
	bl OS_ResetSystem
	b _02229B52
_02229B20:
	bl ov74_02231048
	cmp r0, #0
	beq _02229B52
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02229B52
	bl sub_02034DE0
	bl sub_0203A914
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _02229B5C ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02229B4E
	bl sub_0200F450
_02229B4E:
	mov r0, #5
	pop {r3, r4, r5, pc}
_02229B52:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02229B58: .word 0x00003170
_02229B5C: .word 0x000034D8
_02229B60: .word SEQ_SE_DP_SELECT
_02229B64: .word gSystem
	thumb_func_end ov74_0222962C

