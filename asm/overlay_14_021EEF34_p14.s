#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"
	.public ov14_021EFB64

    .text

	.text
	thumb_func_start ov14_021EFB64
ov14_021EFB64: ; 0x021EFB64
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A24
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EFC52
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EFBBC
	ldr r0, _021EFDC8 ; =0x000005EB
	bl PlaySE
	ldr r2, [r4, #0x34]
	ldr r1, _021EFDCC ; =0x000040B8
	add r0, r2, r1
	add r1, r1, #4
	add r1, r2, r1
	bl System_GetTouchNewCoords
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r5, #0x1e
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F1D6C
	pop {r3, r4, r5, pc}
_021EFBBC:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #1
	bne _021EFC32
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
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
	bl ov14_021E8328
	add r0, r4, #0
	bl ov14_021F40DC
	ldr r1, [r4, #0x34]
	ldr r0, _021EFDD0 ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EFC26
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
_021EFC26:
	ldr r1, _021EFDD4 ; =ov14_021EA674
	add r0, r4, #0
	mov r2, #0x8c
	bl ov14_021F0234
	pop {r3, r4, r5, pc}
_021EFC32:
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
	mov r0, #0x8b
	pop {r3, r4, r5, pc}
_021EFC52:
	add r0, r4, #0
	bl ov14_021F75C8
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021EFC92
	bhs _021EFCCA
	cmp r5, #9
	bhi _021EFC88
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EFC74: ; jump table
	.short _021EFD7A - _021EFC74 - 2 ; case 0
	.short _021EFD7A - _021EFC74 - 2 ; case 1
	.short _021EFD7A - _021EFC74 - 2 ; case 2
	.short _021EFD7A - _021EFC74 - 2 ; case 3
	.short _021EFD7A - _021EFC74 - 2 ; case 4
	.short _021EFD7A - _021EFC74 - 2 ; case 5
	.short _021EFCA6 - _021EFC74 - 2 ; case 6
	.short _021EFD00 - _021EFC74 - 2 ; case 7
	.short _021EFCB8 - _021EFC74 - 2 ; case 8
	.short _021EFD12 - _021EFC74 - 2 ; case 9
_021EFC88:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	beq _021EFD4C
	b _021EFD7A
_021EFC92:
	add r0, r1, #1
	cmp r5, r0
	bhi _021EFC9C
	beq _021EFD00
	b _021EFD7A
_021EFC9C:
	add r0, r1, #2
	cmp r5, r0
	bne _021EFCA4
	b _021EFDC4
_021EFCA4:
	b _021EFD7A
_021EFCA6:
	ldr r0, _021EFDD8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xb0
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021EFCB8:
	ldr r0, _021EFDD8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xad
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EFCCA:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #5
	bhi _021EFCE2
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	b _021EFCF0
_021EFCE2:
	cmp r1, #8
	beq _021EFCF0
	cmp r1, #9
	beq _021EFCF0
	add r0, r4, #0
	bl ov14_021E765C
_021EFCF0:
	ldr r0, _021EFDDC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0x8c
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EFD00:
	ldr r0, _021EFDE0 ; =0x00000633
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0x9f
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EFD12:
	ldr r0, _021EFDDC ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
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
	mov r2, #0xb1
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EFD4C:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #5
	bhi _021EFD64
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	b _021EFD72
_021EFD64:
	cmp r1, #8
	beq _021EFD72
	cmp r1, #9
	beq _021EFD72
	add r0, r4, #0
	bl ov14_021E765C
_021EFD72:
	ldr r0, _021EFDDC ; =0x000005DC
	bl PlaySE
	b _021EFDC4
_021EFD7A:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EFDC4
	ldr r0, _021EFDD8 ; =0x000005DD
	bl PlaySE
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #8
	bl ov14_021F7AC4
	ldr r0, [r4, #0x34]
	mov r1, #8
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	add r5, #0x1e
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F1CDC
	pop {r3, r4, r5, pc}
_021EFDC4:
	mov r0, #0x8b
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EFDC8: .word 0x000005EB
_021EFDCC: .word 0x000040B8
_021EFDD0: .word 0x000088C8
_021EFDD4: .word ov14_021EA674
_021EFDD8: .word 0x000005DD
_021EFDDC: .word 0x000005DC
_021EFDE0: .word 0x00000633
	thumb_func_end ov14_021EFB64

