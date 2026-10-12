#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022306C8
	.public ov74_02230714
	.public ov74_0223078C
	.public ov74_02230818
	.public ov74_022308E0
	.extern ov74_0222FE4C
	.extern ov74_0222FE78
	.extern ov74_0222FEA0
	.extern ov74_02231064
	.extern ov74_02231070
	.extern ov74_02231094
	.extern ov74_02231118
	.extern ov74_02231124
	.extern ov74_02231130
	.extern ov74_0223115C
	.extern ov74_02231184
	.extern ov74_022311AC
	.extern ov74_022311BC
	.extern ov74_022313F0
	.extern ov74_02231424
	.extern ov74_0223144C
	.extern ov74_0223145C
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

