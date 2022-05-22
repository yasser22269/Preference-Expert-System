(deftemplate state
    (slot display)
    (slot step)
    (multislot answers)
)

(deftemplate question
    (slot preceding-question)
    (slot preceding-answer)
    (slot display)
    (multislot answers
        (default "Yes" "No")
    )
    (slot resolution)
    (slot is-final
        (default no)
    )
)

(deffacts init
    (state
        (step question)
        (display "�� �� �������� ������ ������� ��?")
        (answers
            "������� �����"
            "��� ����� ������"
            "����� �������� ������"
            "��� ���� �� ��� ������"
        )
    )

 (question
        (preceding-question "�� �� �������� ������ ������� ��?")
        (preceding-answer "������� �����")
        (display "�� ��� �������")
    )

        (question
            (preceding-question "�� ��� �������")
            (preceding-answer "Yes")
            (display "�� ���� ������ �� ����ѿ")
        )

            (question
                (preceding-question "�� ���� ������ �� ����ѿ")
                (preceding-answer "Yes")
                (resolution "����� �� ��� ������")
                (is-final yes)
            )
            (question
                (preceding-question "�� ���� ������ �� ����ѿ")
                (preceding-answer "No")
                (resolution "����� ������� � ��� �����")
                (is-final yes)
            )

        (question
            (preceding-question "�� ��� �������")
            (preceding-answer "No")
            (display "�� ���� ������ ���� �� ������� �� ����ӿ")
        )

            (question
                (preceding-question "�� ���� ������ ���� �� ������� �� ����ӿ")
                (preceding-answer "Yes")
                (resolution "����� ����")
                (is-final yes)
            )
            (question
                (preceding-question "�� ���� ������ ���� �� ������� �� ����ӿ")
                (preceding-answer "No")
                (resolution "��� ���������")
                (is-final yes)
            )

    (question
        (preceding-question "�� �� �������� ������ ������� ��?")
        (preceding-answer "��� ����� ������")
        (display "�� ����� ��������")
    )

        (question
            (preceding-question "�� ����� ��������")
            (preceding-answer "Yes")
            (resolution "������ ������")
            (is-final yes)
        )
        (question
            (preceding-question "�� ����� ��������")
            (preceding-answer "No")
              (display "�� ��� ��� �����")
        )

            (question
                (preceding-question "�� ��� ��� �����")
                (preceding-answer "Yes")
                (display "�� ��� �����")
            )

                (question
                    (preceding-question "�� ��� �����")
                    (preceding-answer "Yes")
                    (resolution "������ ��������: ���� �����")
                    (is-final yes)
                )
                (question
                    (preceding-question "�� ��� �����")
                    (preceding-answer "No")
                    (resolution "���� � ������� � ��� ���")
                    (is-final yes)
                )

            (question
                (preceding-question "�� ��� ��� �����")
                (preceding-answer "No")
                (display "�� ������� ������ ���߿")
            )
                (question
                    (preceding-question "�� ������� ������ ���߿")
                    (preceding-answer "Yes")
                    (resolution "����� ���")
                    (is-final yes)
                )
                (question
                    (preceding-question "�� ������� ������ ���߿")
                    (preceding-answer "No")
                    (resolution "���� ������� � ������")
                    (is-final yes)
                )

    (question
        (preceding-question "�� �� �������� ������ ������� ��?")
        (preceding-answer "����� �������� ������")
 (display "�� ��� ����� ������ɿ")
    )

        (question
            (preceding-question "�� ��� ����� ������ɿ")
            (preceding-answer "Yes")
            (display "�� ���� ��� ������ɿ")
        )
            (question
                (preceding-question "�� ���� ��� ������ɿ")
                (preceding-answer "Yes")
                (display "�� ��� ����� ����� �� ������ӿ")
            )
                (question
                    (preceding-question "�� ��� ����� ����� �� ������ӿ")
                    (preceding-answer "Yes")
                    (display "�� ����� ������� ���� �� 50 ��� ���ɿ")
                )
                    (question
                        (preceding-question "�� ����� ������� ���� �� 50 ��� ���ɿ")
                        (preceding-answer "Yes")
                        (resolution "������� ��������")
                        (is-final yes)
                    )
                    (question
                        (preceding-question "�� ����� ������� ���� �� 50 ��� ���ɿ")
                        (preceding-answer "No")
                        (resolution "����� ����� ��������")
                        (is-final yes)
                    )
                (question
                    (preceding-question "�� ��� ����� ����� �� ������ӿ")
                    (preceding-answer "No")
                    (resolution "��������� ������� �������")
                    (is-final yes)
                )

            (question
                (preceding-question "�� ���� ��� ������ɿ")
                (preceding-answer "No")
                (display "�� ��� ���� ����")
            )
                (question
                    (preceding-question "�� ��� ���� ����")
                    (preceding-answer "Yes")
                    (resolution "������������ ����������� �������� ��������")
                    (is-final yes)
                )
                (question
                    (preceding-question "�� ��� ���� ����")
                    (preceding-answer "No")
                    (display "�� ��� ���� ���޿")
                )
                    (question
                        (preceding-question "�� ��� ���� ���޿")
                        (preceding-answer "Yes")
                        (display "�� ��� �� ���� ���� �� ������ѿ")
                    )
                        (question
                            (preceding-question "�� ��� �� ���� ���� �� ������ѿ")
                            (preceding-answer "Yes")
                            (resolution "����� ���")
                            (is-final yes)
                        )
                        (question
                            (preceding-question "�� ��� �� ���� ���� �� ������ѿ")
                            (preceding-answer "No")
                            (resolution "������� �������")
                            (is-final yes)
                        )
                    (question
                        (preceding-question "�� ��� ���� ���޿")
                        (preceding-answer "No")
                        (resolution "����� ������")
                        (is-final yes)
                    )

        (question
            (preceding-question "�� ��� ����� ������ɿ")
            (preceding-answer "No")
            (resolution "���� ������ ������ � ������ �������� � ����� ������� � ������ �������")
            (is-final yes)
        )
    (question
        (preceding-question "�� �� �������� ������ ������� ��?")
        (preceding-answer "��� ���� �� ��� ������")
        (display "�� ��� �� ����")
    )
        (question
            (preceding-question "�� ��� �� ����")
            (preceding-answer "Yes")
            (display "�� ��� ���� ���� �����Ͽ")
        )
            (question
                (preceding-question "�� ��� ���� ���� �����Ͽ")
                (preceding-answer "Yes")
                (display "�� ���� ���� �� 300 ��� ���� �� ������ɿ")
            )
                (question
                    (preceding-question "�� ���� ���� �� 300 ��� ���� �� ������ɿ")
                    (preceding-answer "Yes")
                    (resolution "���� ���� ����� � ���� ��� ����")
                    (is-final yes)
                )
                (question
                    (preceding-question "�� ���� ���� �� 300 ��� ���� �� ������ɿ")
                    (preceding-answer "No")
                    (resolution "��� ������ �������")
                    (is-final yes)
                )
            (question
                (preceding-question "�� ��� ���� ���� �����Ͽ")
                (preceding-answer "No")
                (resolution "��� ��� ������")
                (is-final yes)
            )
        (question
            (preceding-question "�� ��� �� ����")
            (preceding-answer "No")
            (display "�� ���� ���� �� 500 ��� ���� �� ������ɿ")
        )
            (question
                (preceding-question "�� ���� ���� �� 500 ��� ���� �� ������ɿ")
                (preceding-answer "Yes")
                (resolution "��� ����� � ���� ������")
                (is-final yes)
            )
            (question
                (preceding-question "�� ���� ���� �� 500 ��� ���� �� ������ɿ")
                (preceding-answer "No")
                (resolution "��� ��� ���� �����")
                (is-final yes)
            )
)


(defrule answer
    ?oldAnswer <- (answer ?answer)
    ?currentState <- (state
        (display ?currentQuestion)
    )
    (question
        (preceding-question ?currentQuestion)
        (preceding-answer ?answer)
        (display ?display)
        (answers $?answers)
    )
    =>
    (retract ?currentState)
    (assert
        (state
            (step question)
            (display ?display)
            (answers $?answers)
        )
    )
    (retract ?oldAnswer)
)

(defrule end
    (declare (salience 1))
    ?oldAnswer <- (answer ?answer)
    ?currentState <- (state
        (display ?currentQuestion)
    )
    (question
        (preceding-question ?currentQuestion)
        (preceding-answer ?answer)
        (resolution ?resolution)
        (is-final yes)
    )
    =>
    (retract ?currentState)
    (assert
        (state
            (step finish)
            (display ?resolution)
        )
    )
    (retract ?oldAnswer)
)