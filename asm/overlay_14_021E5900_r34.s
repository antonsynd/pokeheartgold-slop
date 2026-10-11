#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E6548
	.public ov14_021E65C4
	.public ov14_021E66F4
	.public ov14_021E6814
	.public ov14_021E690C
	.public ov14_021E6A3C
	.public ov14_021E6AA0
	.public ov14_021E6B48
	.public ov14_021E6C0C
	.extern ov14_021E6070
	.extern ov14_021E60C0
	.extern ov14_021E6464
	.extern ov14_021E6480
	.extern ov14_021E7588

    .text

	.text
	thumb_func_start ov14_021E6548
ov14_021E6548: ; 0x021E6548
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x1e
	bhs _021E6556
	cmp r2, #0x1e
	blo _021E65BC
_021E6556:
	cmp r4, #0x1e
	blo _021E655E
	cmp r2, #0x1e
	bhs _021E65BC
_021E655E:
	cmp r4, #0x1e
	blo _021E6564
	add r4, r2, #0
_021E6564:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	mov r1, #0x7b
	lsl r1, r1, #2
	cmp r0, r1
	bne _021E65BC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x70
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E65BC
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E60C0
	mov r1, #0
	bl BoxMon_UpdateShayminForm
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r4
	ldr r3, _021E65C0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	add r2, r4, #0
	bl ov14_021F2ED0
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, r4
	bne _021E65BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E7588
_021E65BC:
	pop {r4, r5, r6, pc}
	nop
_021E65C0: .word 0x00004094
	thumb_func_end ov14_021E6548

	thumb_func_start ov14_021E65C4
