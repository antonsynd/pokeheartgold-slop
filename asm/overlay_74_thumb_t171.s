#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02230320
	.public ov74_02230404
	.public ov74_02230478
	.public ov74_02230520
	.public ov74_02230590
	.public ov74_022305E4
	.public ov74_02230674
	.public ov74_022306C8
	.public ov74_02230714
	.public ov74_0223078C
	.public ov74_02230818
	.public ov74_022308E0
	.extern ov74_0222FE4C
	.extern ov74_0222FE5C
	.extern ov74_0222FE78
	.extern ov74_0222FEA0
	.extern ov74_0222FEC8
	.extern ov74_0222FF28
	.extern ov74_0222FF80
	.extern ov74_0222FFAC
	.extern ov74_0223026C
	.extern ov74_0223030C
	.extern ov74_02231054
	.extern ov74_02231064
	.extern ov74_02231070
	.extern ov74_02231094
	.extern ov74_02231100
	.extern ov74_0223110C
	.extern ov74_02231118
	.extern ov74_02231124
	.extern ov74_02231130
	.extern ov74_02231154
	.extern ov74_0223115C
	.extern ov74_02231184
	.extern ov74_022311A0
	.extern ov74_022311AC
	.extern ov74_022311BC
	.extern ov74_022311CC
	.extern ov74_022313F0
	.extern ov74_02231424
	.extern ov74_02231448
	.extern ov74_0223144C
	.extern ov74_02231450
	.extern ov74_02231454
	.extern ov74_0223145C
	.extern ov74_022314DC
	.extern ov74_02231560
	.extern ov74_02231584
	.extern ov74_0223161C
	.extern ov74_02231638
	.extern ov74_02231670
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
	thumb_func_start ov74_02230320
ov74_02230320: ; 0x02230320
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov74_02231100
	add r4, r0, #0
	bl ov74_02231154
	add r5, r0, #0
	bl ov74_0222FE78
	cmp r0, #0
	beq _0223033C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223033C:
	mov r1, #0
	add r2, r1, #0
	add r3, r5, #0
_02230342:
	ldr r0, [r3]
	cmp r0, #0
	beq _0223034C
	mov r1, #1
	b _02230354
_0223034C:
	add r2, r2, #1
	add r3, #0x38
	cmp r2, #8
	blt _02230342
_02230354:
	cmp r1, #0
	beq _02230372
	mov r0, #7
	lsl r0, r0, #6
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02230372
	bl ov74_0223161C
	cmp r0, #0
	bne _0223036E
	bl ov74_0222FE4C
