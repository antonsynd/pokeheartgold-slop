#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EC8D0

    .text

	.text
	thumb_func_start ov14_021EC8D0
ov14_021EC8D0: ; 0x021EC8D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A34
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EC97E
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EC928
	ldr r0, _021ECC30 ; =0x000005EB
	bl PlaySE
	ldr r2, [r4, #0x34]
	ldr r1, _021ECC34 ; =0x000040B8
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
	bl ov14_021F083C
	pop {r3, r4, r5, pc}
_021EC928:
	add r0, r4, #0
	bl ov14_021E765C
	ldr r0, [r4, #0x34]
	add r5, #0x1e
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021EC960
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EC960:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EC97A
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021EC97A:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
_021EC97E:
	bl ov14_021F6A14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021ECA20
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EC9CC
	ldr r0, _021ECC30 ; =0x000005EB
	bl PlaySE
	ldr r2, [r4, #0x34]
	ldr r1, _021ECC34 ; =0x000040B8
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
	bl ov14_021F083C
	pop {r3, r4, r5, pc}
_021EC9CC:
	add r0, r4, #0
	bl ov14_021E765C
	ldr r0, [r4, #0x34]
	lsl r1, r5, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021ECA02
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021ECA02:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021ECA1C
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021ECA1C:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
_021ECA20:
	add r0, r4, #0
	bl ov14_021F7B7C
	cmp r0, #1
	bne _021ECA68
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021ECA64
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r0, #0x21
	strb r5, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x26
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0x97
	bl ov14_021F2330
	pop {r3, r4, r5, pc}
_021ECA64:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
_021ECA68:
	add r0, r4, #0
	bl ov14_021F70C0
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021ECAAE
	blo _021ECA7C
	b _021ECC6A
_021ECA7C:
	cmp r5, #0x2d
	bhi _021ECAA4
	sub r0, #0x24
	bmi _021ECAAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021ECA90: ; jump table
	.short _021ECCFE - _021ECA90 - 2 ; case 0
	.short _021ECAC4 - _021ECA90 - 2 ; case 1
	.short _021ECADA - _021ECA90 - 2 ; case 2
	.short _021ECAF0 - _021ECA90 - 2 ; case 3
	.short _021ECB06 - _021ECA90 - 2 ; case 4
	.short _021ECB1C - _021ECA90 - 2 ; case 5
	.short _021ECB32 - _021ECA90 - 2 ; case 6
	.short _021ECB48 - _021ECA90 - 2 ; case 7
	.short _021ECBBA - _021ECA90 - 2 ; case 8
	.short _021ECC2A - _021ECA90 - 2 ; case 9
_021ECAA4:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	beq _021ECAC0
_021ECAAC:
	b _021ECD70
_021ECAAE:
	add r0, r1, #1
	cmp r5, r0
	bhi _021ECABA
	bne _021ECAB8
	b _021ECD1A
_021ECAB8:
	b _021ECD70
_021ECABA:
	add r0, r1, #2
	cmp r5, r0
	bne _021ECAC2
_021ECAC0:
	b _021ECD98
_021ECAC2:
	b _021ECD70
_021ECAC4:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECADA:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECAF0:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECB06:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECB1C:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECB32:
	ldr r0, _021ECC38 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #5
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021ECB48:
	ldr r0, _021ECC3C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov14_021F1004
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021ECB9C
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021ECB9C:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021ECBB6
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021ECBB6:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
_021ECBBA:
	ldr r0, _021ECC3C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F1004
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #1
	bne _021ECC0C
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021ECC0C:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021ECC26
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021ECC26:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
_021ECC2A:
	ldr r0, _021ECC3C ; =0x000005DC
	b _021ECC40
	nop
_021ECC30: .word 0x000005EB
_021ECC34: .word 0x000040B8
_021ECC38: .word 0x000005DD
_021ECC3C: .word 0x000005DC
_021ECC40:
	bl PlaySE
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0xa0
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021ECC6A:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x25
	bhs _021ECCC4
	add r0, r4, #0
	bl ov14_021E7588
	cmp r0, #1
	ldr r1, [r4, #0x34]
	bne _021ECCA8
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #0
	bne _021ECCE6
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F6408
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	b _021ECCE6
_021ECCA8:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021ECCE6
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021ECCE6
_021ECCC4:
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021ECCE6
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021ECCE6:
	ldr r0, _021ECD9C ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021ECD98
	add r0, r4, #0
	mov r1, #0x4b
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021ECCFE:
	ldr r0, _021ECDA0 ; =0x00000633
	bl PlaySE
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #8
	bl ov14_021F29E4
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa1
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021ECD1A:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #0
	bne _021ECD3C
	ldr r0, _021ECDA0 ; =0x00000633
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa1
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021ECD3C:
	ldr r0, _021ECD9C ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r1, #6
	bl _s32_div_f
	ldr r0, [r4, #0x34]
	add r1, #0x25
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r4, #0
	mov r1, #0x29
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021ECD70:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021ECD98
	ldr r0, _021ECDA4 ; =0x000005EB
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F1580
	pop {r3, r4, r5, pc}
_021ECD98:
	mov r0, #0x29
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021ECD9C: .word 0x000005DC
_021ECDA0: .word 0x00000633
_021ECDA4: .word 0x000005EB
	thumb_func_end ov14_021EC8D0

