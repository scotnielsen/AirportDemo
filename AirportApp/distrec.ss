       01 G-DISTREC.
         02 LINE 1 COL 1 VALUE "����������������������������������������
      -"�������������������������������������Ŀ".
         02 LINE 2 COL 1 VALUE "�                               __
      -"                                      �".
         02 LINE 3 COL 1 VALUE "�                        /\ . _|__)_  _|
      -"_  |_ _    /\ . _ _  _  _|_           �".
         02 LINE 4 COL 1 VALUE "�                       /--\|| |  (_)| |
      -"_  |_(_)  /--\|| |_)(_)| |_           �".
         02 LINE 5 COL 1 VALUE "�
      -"                 |                    �".
         02 LINE 6 COL 1 VALUE "����������������������������������������
      -"�������������������������������������Ĵ".
         02 LINE 7 COL 1 VALUE "�  Calculate distance between airports
      -"                                      �".
         02 LINE 8 COL 1 VALUE "�
      -"                                      �".
         02 LINE 9 COL 1 VALUE "�
      -"                                      �".
         02 LINE 10 COL 1 VALUE "�  If you wish to know the distance bet
      -"ween two airports, please enter the    �".
         02 LINE 11 COL 1 VALUE "�   IATA code for each airport in the f
      -"ields below:                           �".
         02 LINE 12 COL 1 VALUE "�
      -"                                       �".
         02 LINE 13 COL 1 VALUE "�
      -"  ������������������������������������Ĵ".
         02 LINE 14 COL 1 VALUE "�      Airport one    :
      -"  �                                    �".
         02 LINE 15 COL 1 VALUE "�
      -"  �                                    �".
         02 LINE 16 COL 1 VALUE "�
      -"  �                                    �".
         02 LINE 17 COL 1 VALUE "�      Airport two    :
      -"  � Lat:     .                         �".
         02 LINE 18 COL 1 VALUE "�
      -"  �Long:     .                         �".
         02 LINE 19 COL 1 VALUE "�
      -"  �                                    �".
         02 LINE 20 COL 1 VALUE "�
      -"  �                                    �".
         02 LINE 21 COL 1 VALUE "���������������������������������������
      -"����������������������������������������".
         02 LINE 14 COL 26 PIC X(4) USING ls-airport1 AUTO.
         02 LINE 14 COL 44 PIC X(4) FROM ap-code.
         02 LINE 14 COL 49 PIC X(30) FROM ap-name.
         02 LINE 15 COL 49 PIC X(30) FROM ap-city.
         02 LINE 16 COL 49 PIC X(21) FROM ap-country.
         02 LINE 17 COL 26 PIC X(5) USING ls-airport2 AUTO.
         02 LINE 17 COL 49 PIC X FROM ap-lat-sign.
         02 LINE 17 COL 50 PIC XXX FROM ap-lat-degs.
         02 LINE 17 COL 54 PIC X(7) FROM ap-lat-mins.
         02 LINE 18 COL 49 PIC X FROM ap-long-sign.
         02 LINE 18 COL 50 PIC XXX FROM ap-long-degs.
         02 LINE 18 COL 54 PIC X(7) FROM ap-long-mins.
