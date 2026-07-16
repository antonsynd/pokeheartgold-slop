#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"

    .text

	thumb_func_start ov14_021EEF34
ov14_021EEF34: ; 0x021EEF34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x21
	ldrb r4, [r0]
	cmp r4, #0x1e
	blo _021EEF46
	sub r4, #0x1e
	lsl r0, r4, #0x10
	lsr r4, r0, #0x10
_021EEF46:
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
	ldrh r1, [r5, #0x1c]
	add r0, r5, #0
	mov r2, #0x25
	bl ov14_021F6768
	mov r0, #0x77
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov14_021EEF34

	thumb_func_start ov14_021EEF8C
ov14_021EEF8C: ; 0x021EEF8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x34]
	add r0, #0x21
	ldr r4, [r2, #0xc]
	ldrb r0, [r0]
	ldrh r1, [r4]
	cmp r1, r0
	beq _021EEFA6
	ldr r0, _021EF01C ; =0x000088C8
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _021EEFE2
_021EEFA6:
	add r0, r5, #0
	bl ov14_021F1F38
	ldr r1, [r5, #0x34]
	ldr r0, _021EF01C ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _021EEFCA
	ldr r0, _021EF020 ; =0x000005EA
	bl PlaySE
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
_021EEFCA:
	ldr r0, [r5, #0x34]
	mov r1, #0x24
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x75
	pop {r3, r4, r5, pc}
_021EEFE2:
	ldr r0, _021EF020 ; =0x000005EA
	bl PlaySE
	ldrh r1, [r4]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	mov r0, #0x7f
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF01C: .word 0x000088C8
_021EF020: .word 0x000005EA
	thumb_func_end ov14_021EEF8C

	thumb_func_start ov14_021EF024
ov14_021EF024: ; 0x021EF024
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EF038
	mov r0, #0x7f
	pop {r3, r4, r5, r6, r7, pc}
_021EF038:
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	mov r2, #6
	ldr r4, [r0, #0xc]
	add r0, r5, #0
	ldrh r1, [r4]
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r1, [r4]
	ldr r6, [r5, #0x34]
	ldr r3, _021EF17C ; =0x000088C8
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	ldrb r1, [r5, #0x1f]
	ldrh r2, [r4]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF092
	ldrh r2, [r4]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF180 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF092:
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov14_021E7588
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	ldr r3, _021EF17C ; =0x000088C8
	add r1, #0x21
	strh r7, [r0, r3]
	ldr r6, [r5, #0x34]
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF0DE
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF180 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF0DE:
	ldr r1, [r5, #0x34]
	ldr r0, _021EF17C ; =0x000088C8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021EF13E
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
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
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	ldr r1, _021EF184 ; =ov14_021E94BC
	add r0, r5, #0
	mov r2, #0x75
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
_021EF13E:
	ldr r0, _021EF188 ; =0x000005EB
	bl PlaySE
	ldr r0, [r5, #0x34]
	ldr r1, _021EF17C ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	ldr r1, _021EF18C ; =ov14_021EA728
	add r0, r5, #0
	mov r2, #0x80
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF17C: .word 0x000088C8
_021EF180: .word 0x00004094
_021EF184: .word ov14_021E94BC
_021EF188: .word 0x000005EB
_021EF18C: .word ov14_021EA728
	thumb_func_end ov14_021EF024

	thumb_func_start ov14_021EF190
ov14_021EF190: ; 0x021EF190
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r2, #0
	ldr r4, [r0, #0xc]
	ldrh r1, [r4]
	bl ov14_021F34C8
	ldr r0, _021EF1E8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	bl ov14_021F40DC
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #2
	bl ov14_021F29E4
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r5, #0
	ldrh r1, [r4]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
	mov r0, #0x81
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF1E8: .word 0x000005EA
	thumb_func_end ov14_021EF190

	thumb_func_start ov14_021EF1EC
ov14_021EF1EC: ; 0x021EF1EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	bl ov14_021F2A04
	cmp r0, #1
	bne _021EF200
	mov r0, #0x81
	pop {r4, pc}
_021EF200:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov14_021F391C
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
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
	ldr r1, _021EF244 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x75
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EF244: .word ov14_021E94BC
	thumb_func_end ov14_021EF1EC

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

	thumb_func_start ov14_021EF6D4
ov14_021EF6D4: ; 0x021EF6D4
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x82
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EF6D4

	thumb_func_start ov14_021EF6E4
ov14_021EF6E4: ; 0x021EF6E4
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021F40DC
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88F8
	mov r0, #0x85
	pop {r4, pc}
	thumb_func_end ov14_021EF6E4

	thumb_func_start ov14_021EF6FC
ov14_021EF6FC: ; 0x021EF6FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x34]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r4, [r1, #0xc]
	mov r1, #0x10
	bl sub_020199E4
	cmp r0, #0
	beq _021EF718
	mov r0, #0x85
	pop {r3, r4, r5, r6, r7, pc}
_021EF718:
	add r0, r5, #0
	add r0, #0x21
	ldrh r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	bne _021EF784
	add r0, r5, #0
	ldrh r4, [r4, #2]
	bl ov14_021F1F38
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r1, [r5, #0x34]
	ldr r0, _021EF898 ; =0x000088C8
	ldrh r0, [r1, r0]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EF776
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r4, r0
	beq _021EF776
	ldr r0, _021EF89C ; =0x000005F3
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x25
	bl ov14_021F6730
	mov r0, #0x87
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021EF776:
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r3, r4, r5, r6, r7, pc}
_021EF784:
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #1
	bl ov14_021F34C8
	ldrh r1, [r4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r1, [r4]
	ldr r6, [r5, #0x34]
	ldr r3, _021EF898 ; =0x000088C8
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	ldrb r1, [r5, #0x1f]
	ldrh r2, [r4]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF7DE
	ldrh r2, [r4]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF8A0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF7DE:
	ldrh r1, [r4]
	add r0, r5, #0
	bl ov14_021E7588
	ldrh r1, [r4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	ldr r0, [r0, #0x2c]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	ldr r3, _021EF898 ; =0x000088C8
	add r1, #0x21
	strh r7, [r0, r3]
	ldr r6, [r5, #0x34]
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #6
	add r3, r6, r3
	bl ov14_021E6094
	add r2, r5, #0
	add r2, #0x21
	ldrb r1, [r5, #0x1f]
	ldrb r2, [r2]
	add r0, r5, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EF838
	add r0, r5, #0
	add r0, #0x21
	ldrb r2, [r0]
	ldr r3, [r5, #0x34]
	ldrb r1, [r5, #0x1f]
	add r6, r3, r2
	ldr r3, _021EF8A0 ; =0x00004094
	add r0, r5, #0
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EF838:
	ldr r0, [r5, #0x34]
	ldr r1, _021EF898 ; =0x000088C8
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021EF85E
	ldrh r1, [r4]
	add r0, r5, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r3, r4, r5, r6, r7, pc}
_021EF85E:
	bl ov14_021F3844
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov14_021F391C
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F29E4
	ldr r0, [r5, #0x34]
	mov r1, #0xb
	mov r2, #1
	bl ov14_021F2A18
	ldr r0, [r5, #0x34]
	bl ov14_021F39D0
	ldr r0, _021EF8A4 ; =0x000005EB
	bl PlaySE
	ldr r1, _021EF8A8 ; =ov14_021EA928
	add r0, r5, #0
	mov r2, #0x86
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF898: .word 0x000088C8
_021EF89C: .word 0x000005F3
_021EF8A0: .word 0x00004094
_021EF8A4: .word 0x000005EB
_021EF8A8: .word ov14_021EA928
	thumb_func_end ov14_021EF6FC

	thumb_func_start ov14_021EF8AC
ov14_021EF8AC: ; 0x021EF8AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r2, #0
	ldr r7, [r0, #0xc]
	ldrh r1, [r7]
	bl ov14_021F34C8
	add r0, r5, #0
	add r0, #0x21
	ldrb r6, [r0]
	add r0, r5, #0
	ldrh r4, [r7, #2]
	ldrh r1, [r7]
	add r0, #0x21
	strb r1, [r0]
	add r0, r5, #0
	bl ov14_021F1F38
	ldr r3, [r5, #0x34]
	ldr r1, _021EF918 ; =0x000088C8
	mov r2, #0
	ldrh r0, [r3, r1]
	strh r2, [r3, r1]
	bl ItemIdIsMail
	cmp r0, #1
	bne _021EF908
	cmp r4, r6
	beq _021EF908
	ldr r0, _021EF91C ; =0x000005F3
	bl PlaySE
	ldr r0, [r5, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	add r0, r5, #0
	mov r1, #0x25
	bl ov14_021F6730
	mov r0, #0x87
	str r0, [r5, #0x30]
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021EF908:
	ldr r0, [r5, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF918: .word 0x000088C8
_021EF91C: .word 0x000005F3
	thumb_func_end ov14_021EF8AC

	thumb_func_start ov14_021EF920
ov14_021EF920: ; 0x021EF920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x25
	bl ov14_021F6688
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0x82
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021EF920

	thumb_func_start ov14_021EF93C
ov14_021EF93C: ; 0x021EF93C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov14_021F7A50
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #0
	bne _021EF956
	mov r4, #1
	mvn r4, r4
_021EF956:
	cmp r4, #0x24
	bhi _021EF95E
	beq _021EF990
	b _021EF9A0
_021EF95E:
	add r0, r4, #4
	cmp r0, #3
	bhi _021EF9A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF970: ; jump table
	.short _021EF988 - _021EF970 - 2 ; case 0
	.short _021EF978 - _021EF970 - 2 ; case 1
	.short _021EF990 - _021EF970 - 2 ; case 2
	.short _021EF9B0 - _021EF970 - 2 ; case 3
_021EF978:
	ldr r0, _021EF9B4 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x89
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EF988:
	ldr r0, _021EF9B4 ; =0x000005DC
	bl PlaySE
	b _021EF9B0
_021EF990:
	ldr r0, _021EF9B8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	mov r1, #0xff
	bl ov14_021F1C4C
	pop {r3, r4, r5, pc}
_021EF9A0:
	ldr r0, _021EF9B8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F1C4C
	pop {r3, r4, r5, pc}
_021EF9B0:
	mov r0, #0x88
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF9B4: .word 0x000005DC
_021EF9B8: .word 0x000005EA
	thumb_func_end ov14_021EF93C

	thumb_func_start ov14_021EF9BC
ov14_021EF9BC: ; 0x021EF9BC
	push {r3, lr}
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0xc]
	bl Heap_Free
	mov r0, #0x88
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov14_021EF9BC

	thumb_func_start ov14_021EF9CC
ov14_021EF9CC: ; 0x021EF9CC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r1, _021EFB48 ; =0x0000044C
	mov r2, #0
	ldrb r1, [r0, r1]
	bl ov14_021F34C8
	ldr r0, [r4, #0x34]
	ldr r2, _021EFB48 ; =0x0000044C
	ldr r3, _021EFB4C ; =0x000088CA
	ldrb r1, [r0, r2]
	ldrh r5, [r0, r3]
	cmp r1, r5
	bne _021EFA12
	mov r5, #0
	sub r1, r3, #2
	strh r5, [r0, r1]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	ldrb r1, [r1, r2]
	bl ov14_021E7588
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	ldr r1, _021EFB50 ; =ov14_021E9970
	add r0, r4, #0
	mov r2, #0x82
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
_021EFA12:
	add r0, r4, #0
	mov r2, #6
	mov r3, #0
	bl ov14_021E6070
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r3, [r4, #0x34]
	ldr r1, _021EFB48 ; =0x0000044C
	ldr r6, _021EFB54 ; =0x000088C8
	ldrb r1, [r3, r1]
	add r0, r4, #0
	mov r2, #6
	add r3, r3, r6
	bl ov14_021E6094
	ldr r3, [r4, #0x34]
	ldr r2, _021EFB48 ; =0x0000044C
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r3, r2]
	add r0, r4, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EFA5C
	ldr r3, [r4, #0x34]
	ldr r0, _021EFB48 ; =0x0000044C
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r3, r0]
	add r0, r4, #0
	add r6, r3, r2
	ldr r3, _021EFB58 ; =0x00004094
	ldrb r3, [r6, r3]
	bl ov14_021F2ED0
_021EFA5C:
	ldr r2, [r4, #0x34]
	ldr r1, _021EFB48 ; =0x0000044C
	add r0, r4, #0
	ldrb r1, [r2, r1]
	bl ov14_021E7588
	ldr r3, _021EFB54 ; =0x000088C8
	ldr r0, [r4, #0x34]
	add r1, r3, #2
	strh r5, [r0, r3]
	ldr r5, [r4, #0x34]
	add r0, r4, #0
	ldrh r1, [r5, r1]
	mov r2, #6
	add r3, r5, r3
	bl ov14_021E6094
	ldr r3, [r4, #0x34]
	ldr r2, _021EFB4C ; =0x000088CA
	ldrb r1, [r4, #0x1f]
	ldrh r2, [r3, r2]
	add r0, r4, #0
	bl ov14_021E60C0
	bl ov14_021E64D0
	cmp r0, #1
	bne _021EFAA8
	ldr r3, [r4, #0x34]
	ldr r0, _021EFB4C ; =0x000088CA
	ldrb r1, [r4, #0x1f]
	ldrh r2, [r3, r0]
	add r0, r4, #0
	add r5, r3, r2
	ldr r3, _021EFB58 ; =0x00004094
	ldrb r3, [r5, r3]
	bl ov14_021F2ED0
_021EFAA8:
	ldr r2, [r4, #0x34]
	ldr r0, _021EFB54 ; =0x000088C8
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _021EFAC8
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	bl ov14_021E8620
	ldr r1, _021EFB50 ; =ov14_021E9970
	add r0, r4, #0
	mov r2, #0x82
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
_021EFAC8:
	ldr r0, _021EFB5C ; =0x0000044B
	mov r1, #1
	strb r1, [r2, r0]
	ldr r0, [r4, #0x34]
	mov r1, #0xb
	mov r2, #0
	bl ov14_021F2A18
	ldr r0, [r4, #0x34]
	ldr r1, _021EFB48 ; =0x0000044C
	mov r2, #2
	ldrb r1, [r0, r1]
	bl ov14_021F39A0
	ldr r0, [r4, #0x34]
	ldr r1, _021EFB54 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F3844
	ldr r2, [r4, #0x34]
	ldr r1, _021EFB54 ; =0x000088C8
	add r0, r4, #0
	ldrh r1, [r2, r1]
	bl ov14_021F5564
	add r5, r0, #0
	mov r0, #0x2f
	ldr r3, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r3, r0]
	add r3, #0x30
	lsl r2, r5, #4
	mov r1, #0x10
	add r2, r3, r2
	bl sub_02019A60
	mov r0, #0x2f
	add r3, r5, #1
	ldr r2, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r2, r0]
	add r2, #0x30
	lsl r3, r3, #4
	mov r1, #0x10
	add r2, r2, r3
	bl sub_02019A60
	ldr r0, [r4, #0x34]
	ldr r1, _021EFB54 ; =0x000088C8
	ldrh r1, [r0, r1]
	bl ov14_021F38B0
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E88BC
	ldr r1, _021EFB60 ; =ov14_021EAA04
	add r0, r4, #0
	mov r2, #0x88
	bl ov14_021F0234
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EFB48: .word 0x0000044C
_021EFB4C: .word 0x000088CA
_021EFB50: .word ov14_021E9970
_021EFB54: .word 0x000088C8
_021EFB58: .word 0x00004094
_021EFB5C: .word 0x0000044B
_021EFB60: .word ov14_021EAA04
	thumb_func_end ov14_021EF9CC

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

