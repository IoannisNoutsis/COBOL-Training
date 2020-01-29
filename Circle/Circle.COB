
      **********************************************************************************
      *     Author:      GIANNIS NOUTSIS                                               *
      *     Date:        1/29/2020                                                     *
      *     Purpose:     GitHub Repository                                             *
      *     This program asks the user for the radius of a circle and calculates the   *
      *     circumference and area.                                                    *
      **********************************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CIRCLE-RADIOUS.



       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.


       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
        01   WS-CONSTANTS.
             05  WS-PI              PIC 9V9(5) VALUE 3.14159.
        01   WS-CIRCLE.
             05 WS-AREA             PIC 9(3)V9(2) VALUE ZEROES.
             05 WS-RADIUS           PIC 9(4)V9(2) VALUE ZEROES.
             05 WS-CIRCUMFERENCE    PIC 9(5)V9(2) VALUE ZEROES.
        01   WS-DISPLAY-VALUES.
             05 WS-DISPLAY-AREA          PIC ZZ99.99.
             05 WS-DISPLAY-CIRCUMFERENCE PIC ZZ99.99.



       PROCEDURE DIVISION.


        0100-PROCESS-RECORDS.

           DISPLAY "Enter the circle's radius: ".
           ACCEPT WS-RADIUS.
           COMPUTE WS-CIRCUMFERENCE = 2 * WS-PI *WS-RADIUS.
           MOVE WS-CIRCUMFERENCE TO WS-DISPLAY-CIRCUMFERENCE.
           DISPLAY "Circle Circumference is: ", WS-DISPLAY-CIRCUMFERENCE.
           COMPUTE WS-AREA = WS-PI * WS-RADIUS *WS-RADIUS.
           MOVE WS-AREA TO WS-DISPLAY-AREA.
           DISPLAY "Circle area is: ", WS-DISPLAY-AREA.

           STOP RUN.


           END PROGRAM CIRCLE-RADIOUS.