_0223036E:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230372:
	add r0, r4, #0
	mov r1, #0xc0
	bl DC_InvalidateRange
	bl ov74_02231154
	bl ov74_02231454
	ldrh r0, [r6, #0x36]
	cmp r0, #8
	blo _022303FC
	bl ov74_022311A0
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022303FC
	add r5, r4, #0
	add r5, #0x50
	bl ov74_022311AC
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022303FC
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022303FC
	bl ov74_022311CC
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022303FC
	add r0, r6, #0
	add r1, r4, #0
	bl ov74_0223026C
	cmp r0, #0
	beq _022303EC
	bl ov74_02231154
	ldr r1, _02230400 ; =0x000001C2
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0x1c
	bls _022303FC
	bl ov74_0223161C
	cmp r0, #0
	bne _022303FC
	bl ov74_0222FE4C
	mov r0, #1
	pop {r4, r5, r6, pc}
_022303EC:
	bl ov74_0223161C
	cmp r0, #0
	bne _022303F8
	bl ov74_0222FE4C
_022303F8:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022303FC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02230400: .word 0x000001C2
	thumb_func_end ov74_02230320

	thumb_func_start ov74_02230404
ov74_02230404: ; 0x02230404
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223046A
	bl ov74_02231100
	bl ov74_02231450
	mov r0, #6
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230472
	bl ov74_02231094
	cmp r0, #1
	bne _02230444
	bl ov74_02231154
	ldr r2, _02230474 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
_02230444:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02230458
	cmp r0, #5
	bne _0223045E
	add r0, r4, #0
	bl ov74_02230320
	cmp r0, #0
	bne _02230472
_02230458:
	bl ov74_0223030C
	pop {r4, pc}
_0223045E:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_0223046A:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230472:
	pop {r4, pc}
	.balign 4, 0
_02230474: .word 0x000001C3
	thumb_func_end ov74_02230404

	thumb_func_start ov74_02230478
ov74_02230478: ; 0x02230478
	push {r4, r5, r6, lr}
	sub sp, #8
	bl ov74_02231100
	add r4, r0, #0
	bl ov74_02231154
	add r6, r0, #0
	bl ov74_02231054
	bl ov74_0222FE78
	cmp r0, #0
	beq _0223049A
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223049A:
	add r0, r4, #0
	mov r1, #0xc0
	bl DC_InvalidateRange
	bl ov74_02231154
	bl ov74_02231454
	ldrh r0, [r4, #0x3c]
	cmp r0, #8
	blo _02230514
	bl ov74_022311A0
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _02230514
	add r5, r4, #0
	add r5, #0x50
	bl ov74_022311AC
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02230514
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02230514
	bl ov74_022311CC
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _02230514
	add r0, r4, #4
	bl ov74_0222FE5C
	ldr r1, _0223051C ; =0x000001C3
	str r0, [sp]
	ldrb r1, [r6, r1]
	str r0, [sp, #4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #0x38
	mul r1, r2
	ldr r1, [r6, r1]
	cmp r1, r0
	bne _02230514
	bl ov74_0223161C
	cmp r0, #0
	bne _0223050E
	bl ov74_0222FE4C
_0223050E:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230514:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223051C: .word 0x000001C3
	thumb_func_end ov74_02230478

	thumb_func_start ov74_02230520
ov74_02230520: ; 0x02230520
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02230580
	bl ov74_02231154
	ldr r2, _0223058C ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x20
	orr r1, r3
	strb r1, [r0, r2]
	mov r0, #6
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230588
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02230562
	cmp r0, #5
	bne _02230574
	bl ov74_02230478
	cmp r0, #0
	bne _02230588
_02230562:
	bl ov74_0222FFAC
	bl ov74_02231584
	cmp r0, #0
	bne _02230588
	bl ov74_0222FE4C
	pop {r4, pc}
_02230574:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_02230580:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230588:
	pop {r4, pc}
	nop
_0223058C: .word 0x000001C3
	thumb_func_end ov74_02230520

	thumb_func_start ov74_02230590
ov74_02230590: ; 0x02230590
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022305D4
	mov r0, #7
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _022305DC
	bl ov74_02231094
	cmp r0, #1
	bne _022305DC
	bl ov74_02231154
	ldr r1, _022305E0 ; =0x000001C3
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #2
	bne _022305DC
	bl ov74_02231638
	cmp r0, #0
	bne _022305CC
	bl ov74_0222FE4C
	pop {r3, pc}
_022305CC:
	mov r0, #3
	bl ov74_02231070
	pop {r3, pc}
_022305D4:
	bl ov74_02231448
	bl ov74_0222FE4C
_022305DC:
	pop {r3, pc}
	nop
_022305E0: .word 0x000001C3
	thumb_func_end ov74_02230590

	thumb_func_start ov74_022305E4
ov74_022305E4: ; 0x022305E4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223066A
	mov r0, #9
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230672
	ldrh r0, [r4, #8]
	cmp r0, #9
	bhi _0223065E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230614: ; jump table
	.short _0223065E - _02230614 - 2 ; case 0
	.short _0223065E - _02230614 - 2 ; case 1
	.short _0223065E - _02230614 - 2 ; case 2
	.short _0223065E - _02230614 - 2 ; case 3
	.short _0223065E - _02230614 - 2 ; case 4
	.short _0223065E - _02230614 - 2 ; case 5
	.short _02230672 - _02230614 - 2 ; case 6
	.short _02230628 - _02230614 - 2 ; case 7
	.short _02230672 - _02230614 - 2 ; case 8
	.short _02230648 - _02230614 - 2 ; case 9
_02230628:
	ldrh r0, [r4, #0xa]
	bl ov74_0223110C
	mov r0, #1
	bl ov74_02231124
	mov r0, #0
	bl ov74_02231130
	bl ov74_02231670
	cmp r0, #0
	bne _02230672
	bl ov74_0222FE4C
	pop {r4, pc}
_02230648:
	bl ov74_02231118
	cmp r0, #0
	beq _02230656
	mov r0, #1
	bl ov74_02231130
_02230656:
	mov r0, #0
	bl ov74_02231124
	pop {r4, pc}
_0223065E:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_0223066A:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230672:
	pop {r4, pc}
	thumb_func_end ov74_022305E4

	thumb_func_start ov74_02230674
ov74_02230674: ; 0x02230674
	push {r3, lr}
	bl ov74_02231094
	cmp r0, #1
	beq _022306AE
	cmp r0, #2
	bne _022306C6
	bl ov74_0222FF28
	cmp r0, #0
	beq _022306A8
	bl ov74_0222FEC8
	bl ov74_022314DC
	cmp r0, #0
	beq _022306A8
	bl ov74_0223115C
	mov r1, #1
	add r0, #0x60
	strb r1, [r0]
	mov r0, #3
	bl ov74_02231070
	pop {r3, pc}
_022306A8:
	bl ov74_0222FE4C
	pop {r3, pc}
_022306AE:
	bl ov74_0222FF80
	bl ov74_02231560
	cmp r0, #0
	bne _022306C0
	bl ov74_0222FE4C
	pop {r3, pc}
_022306C0:
	mov r0, #3
	bl ov74_02231070
_022306C6:
	pop {r3, pc}
	thumb_func_end ov74_02230674

	thumb_func_start ov74_022306C8
ov74_022306C8: ; 0x022306C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02230702
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _022306E6
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230712
_022306E6:
	bl ov74_02231094
	cmp r0, #1
	beq _022306FA
	cmp r0, #2
	bne _02230712
	mov r0, #0xa
	bl ov74_02231070
	pop {r4, pc}
_022306FA:
	mov r0, #0xb
	bl ov74_02231070
	pop {r4, pc}
_02230702:
	cmp r0, #9
	beq _02230712
	cmp r0, #0xd
	beq _02230712
	cmp r0, #0xf
	beq _02230712
	bl ov74_0222FE4C
_02230712:
	pop {r4, pc}
	thumb_func_end ov74_022306C8

	thumb_func_start ov74_02230714
ov74_02230714: ; 0x02230714
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov74_02231184
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _0223078A
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov74_022311AC
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _0223078A
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _0223078A
	ldr r0, [r4, #0xc]
	bl ov74_022313F0
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _0223078A
	ldr r0, [r4, #0xc]
	bl ov74_0223145C
	ldr r0, [r4, #0xc]
	bl ov74_02231424
	cmp r0, #0
	beq _02230786
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	cmp r0, #1
	beq _02230786
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02230786:
	mov r0, #0
	strb r0, [r4, #0x19]
_0223078A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov74_02230714

	thumb_func_start ov74_0223078C
ov74_0223078C: ; 0x0223078C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov74_02231184
	add r4, r0, #0
	bl ov74_02231094
	cmp r0, #2
	bne _02230814
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	beq _02230814
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov74_022311AC
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02230814
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02230814
	ldr r0, [r4, #0xc]
	bl ov74_022313F0
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _02230814
	bl ov74_0223115C
	ldrh r5, [r6, #0x12]
	mov r2, #0
	add r3, r0, #0
_022307EE:
	ldrh r1, [r3, #6]
	cmp r5, r1
	bne _0223080C
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1, #8]
	mov r0, #3
	strb r0, [r1, #9]
	mov r0, #0xb4
	strb r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_0223080C:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #8
	blt _022307EE
_02230814:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov74_0223078C

	thumb_func_start ov74_02230818
ov74_02230818: ; 0x02230818
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov74_02231184
	add r4, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02230830
	add r0, r6, #0
	bl ov74_0223078C
	pop {r4, r5, r6, pc}
_02230830:
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	beq _0223083C
	ldrb r0, [r4, #0x19]
	cmp r0, #3
	bne _022308D8
_0223083C:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _022308D8
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl DC_FlushRange
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl MI_CpuCopy8
	bl ov74_022311AC
	ldr r1, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022308D8
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022308D8
	ldr r0, [r4, #0xc]
	bl ov74_022313F0
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _022308D8
	ldr r0, [r4, #0xc]
	bl ov74_0223145C
	mov r0, #0
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl ov74_02231424
	cmp r0, #0
	beq _022308CA
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _022308AA
	add r0, r6, #0
	bl ov74_0223078C
	b _022308BC
_022308AA:
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	add r0, r1, r0
	ldr r1, [r4, #4]
	lsr r2, r2, #8
	bl MI_CpuCopy8
_022308BC:
	ldr r1, [r5, #8]
	ldr r0, _022308DC ; =0xFFFF00FF
	and r0, r1
	str r0, [r5, #8]
	mov r0, #4
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, pc}
_022308CA:
	ldr r1, [r5, #8]
	ldr r0, _022308DC ; =0xFFFF00FF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #8]
_022308D8:
	pop {r4, r5, r6, pc}
	nop
_022308DC: .word 0xFFFF00FF
	thumb_func_end ov74_02230818

	thumb_func_start ov74_022308E0
ov74_022308E0: ; 0x022308E0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02230962
	ldrh r0, [r4, #4]
	cmp r0, #7
	beq _0223092A
	cmp r0, #9
	beq _02230938
	cmp r0, #0x15
	bne _02230962
	bl ov74_02231064
	cmp r0, #0xa
	beq _0223090A
	cmp r0, #0xb
	bne _02230962
_0223090A:
	bl ov74_02231184
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _0223091A
	cmp r0, #2
	beq _02230922
	pop {r4, pc}
_0223091A:
	add r0, r4, #0
	bl ov74_02230714
	pop {r4, pc}
_02230922:
	add r0, r4, #0
	bl ov74_02230818
	pop {r4, pc}
_0223092A:
	mov r0, #1
	bl ov74_02231124
	mov r0, #0
	bl ov74_02231130
	pop {r4, pc}
_02230938:
	bl ov74_02231118
	cmp r0, #0
	beq _02230946
	mov r0, #1
	bl ov74_02231130
_02230946:
	bl ov74_02231064
	cmp r0, #0xa
	beq _02230954
	cmp r0, #0xb
	beq _0223095C
	pop {r4, pc}
_02230954:
	ldrh r0, [r4, #0x12]
	bl ov74_0222FEA0
	pop {r4, pc}
_0223095C:
	mov r0, #0
	bl ov74_02231124
_02230962:
	pop {r4, pc}
	thumb_func_end ov74_022308E0

