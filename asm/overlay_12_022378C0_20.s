#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223A260

	.text

	.text
	thumb_func_start ov12_0223A260
ov12_0223A260: ; 0x0223A260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223A288
	ldr r1, _0223A3A4 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223A288
	mov r1, #0x80
	tst r0, r1
	beq _0223A290
_0223A288:
	bl sub_0203A914
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223A290:
	bl sub_0203769C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
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
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	beq _0223A30E
	mov r6, #0
	add r5, r4, #0
_0223A2BC:
	add r0, r6, #0
	bl sub_020378AC
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r5, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	add r0, r6, #0
	bl sub_020378AC
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #5
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r7, #2
	add r1, r2, r1
	add r6, r6, #1
	add r5, r5, #4
	str r0, [r1, #0x14]
	cmp r6, #4
	blt _0223A2BC
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r1, [r4, r0]
	mov r2, #1
	add r1, #0x28
	strb r2, [r1]
	ldr r0, [r4, r0]
	add r0, #0x29
	strb r2, [r0]
	b _0223A394
_0223A30E:
	add r0, r5, #0
	lsl r7, r5, #2
	bl sub_020378AC
	mov r2, #0x71
	lsl r2, r2, #2
	add r1, r4, r7
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r1, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	mov r0, #1
	eor r0, r5
	lsl r6, r0, #2
	str r0, [sp]
	bl sub_020378AC
	add r1, r4, r6
	ldr r2, [r1, #0x68]
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	add r0, r1, r0
	str r2, [r0, #4]
	add r0, r5, #0
	bl sub_020378AC
	add r5, r0, #0
	add r0, r4, r7
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r5, #2
	add r1, r2, r1
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl sub_020378AC
	add r5, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl PlayerProfile_GetPlayerName_NewString
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	lsl r2, r5, #2
	add r2, r3, r2
	str r0, [r2, #0x14]
	ldr r0, [r4, r1]
	mov r2, #5
	str r2, [r0, #0x24]
	ldr r0, [r4, r1]
	mov r2, #1
	add r0, #0x28
	strb r2, [r0]
	ldr r0, [r4, r1]
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
_0223A394:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov05_0221BA00
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A3A4: .word 0x0000240C
	thumb_func_end ov12_0223A260

