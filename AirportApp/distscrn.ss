       01 G-DISTSCRN.
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
      -"         �����������������������������Ĵ".
         02 LINE 14 COL 1 VALUE "�      Airport one    :
      -"         �                             �".
         02 LINE 15 COL 1 VALUE "�
      -"         �                             �".
         02 LINE 16 COL 1 VALUE "�
      -"         �                             �".
         02 LINE 17 COL 1 VALUE "�      Airport two    :
      -"         � Distance in km :            �".
         02 LINE 18 COL 1 VALUE "�
      -"         �                             �".
         02 LINE 19 COL 1 VALUE "�
      -"         � Distance in miles :         �".
         02 LINE 20 COL 1 VALUE "�
      -"         �                             �".
         02 LINE 21 COL 1 VALUE "���������������������������������������
      -"����������������������������������������".
         02 LINE 14 COL 26 PIC X(4) USING ls-airport1 AUTO.
         02 LINE 15 COL 51 PIC X(27) FROM ls-from-to-msg.
         02 LINE 17 COL 26 PIC X(4) USING ls-airport2 AUTO.
         02 LINE 17 COL 71 PIC X(7) FROM distance-km.
         02 LINE 19 COL 71 PIC X(7) FROM distance-miles.
