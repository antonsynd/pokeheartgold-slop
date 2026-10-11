#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236AE0
	.public ov74_02236F30
	.extern ov74_0222ACD8
	.extern ov74_022369A8
	.extern ov74_022369C8
	.extern ov74_022369D8
	.extern ov74_02236A2C
	.extern ov74_02236A54
	.extern ov74_02236A78
	.extern ov74_02236AAC
	.extern ov74_02236AC8
	.extern ov74_0223D038
	.extern ov74_0223D040
	.extern ov74_0223D054
	.extern ov74_0223E304
	.extern ov74_0223E318
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
	thumb_func_start ov74_02236AE0
ov74_02236AE0: ; 0x02236AE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, _02236DE8 ; =0x0000267C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02236B00
	blx r0
	cmp r0, #1
	bne _02236B00
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
_02236B00:
	mov r3, #1
	ldr r0, [r5]
	lsl r3, r3, #0xc
	sub r0, r0, r3
	cmp r0, #0x13
	bls _02236B0E
	b _02236F0A
_02236B0E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236B1A: ; jump table
	.short _02236B42 - _02236B1A - 2 ; case 0
	.short _02236B5A - _02236B1A - 2 ; case 1
	.short _02236B76 - _02236B1A - 2 ; case 2
	.short _02236B9E - _02236B1A - 2 ; case 3
	.short _02236BE8 - _02236B1A - 2 ; case 4
	.short _02236C00 - _02236B1A - 2 ; case 5
	.short _02236C46 - _02236B1A - 2 ; case 6
	.short _02236C6A - _02236B1A - 2 ; case 7
	.short _02236CA0 - _02236B1A - 2 ; case 8
	.short _02236CC2 - _02236B1A - 2 ; case 9
	.short _02236CFE - _02236B1A - 2 ; case 10
	.short _02236D24 - _02236B1A - 2 ; case 11
	.short _02236DAA - _02236B1A - 2 ; case 12
	.short _02236DC8 - _02236B1A - 2 ; case 13
	.short _02236F0A - _02236B1A - 2 ; case 14
	.short _02236DE2 - _02236B1A - 2 ; case 15
	.short _02236E94 - _02236B1A - 2 ; case 16
	.short _02236E8A - _02236B1A - 2 ; case 17
	.short _02236EB0 - _02236B1A - 2 ; case 18
	.short _02236EE6 - _02236B1A - 2 ; case 19
_02236B42:
	bl sub_02034D8C
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #3
	bl sub_02039FD8
	ldr r0, _02236DEC ; =0x00001001
	str r0, [r5]
	b _02236F0A
