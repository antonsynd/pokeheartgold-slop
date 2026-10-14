#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223A0D4
	.extern ov12_02238A68

	.text

	.text
	thumb_func_start ov12_0223A0D4
ov12_0223A0D4: ; 0x0223A0D4
	push {r3, r4, r5, lr}
	ldr r1, _0223A20C ; =0x00002490
	add r5, r0, #0
	mov r2, #5
	bl OverlayManager_CreateAndGetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	ldr r2, _0223A20C ; =0x00002490
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02238A68
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223A114
	ldr r1, _0223A210 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223A114
	mov r1, #0x80
	tst r0, r1
	beq _0223A11C
_0223A114:
	bl sub_0203A914
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A11C:
	ldr r0, _0223A214 ; =SDK_OVERLAY_OVY_5_ID
	mov r1, #2
	bl HandleLoadOverlay
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	bne _0223A130
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A130:
	mov r0, #5
	mov r1, #0x30
	bl Heap_Alloc
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x30
	bl MIi_CpuClearFast
	bl sub_0203769C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r5, #0
	bl sub_020378AC
	cmp r0, #3
	bhi _0223A1B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A166: ; jump table
	.short _0223A16E - _0223A166 - 2 ; case 0
	.short _0223A194 - _0223A166 - 2 ; case 1
	.short _0223A194 - _0223A166 - 2 ; case 2
	.short _0223A16E - _0223A166 - 2 ; case 3
_0223A16E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
	b _0223A1B4
_0223A194:
	add r0, r4, #0
	add r1, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r2, [r1, #4]
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
_0223A1B4:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020378AC
	cmp r0, #3
	bhi _0223A1FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A1DC: ; jump table
	.short _0223A1E4 - _0223A1DC - 2 ; case 0
	.short _0223A1F2 - _0223A1DC - 2 ; case 1
	.short _0223A1F2 - _0223A1DC - 2 ; case 2
	.short _0223A1E4 - _0223A1DC - 2 ; case 3
_0223A1E4:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	b _0223A1FE
_0223A1F2:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	add r0, #0x29
	strb r1, [r0]
_0223A1FE:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov05_0221BA00
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223A20C: .word 0x00002490
_0223A210: .word 0x0000240C
_0223A214: .word SDK_OVERLAY_OVY_5_ID
	thumb_func_end ov12_0223A0D4

