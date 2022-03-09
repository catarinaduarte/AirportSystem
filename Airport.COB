      ******************************************************************
      * Author:Catarina Silva
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. T01.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 NUMERO-1     PIC 9(02) VALUES 0.
       77 NUMERO-2     PIC 9(02) VALUES 0.
       77 NUMERO-3     PIC 9(02) VALUES 0.
       77 NUMERO-4     PIC 9(02) VALUES 0.
       77 NUMERO-5     PIC 9(02) VALUES 0.
       77 NUMERO-6     PIC 9(02) VALUES 0.
       77 SAIDA        PIC ZZ9.
       77 SOMA         PIC 9(3) VALUES 0.
       77 SOMA1        PIC 9(3) VALUES 0.
       77 SAIDA-SOMA   PIC ZZ9.
       77 SAIDA-SOMA1   PIC ZZ9.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY "AREOPORTO" FOREGROUND-COLOR 2
           HIGHLIGHT AT 0101.

           DISPLAY "PARTIDA" FOREGROUND-COLOR 2
           HIGHLIGHT AT 0401.


           DISPLAY "HORA:" AT 0601.
           ACCEPT NUMERO-1 AT 0607.
           MOVE NUMERO-1 TO SAIDA.
           DISPLAY SAIDA AT 0607.

           DISPLAY "MINUTO:" AT 0616.
           ACCEPT NUMERO-2 AT 0624.
           MOVE NUMERO-2 TO SAIDA.
           DISPLAY SAIDA AT 0624.


           DISPLAY "DURACAO DO VOO" FOREGROUND-COLOR 2
           HIGHLIGHT AT 0901.

           DISPLAY "HORA:" AT 1101.
           ACCEPT NUMERO-3 AT 1107.
           MOVE NUMERO-3 TO SAIDA.
           DISPLAY SAIDA AT 1107.

           DISPLAY "MINUTO:" AT 1116.
           ACCEPT NUMERO-4 AT 1124.
           MOVE NUMERO-4 TO SAIDA.
           DISPLAY SAIDA AT 1124.

           DISPLAY "CHEGADA " AT 1501.


       PROCESSAMENTO.
      *     ADD PRIMEIRO-NUMERO,SEGUNDO-NUMERO TO SOMA.

           COMPUTE SOMA=(NUMERO-1+NUMERO-3).
           COMPUTE SOMA1=(NUMERO-2+NUMERO-4).

       ESCRITA.


           DISPLAY "HORA:" AT 1701.

           MOVE SOMA TO SAIDA-SOMA.
           DISPLAY FUNCTION TRIM(SAIDA-SOMA)AT 1709.

           DISPLAY ":" AT 1711.
           MOVE SOMA1 TO SAIDA-SOMA1.
           DISPLAY FUNCTION TRIM(SAIDA-SOMA1)AT 1712.
           DISPLAY "H" AT 1715.



           ACCEPT OMITTED AT 1801.
           STOP RUN.
       END PROGRAM T01.