_02236B5A:
	bl sub_02034DB8
	cmp r0, #0
	beq _02236C3E
	ldr r0, _02236DF0 ; =ov74_022369A8
	ldr r1, _02236DF4 ; =ov74_022369C8
	bl ov00_021EC294
	ldr r0, [r4, #4]
	bl sub_020394A0
	ldr r0, _02236DF8 ; =0x00001002
	str r0, [r5]
	b _02236F0A
_02236B76:
	ldr r0, _02236DFC ; =0x000015E8
	mov r1, #2
	add r0, r4, r0
	mov r2, #1
	mov r3, #0x14
	bl ov00_021EC3F0
	mov r0, #2
	bl ov00_021EC454
	bl ov00_021EC4A4
	bl sub_0203A880
	ldr r0, _02236E00 ; =0x00001003
	mov r1, #0
	str r0, [r5]
	ldr r0, _02236E04 ; =0x00002678
	str r1, [r4, r0]
	b _02236F0A
_02236B9E:
	bl ov00_021EC60C
	bl ov00_021EC5B4
	cmp r0, #0
	beq _02236BD6
	add r0, r4, #0
	bl ov74_02236A2C
	cmp r0, #1
	bne _02236BCE
	ldr r0, _02236E04 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02236BC8
	ldr r0, _02236E08 ; =ov74_0223E304
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _02236E0C ; =0x0000100D
	str r0, [r5]
	b _02236BD6
_02236BC8:
	ldr r0, _02236E10 ; =0x00001004
	str r0, [r5]
	b _02236BD6
_02236BCE:
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
_02236BD6:
	ldr r0, _02236E14 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02236C3E
	ldr r0, _02236E04 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _02236F0A
_02236BE8:
	bl ov00_021ECD04
	cmp r0, #0
	bne _02236BFA
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236BFA:
	ldr r0, _02236E18 ; =0x00001005
	str r0, [r5]
	b _02236F0A
_02236C00:
	bl ov00_021ECDC8
	cmp r0, #3
	bne _02236C14
	ldr r0, _02236E1C ; =0x00001006
	ldr r1, _02236E20 ; =ov00_021ECB40
	str r0, [r5]
	ldr r0, _02236DE8 ; =0x0000267C
	str r1, [r4, r0]
	b _02236C34
_02236C14:
	cmp r0, #4
	bne _02236C26
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	bl ov00_021EC8D8
	b _02236C34
_02236C26:
	cmp r0, #5
	bne _02236C34
	ldr r0, _02236E08 ; =ov74_0223E304
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _02236E0C ; =0x0000100D
	str r0, [r5]
_02236C34:
	ldr r0, _02236E14 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _02236C40
_02236C3E:
	b _02236F0A
_02236C40:
	bl ov00_021ECEC0
	b _02236F0A
_02236C46:
	ldr r0, _02236E24 ; =ov74_02236AAC
	ldr r1, _02236E28 ; =ov74_0223D038
	ldr r2, _02236E2C ; =ov74_0223D040
	bl ov00_021ED1F0
	cmp r0, #0
	bne _02236C5E
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236C5E:
	ldr r2, _02236E30 ; =0x00001007
	add r0, r4, #0
	add r1, r5, #0
	bl ov74_02236A54
	b _02236F0A
_02236C6A:
	ldr r0, _02236E04 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02236C82
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov74_02236A78
	b _02236F0A
_02236C82:
	ldr r0, _02236E34 ; =ov74_0223D054
	add r1, r0, #0
	add r2, r0, #0
	bl ov00_021ED354
	cmp r0, #0
	bne _02236C9A
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236C9A:
	ldr r0, _02236E38 ; =0x00001008
	str r0, [r5]
	b _02236F0A
_02236CA0:
	ldr r0, _02236E3C ; =0x00001654
	add r0, r4, r0
	bl ov00_021ED388
	cmp r0, #0
	bne _02236CB6
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236CB6:
	ldr r2, _02236E40 ; =0x00001009
	add r0, r4, #0
	add r1, r5, #0
	bl ov74_02236A54
	b _02236F0A
_02236CC2:
	ldr r0, _02236E3C ; =0x00001654
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02236CDA
	add r3, #0xd
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	str r3, [sp]
	bl ov74_02236A78
	b _02236F0A
_02236CDA:
	ldr r0, _02236E44 ; =ov74_0223E318
	mov r1, #0
	mov r2, #0xa
	bl ov00_021ED3AC
	cmp r0, #0
	bne _02236CF2
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236CF2:
	ldr r2, _02236E48 ; =0x0000100A
	add r0, r4, #0
	add r1, r5, #0
	bl ov74_02236A54
	b _02236F0A
_02236CFE:
	ldr r1, _02236E4C ; =0x00001658
	ldr r0, _02236E44 ; =ov74_0223E318
	add r1, r4, r1
	add r2, r3, #0
	bl ov00_021ED3F4
	cmp r0, #0
	bne _02236D18
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236D18:
	ldr r0, _02236E50 ; =0x0000100B
	mov r1, #0
	str r0, [r5]
	ldr r0, _02236E54 ; =0x00002664
	str r1, [r4, r0]
	b _02236F0A
_02236D24:
	ldr r0, _02236E08 ; =ov74_0223E304
	ldr r1, [r0]
	cmp r1, #0
	bne _02236D72
	ldr r0, _02236E14 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02236D46
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov74_02236A78
	b _02236F0A
_02236D46:
	ldr r1, _02236E58 ; =0x0000265C
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov00_021ED444
	cmp r0, #1
	bne _02236DD0
	ldr r1, _02236E58 ; =0x0000265C
	mov r0, #0x64
	ldr r2, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mul r0, r2
	bl _u32_div_f
	ldr r1, _02236E54 ; =0x00002664
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _02236DD0
	str r0, [r4, r1]
	b _02236F0A
_02236D72:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02236D82
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236D82:
	ldr r0, _02236E04 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02236D9A
	add r3, #0xd
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp]
	bl ov74_02236A78
	b _02236F0A
_02236D9A:
	add r3, #0xd
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov74_02236A78
	b _02236F0A
