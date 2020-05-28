	.RADIX  8		; To be safe

CSEG	SEGMENT PUBLIC 'CODESG' 
	ASSUME  CS:CSEG

INCLUDE	OEM.H

	TITLE   OEM - Vendor provided code

COMMENT *
Written by:     Stjepan Gros <stjepan.gros@gmail.com>

A lot of screen related rutines use INT 10H services, so much of
data can be inferred by reading documentation for INT 10H.
        *
	.SALL

;; Text screen group of subroutines

; OEM supplied Clear-Screen Routine
PUBLIC	CLRSCN
CLRSCN:
	RET

; OEM supplied screen clear to end of line
; Clear from (DH,DL) to EOL (from GWSTS.ASM)
PUBLIC	CLREOL
CLREOL:
	RET

; OEM supplied SCROLL routine
;
; INPUT
;	AX
; OUTPUT
;
; REGISTERS AFFECTED
;
PUBLIC	SCROLL
SCROLL:			;Dummy function
	RET

; OEM supplied screen input(read character)
;
; INPUT
;	DH,DL		Coordinates, DH->Row, DL->Column
;	CF=0		Indicates call is from Screen Editor
; OUTPUT
;	X=Character at (DH,DL)
; REGISTERS AFFECTED

PUBLIC	SCRINP
SCRINP:			;Dummy function
	RET


; OEM supplied character output
;
; INPUT
;	AL		Character to output
;	DH, DL		Position
; OUTPUT
;
; REGISTERS AFFECTED
;
PUBLIC	SCROUT
SCROUT:
		push	ax
		push	bx
		push	cx
		xor	bx,bx
		mov	ah,2
		push	ax
		int	20	; 0x10
		pop	ax
		mov	cx,1
		mov	bx,7
		mov	ah,12	; 0xa
		int	20	; 0x10
		pop	cx
		pop	bx
		pop	ax
        RET

; MSX:  Record current cursor addresses mask pattern
; Input    : BX - Cursor address
;            AL - Mask pattern
PUBLIC	STOREC
STOREC:			;Dummy function
	RET

;Let screen editor set width
;pass Width in AL
;pass Height in CL

PUBLIC	SWIDTH
SWIDTH:			;Dummy function
	RET

PUBLIC	NREAD
NREAD:			;Dummy function
	RET

PUBLIC	RDTRIG
RDTRIG:			;Dummy function
	RET

; MSX:  Set horizontal screen pixels
PUBLIC	NSETCX
NSETCX:			;Dummy function
	RET

PUBLIC	EDTMAP
EDTMAP:			;Dummy function
	RET

PUBLIC	DONOTE
DONOTE:			;Dummy function
	RET

PUBLIC	SNDLPT
SNDLPT:			;Dummy function
	RET

PUBLIC	PEKFLT
PEKFLT:			;Dummy function
	RET

PUBLIC	SETCBF
SETCBF:			;Dummy function
	RET

; MSX:  Shifts screen pixel to the left
PUBLIC	LEFTC
LEFTC:			;Dummy function
	RET

PUBLIC	PGINIT
PGINIT:			;Dummy function
	RET

PUBLIC	MAPXYC
MAPXYC:			;Dummy function
	RET

PUBLIC	INKMAP
INKMAP:			;Dummy function
	RET

PUBLIC	SETFBC
SETFBC:			;Dummy function
	RET

; MSX:  Tests whether DOWNC is possible, if possible, execute DOWNC
; Set carry flag set if operation would end outside the screen
PUBLIC	TDOWNC
TDOWNC:			;Dummy function
	RET

; MSX:  Scans screen pixels to the right
PUBLIC	SCANR
SCANR:			;Dummy function
	RET

PUBLIC	INICOM
INICOM:			;Dummy function
	RET

PUBLIC	GETHED
GETHED:			;Dummy function
	RET

; MSX:  Shifts screen pixel up
PUBLIC	UPC
UPC:			;Dummy function
	RET