ov14_021E65C4: ; 0x021E65C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r6, [r0, #0xc]
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E665E
	mov r7, #0
_021E65DA:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _021E6650
	ldr r1, [r6, #4]
	ldr r0, [r5, #0x34]
	add r2, r0, r1
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r4, [r2, r0]
	ldr r0, [r6, #8]
	mov r2, #0x80
	tst r2, r0
	add r2, sp, #4
	bne _021E6604
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
	b _021E6634
_021E6604:
	cmp r1, #0x1e
	blo _021E661A
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r1, sp, #4
	mov r0, #0x23
	add r1, #2
	bl ov14_021F2F88
	b _021E662A
_021E661A:
	add r3, r5, #0
	add r3, #0x22
	ldrb r3, [r3]
	add r0, r1, #0
	add r1, sp, #4
	add r1, #2
	bl ov14_021F2F88
_021E662A:
	ldr r0, [r5, #0x34]
	add r1, r4, #0
	mov r2, #0
	bl ov14_021F2A18
_021E6634:
	ldr r1, [r5, #0x34]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6650:
	add r7, r7, #1
	add r6, #0x20
	cmp r7, #7
	blo _021E65DA
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E665E:
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r4, r6, #0
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0
	str r0, [sp]
	add r7, sp, #4
_021E6674:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E66DE
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, _021E66F0 ; =0x00004094
	ldrb r0, [r1, r0]
	mov r1, #0x18
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x10]
	mov ip, r0
	mov r0, #0x1c
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	add r0, r0, r1
	strh r0, [r7, #2]
	mov r1, #0x1a
	ldrsh r3, [r4, r1]
	add r1, r6, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x14]
	mov r0, #0x1e
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	mov r2, #0
	add r0, r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r5, #0x34]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov14_021F3190
_021E66DE:
	ldr r0, [sp]
	add r4, #0x20
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #7
	blo _021E6674
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E66F0: .word 0x00004094
	thumb_func_end ov14_021E65C4

	thumb_func_start ov14_021E66F4
ov14_021E66F4: ; 0x021E66F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	ldr r4, [r0, #0xc]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E676E
	mov r6, #0
_021E670A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E6760
	ldr r1, [r5, #0x34]
	ldr r0, [r4, #4]
	add r3, r5, #0
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	add r3, #0x22
	ldrb r7, [r1, r0]
	add r1, sp, #4
	ldrb r3, [r3]
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	cmp r1, r0
	beq _021E6744
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	add r0, sp, #4
	add r1, #0x90
	strh r1, [r0]
_021E6744:
	ldr r1, [r5, #0x34]
	lsl r0, r7, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, sp, #4
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6760:
	add r6, r6, #1
	add r4, #0x20
	cmp r6, #7
	blo _021E670A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E676E:
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xe0
	str r1, [r0]
	mov r1, #0
	add r0, r4, #0
_021E6780:
	ldr r2, [r0, #0xc]
	cmp r2, #0
	beq _021E6802
	add r2, r5, #0
	add r2, #0x21
	ldrb r3, [r2]
	ldr r2, [r0, #8]
	cmp r3, r2
	bne _021E6802
	lsl r6, r1, #5
	add r0, r4, #4
	str r0, [sp]
	ldr r1, [r5, #0x34]
	ldr r0, [r0, r6]
	add r1, r1, r0
	ldr r0, _021E6810 ; =0x00004094
	ldrb r3, [r1, r0]
	add r0, r4, r6
	mov r1, #0x1c
	ldrsh r7, [r0, r1]
	mov r1, #0x18
	ldrsh r1, [r0, r1]
	mov ip, r1
	add r1, r4, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r0, #0x10]
	add r4, #0xe0
	mul r1, r2
	lsr r1, r1, #0x10
	mov r2, ip
	mul r1, r2
	add r1, r7, r1
	add r7, sp, #4
	strh r1, [r7, #2]
	mov r1, #0x1e
	ldrsh r2, [r0, r1]
	mov r1, #0x1a
	ldrsh r1, [r0, r1]
	ldr r4, [r4]
	ldr r0, [r0, #0x14]
	mul r0, r4
	lsr r0, r0, #0x10
	mul r0, r1
	add r0, r2, r0
	strh r0, [r7]
	mov r2, #0
	ldr r1, [r5, #0x34]
	lsl r0, r3, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r1, [sp]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	mov r2, #0
	bl ov14_021F3190
	b _021E680A
_021E6802:
	add r1, r1, #1
	add r0, #0x20
	cmp r1, #7
	blo _021E6780
_021E680A:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6810: .word 0x00004094
	thumb_func_end ov14_021E66F4

	thumb_func_start ov14_021E6814
ov14_021E6814: ; 0x021E6814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	ldr r5, [r0, #0xc]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	cmp r0, #8
	bne _021E6876
	mov r4, #0
_021E682A:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021E6868
	ldr r1, [r6, #0x34]
	ldr r0, [r5, #4]
	add r3, r6, #0
	add r1, r1, r0
	ldr r0, _021E6908 ; =0x00004094
	add r3, #0x22
	ldrb r7, [r1, r0]
	add r1, sp, #4
	ldrb r3, [r3]
	ldr r0, [r5, #8]
	add r1, #2
	add r2, sp, #4
	bl ov14_021F2F88
	add r2, sp, #4
	ldr r1, [r6, #0x34]
	lsl r0, r7, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	add r3, r2, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	bl ManagedSprite_SetPositionXY
_021E6868:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #7
	blo _021E682A
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6876:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r4, r5, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xe0
	str r1, [r0]
	mov r0, #0
	str r0, [sp]
	add r7, sp, #4
_021E688C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E68F6
	ldr r1, [r6, #0x34]
	ldr r0, [r4, #4]
	add r1, r1, r0
	ldr r0, _021E6908 ; =0x00004094
	ldrb r0, [r1, r0]
	mov r1, #0x18
	ldrsh r3, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x10]
	mov ip, r0
	mov r0, #0x1c
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	add r0, r0, r1
	strh r0, [r7, #2]
	mov r1, #0x1a
	ldrsh r3, [r4, r1]
	add r1, r5, #0
	add r1, #0xe0
	ldr r2, [r1]
	ldr r1, [r4, #0x14]
	mov r0, #0x1e
	mul r1, r2
	lsr r1, r1, #0x10
	ldrsh r0, [r4, r0]
	mul r1, r3
	mov r2, #0
	add r0, r0, r1
	strh r0, [r7]
	mov r1, ip
	ldr r0, [r6, #0x34]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	bl ManagedSprite_SetPositionXY
	ldr r0, [r6, #0x34]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	bl ov14_021F31E0
_021E68F6:
	ldr r0, [sp]
	add r4, #0x20
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #7
	blo _021E688C
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6908: .word 0x00004094
	thumb_func_end ov14_021E6814

	thumb_func_start ov14_021E690C
ov14_021E690C: ; 0x021E690C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r1, #0
	add r1, r4, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	mov r0, #0x80
	tst r0, r4
	beq _021E694C
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6464
	ldrb r1, [r5, #0x1f]
	str r0, [sp]
	cmp r0, r1
	beq _021E6940
	ldr r0, [r5, #4]
	ldr r1, [sp]
	bl PCStorage_CountMonsAndEggsInBox
	cmp r0, #0x1e
	bne _021E6944
_021E6940:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6944:
	mov r0, #0x80
	eor r4, r0
	mov r7, #0
	b _021E695E
_021E694C:
	ldrb r0, [r5, #0x1f]
	add r1, r4, #0
	mov r2, #0xac
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0
	bl ov14_021E6070
	add r7, r0, #0
_021E695E:
	cmp r6, #0x1e
	blo _021E69D6
	add r1, r6, #0
	add r0, r5, #0
	sub r1, #0x1e
	bl ov14_021E6480
	cmp r0, #0
	bne _021E699C
	cmp r7, #0
	bne _021E6984
	cmp r4, #0x1e
	blo _021E6980
	ldrb r1, [r5, #0x1f]
	ldr r0, [sp]
	cmp r0, r1
	beq _021E699C
_021E6980:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6984:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E699C
	cmp r4, #0x1e
	bhs _021E699C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E699C:
	cmp r4, #0x1e
	bhs _021E6A36
	sub r6, #0x1e
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E69C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E69C4:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E6A36
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E69D6:
	cmp r4, #0x1e
	blo _021E6A36
	cmp r7, #0
	beq _021E6A36
	add r1, r4, #0
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	mov r1, #6
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6A02
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A02:
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021E6A14
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A14:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6A36
	sub r4, #0x1e
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021E6480
	cmp r0, #0
	bne _021E6A36
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6A36:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E690C

	thumb_func_start ov14_021E6A3C
ov14_021E6A3C: ; 0x021E6A3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, r2, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6A54
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A54:
	add r1, r4, #0
	add r0, r5, #0
	sub r1, #0x1e
	bl ov14_021E6480
	cmp r0, #0
	bne _021E6A66
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A66:
	sub r4, #0x1e
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
	bne _021E6A8A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6A8A:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _021E6A9C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6A9C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021E6A3C

	thumb_func_start ov14_021E6AA0
ov14_021E6AA0: ; 0x021E6AA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	mov r2, #0xac
	mov r3, #0
	add r5, r0, #0
	bl ov14_021E6070
	cmp r0, #0
	bne _021E6ABA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ABA:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x4c
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021E6ACE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6ACE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6AEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6AEC:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r7, #0
	bl ItemIdIsMail
	cmp r0, #1
	bne _021E6B0A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B0A:
	ldr r0, [sp]
	cmp r0, #0x70
	bne _021E6B26
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B26
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B26:
	cmp r7, #0x70
	bne _021E6B40
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov14_021E6070
	ldr r1, _021E6B44 ; =0x000001E7
	cmp r0, r1
	beq _021E6B40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E6B40:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6B44: .word 0x000001E7
	thumb_func_end ov14_021E6AA0

	thumb_func_start ov14_021E6B48
ov14_021E6B48: ; 0x021E6B48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	add r2, r0, r1
	ldr r1, _021E6C08 ; =0x00004094
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r2, [r4, #8]
	mov r0, #0x80
	tst r0, r2
	bne _021E6B88
	add r5, #0x22
	ldrb r3, [r5]
	add r1, sp, #0
	add r0, r2, #0
	add r1, #2
	add r2, sp, #0
	bl ov14_021F2F88
	b _021E6B98
_021E6B88:
	mov r1, #0x7f
	and r1, r2
	add r2, sp, #0
	ldr r0, [r5, #0x34]
	add r2, #2
	add r3, sp, #0
	bl ov14_021F4940
_021E6B98:
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BB2
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6BBC
_021E6BB2:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6BBC:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6BEE
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
_021E6BEE:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	nop
_021E6C08: .word 0x00004094
	thumb_func_end ov14_021E6B48

	thumb_func_start ov14_021E6C0C
ov14_021E6C0C: ; 0x021E6C0C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #8]
	add r2, r0, r1
	ldr r1, _021E6CC4 ; =0x00004094
	ldrb r6, [r2, r1]
	ldr r2, [r4, #4]
	add r2, r0, r2
	ldrb r1, [r2, r1]
	add r2, r4, #0
	add r2, #0x1e
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x1c
	bl ManagedSprite_GetPositionXY
	ldr r1, [r5, #0x34]
	lsl r0, r6, #2
	add r1, r1, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r0, #0x1c
	add r2, sp, #0
	mov r1, #2
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6C6A
	mov r3, #1
	strh r3, [r4, #0x18]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	sub r0, r1, r0
	b _021E6C74
_021E6C6A:
	sub r3, r1, #3
	strh r3, [r4, #0x18]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
_021E6C74:
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x10]
	mov r0, #0x1e
	add r2, sp, #0
	mov r1, #0
	ldrsh r5, [r4, r0]
	ldrsh r3, [r2, r1]
	cmp r5, r3
	bgt _021E6CA8
	mov r3, #1
	strh r3, [r4, #0x1a]
	ldrsh r1, [r2, r1]
	ldrsh r0, [r4, r0]
	add sp, #4
	sub r0, r1, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	pop {r3, r4, r5, r6, pc}
_021E6CA8:
	sub r3, r1, #1
	strh r3, [r4, #0x1a]
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	lsl r1, r0, #0x10
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [r4, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E6CC4: .word 0x00004094
	thumb_func_end ov14_021E6C0C

