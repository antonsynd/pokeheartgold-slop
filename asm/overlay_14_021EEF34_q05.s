#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"
	.public ov14_021EF248

    .text

	.text
	thumb_func_start ov14_021EF248
ov14_021EF248: ; 0x021EF248
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov14_021F6A34
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EF2E2
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x1e
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EF28C
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
	bl ov14_021F19F0
	pop {r3, r4, r5, pc}
_021EF28C:
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
	bne _021EF2C4
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EF2C4:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF2DE
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021EF2DE:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
_021EF2E2:
	bl ov14_021F6A14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EF370
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EF31C
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	ldr r0, [r4, #0x34]
	mov r1, #9
	mov r2, #0
	bl ov14_021F2A18
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F19F0
	pop {r3, r4, r5, pc}
_021EF31C:
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
	bne _021EF352
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EF352:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF36C
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021EF36C:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
_021EF370:
	add r0, r4, #0
	bl ov14_021F7B7C
	cmp r0, #1
	bne _021EF3B8
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
	beq _021EF3B4
	ldr r0, _021EF6C8 ; =0x000005DD
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
_021EF3B4:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
_021EF3B8:
	add r0, r4, #0
	bl ov14_021F70C0
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021EF3FE
	blo _021EF3CC
	b _021EF5A6
_021EF3CC:
	cmp r5, #0x2d
	bhi _021EF3F4
	sub r0, #0x24
	bmi _021EF3FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF3E0: ; jump table
	.short _021EF63A - _021EF3E0 - 2 ; case 0
	.short _021EF414 - _021EF3E0 - 2 ; case 1
	.short _021EF42A - _021EF3E0 - 2 ; case 2
	.short _021EF440 - _021EF3E0 - 2 ; case 3
	.short _021EF456 - _021EF3E0 - 2 ; case 4
	.short _021EF46C - _021EF3E0 - 2 ; case 5
	.short _021EF482 - _021EF3E0 - 2 ; case 6
	.short _021EF498 - _021EF3E0 - 2 ; case 7
	.short _021EF50A - _021EF3E0 - 2 ; case 8
	.short _021EF57A - _021EF3E0 - 2 ; case 9
_021EF3F4:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	beq _021EF410
_021EF3FC:
	b _021EF6A2
_021EF3FE:
	add r0, r1, #1
	cmp r5, r0
	bhi _021EF40A
	bne _021EF408
	b _021EF64C
_021EF408:
	b _021EF6A2
_021EF40A:
	add r0, r1, #2
	cmp r5, r0
	bne _021EF412
_021EF410:
	b _021EF6C4
_021EF412:
	b _021EF6A2
_021EF414:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF42A:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #1
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF440:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #2
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF456:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #3
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF46C:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #4
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF482:
	ldr r0, _021EF6C8 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #5
	bl ov14_021F0D58
	pop {r3, r4, r5, pc}
_021EF498:
	ldr r0, _021EF6CC ; =0x000005DC
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
	bne _021EF4EC
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EF4EC:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF506
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021EF506:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
_021EF50A:
	ldr r0, _021EF6CC ; =0x000005DC
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
	bne _021EF55C
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EF55C:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF576
	add r0, r4, #0
	mov r1, #0x82
	bl ov14_021F0D34
	pop {r3, r4, r5, pc}
_021EF576:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
_021EF57A:
	ldr r0, _021EF6CC ; =0x000005DC
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
	mov r2, #0xaf
	bl ov14_021F2270
	pop {r3, r4, r5, pc}
_021EF5A6:
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x24
	bhs _021EF600
	add r0, r4, #0
	bl ov14_021E7588
	cmp r0, #1
	ldr r1, [r4, #0x34]
	bne _021EF5E4
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #0
	bne _021EF622
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F6408
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	b _021EF622
_021EF5E4:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF622
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
	b _021EF622
_021EF600:
	add r0, r4, #0
	bl ov14_021E765C
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8648
	cmp r0, #1
	bne _021EF622
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8634
_021EF622:
	ldr r0, _021EF6CC ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021EF6C4
	add r0, r4, #0
	mov r1, #0x83
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EF63A:
	ldr r0, _021EF6D0 ; =0x00000633
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa1
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021EF64C:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E85E4
	cmp r0, #0
	bne _021EF66E
	ldr r0, _021EF6D0 ; =0x00000633
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa1
	bl ov14_021F2490
	pop {r3, r4, r5, pc}
_021EF66E:
	ldr r0, _021EF6CC ; =0x000005DC
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
	mov r1, #0x82
	bl ov14_021F0EE8
	pop {r3, r4, r5, pc}
_021EF6A2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xac
	mov r3, #0
	bl ov14_021E6070
	cmp r0, #0
	beq _021EF6C4
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021E7588
	add r0, r4, #0
	add r1, r5, #0
	bl ov14_021F1B4C
	pop {r3, r4, r5, pc}
_021EF6C4:
	mov r0, #0x82
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF6C8: .word 0x000005DD
_021EF6CC: .word 0x000005DC
_021EF6D0: .word 0x00000633
	thumb_func_end ov14_021EF248