_02236DAA:
	bl ov00_021ED428
	cmp r0, #0
	bne _02236DB8
	ldr r0, _02236E0C ; =0x0000100D
	str r0, [r5]
	b _02236F0A
_02236DB8:
	ldr r0, _02236DE8 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov74_02236AC8
	ldr r0, _02236E08 ; =ov74_0223E304
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02236DC8:
	bl ov00_021EC938
	cmp r0, #1
	beq _02236DD2
_02236DD0:
	b _02236F0A
_02236DD2:
	ldr r0, _02236DE8 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov74_02236AC8
	ldr r0, _02236E08 ; =ov74_0223E304
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02236DE2:
	ldr r0, _02236E08 ; =ov74_0223E304
	b _02236E5C
	nop
_02236DE8: .word 0x0000267C
_02236DEC: .word 0x00001001
_02236DF0: .word ov74_022369A8
_02236DF4: .word ov74_022369C8
_02236DF8: .word 0x00001002
_02236DFC: .word 0x000015E8
_02236E00: .word 0x00001003
_02236E04: .word 0x00002678
_02236E08: .word ov74_0223E304
_02236E0C: .word 0x0000100D
_02236E10: .word 0x00001004
_02236E14: .word gSystem
_02236E18: .word 0x00001005
_02236E1C: .word 0x00001006
_02236E20: .word ov00_021ECB40
_02236E24: .word ov74_02236AAC
_02236E28: .word ov74_0223D038
_02236E2C: .word ov74_0223D040
_02236E30: .word 0x00001007
_02236E34: .word ov74_0223D054
_02236E38: .word 0x00001008
_02236E3C: .word 0x00001654
_02236E40: .word 0x00001009
_02236E44: .word ov74_0223E318
_02236E48: .word 0x0000100A
_02236E4C: .word 0x00001658
_02236E50: .word 0x0000100B
_02236E54: .word 0x00002664
_02236E58: .word 0x0000265C
_02236E5C:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _02236F0A
	add r0, r4, #0
	bl ov74_0222ACD8
	ldr r0, _02236F10 ; =0x00002674
	ldr r0, [r4, r0]
	sub r0, r0, #5
	cmp r0, #1
	bhi _02236E84
	ldr r3, _02236F14 ; =0x00001010
	add r0, r4, #0
	str r3, [sp]
	mov r1, #3
	add r2, r5, #0
	add r3, r3, #1
	bl ov74_02236A78
	b _02236F0A
_02236E84:
	ldr r0, _02236F18 ; =0x00001011
	str r0, [r5]
	b _02236F0A
_02236E8A:
	bl ov00_021EC8D8
	ldr r0, _02236F14 ; =0x00001010
	str r0, [r5]
	b _02236F0A
_02236E94:
	ldr r0, _02236F1C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02236F0A
	ldr r0, _02236F20 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov00_021EC210
	bl ov74_02236AC8
	mov r0, #4
	pop {r3, r4, r5, pc}
_02236EB0:
	ldr r0, _02236F24 ; =ov74_0223E304
	ldr r1, [r0]
	cmp r1, #1
	bne _02236ED4
	mov r1, #0
	str r1, [r0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02236ECC
	add r0, r4, #0
	bl ov74_022369D8
	str r0, [r5]
	b _02236F0A
_02236ECC:
	ldr r0, _02236F28 ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5]
	b _02236F0A
_02236ED4:
	ldr r0, _02236F1C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02236F0A
	ldr r0, _02236F2C ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _02236F0A
_02236EE6:
	ldr r0, _02236F24 ; =ov74_0223E304
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _02236EFA
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _02236F28 ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5]
	b _02236F0A
_02236EFA:
	ldr r0, _02236F1C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02236F0A
	ldr r0, _02236F2C ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
_02236F0A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02236F10: .word 0x00002674
_02236F14: .word 0x00001010
_02236F18: .word 0x00001011
_02236F1C: .word gSystem
_02236F20: .word 0x0000267C
_02236F24: .word ov74_0223E304
_02236F28: .word 0x00001650
_02236F2C: .word 0x00002678
	thumb_func_end ov74_02236AE0

	thumb_func_start ov74_02236F30
ov74_02236F30: ; 0x02236F30
	cmp r0, #1
	bne _02236F38
	mov r0, #1
	b _02236F3A
_02236F38:
	ldr r0, _02236F40 ; =0x000001DE
_02236F3A:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.balign 4, 0
_02236F40: .word 0x000001DE
	thumb_func_end ov74_02236F30

