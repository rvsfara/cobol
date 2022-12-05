	IDENTIFICATION DIVISION.
	AUTHOR. rvsfara.
	PROGRAM-ID. Increment.
      * programa pega um valor e incrementa
      * exibe os valores.
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	01 A PIC 99(9).
	01 I PIC 99(9).
	01 X PIC Z(9)9.

	PROCEDURE DIVISION.
	DISPLAY "Este é um exemplo de incremento.".
	DISPLAY "-----------------------------------".
	DISPLAY "Entre com um valor:".
	ACCEPT A.
	MOVE 0 TO I.
	PERFORM UNTIL I GREATER THAN A
		COMPUTE X = I + 1
		DISPLAY X
		ADD 1 TO I
	END-PERFORM.
	STOP RUN.