; MSX:  Scans screen pixels to the left
PUBLIC	SCANL
SCANL:			;Dummy function
	RET

; MSX:  Gets current cursor addresses mask pattern
; Output   : BX - Cursor address
;            AL - Mask pattern
PUBLIC	FETCHC
FETCHC:			;Dummy function
	RET

; MSX:  Scales X and Y coordinates
PUBLIC	SCALXY
SCALXY:			;Dummy function
	RET

PUBLIC	GETFBC
GETFBC:			;Dummy function
	RET

PUBLIC	SNDCOM
SNDCOM:			;Dummy function
	RET

PUBLIC	STACOM
STACOM:			;Dummy function
	RET

; MSX:  Reads attribute byte of current screen pixel
PUBLIC	READC
READC:			;Dummy function
	RET

PUBLIC	INFMAP
INFMAP:			;Dummy function
	RET

; MSX:  Tests whether UPC is possible, if possible, execute UPC
; Set carry flag set if operation would end outside the screen
PUBLIC	TUPC
TUPC:			;Dummy function
	RET

; MSX:  Shifts screen pixel to the right
PUBLIC	RIGHTC
RIGHTC:			;Dummy function
	RET

PUBLIC	SEGINI
SEGINI:			;Dummy function
	RET

; MSX:  Gets screen relations
; Output   : DX, BX
PUBLIC	GTASPC
GTASPC:			;Dummy function
	RET

PUBLIC	RECCOM
RECCOM:			;Dummy function
	RET

; MSX:  Returns current screen pixel of specified attribute byte
PUBLIC	SETC
SETC:			;Dummy function
	RET

PUBLIC	PIXSIZ
PIXSIZ:			;Dummy function
	RET

; MSX:  Shifts screen pixel down
PUBLIC	DOWNC
DOWNC:			;Dummy function
	RET

PUBLIC	LCPY
LCPY:			;Dummy function
	RET

PUBLIC	FKYFMT
FKYFMT:			;Dummy function
	RET

;Do OEM specific termination processing (from GIODSK.ASM)
PUBLIC	GWTERM
GWTERM:			;Dummy function
	RET

PUBLIC	GRPSIZ
GRPSIZ:			;Dummy function
	RET

PUBLIC	FKYADV
FKYADV:			;Dummy function
	RET

;
; RETURN
;	ZF=0 no key available
;	[AX]=next key from keyboard if one exists
PUBLIC	KEYINP
KEYINP:			;Dummy function
	RET

PUBLIC	PRTMAP
PRTMAP:			;Dummy function
	RET

PUBLIC	RDPEN
RDPEN:			;Dummy function
	RET

PUBLIC	CSRATR
CSRATR:			;Dummy function
	RET

PUBLIC	GWINI
GWINI:			;Dummy function
	RET

PUBLIC	NWRITE
NWRITE:			;Dummy function
	RET

PUBLIC	SCRSTT
SCRSTT:			;Dummy function
	RET

PUBLIC	CSRDSP
CSRDSP:
	RET

; MSX:  Set attribute byte
PUBLIC	SETATR
SETATR:			;Dummy function
	RET

; MSX:  Initalises the PAINT instruction
PUBLIC	PNTINI
PNTINI:			;Dummy function
	RET

PUBLIC	SETCLR
SETCLR:			;Dummy function
	RET

PUBLIC	SCRATR
SCRATR:			;Dummy function
	RET

PUBLIC	TRMCOM
TRMCOM:			;Dummy function
	RET

PUBLIC	POLLEV
POLLEV:			;Dummy function
	RET

PUBLIC	POKFLT
POKFLT:			;Dummy function
	RET

PUBLIC	RDSTIK
RDSTIK:			;Dummy function
	RET

PUBLIC	MAPSUP
MAPSUP:			;Dummy function
	RET


CSEG	ENDS
	END
