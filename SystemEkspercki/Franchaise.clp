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
        (display "„« ÂÊ «·«„ Ì«“ «·√›÷· »«·‰”»… ·ﬂ?")
        (answers
            "«·„⁄—›… À—Ê Ì"
            "√‰« „ÂÊÊ” »«·’Õ…"
            "«·‰«” Ê«·√‘Ì«¡  ”Õ—‰Ì"
            "√‰« √⁄Ì‘ „‰ √Ã· «·ÿ⁄«„"
        )
    )

 (question
        (preceding-question "„« ÂÊ «·«„ Ì«“ «·√›÷· »«·‰”»… ·ﬂ?")
        (preceding-answer "«·„⁄—›… À—Ê Ì")
        (display "Â·  Õ» «·«ÿ›«·ø")
    )

        (question
            (preceding-question "Â·  Õ» «·«ÿ›«·ø")
            (preceding-answer "Yes")
            (display "Â· ·œÌﬂ «·ﬂÀÌ— „‰ «·’»—ø")
        )

            (question
                (preceding-question "Â· ·œÌﬂ «·ﬂÀÌ— „‰ «·’»—ø")
                (preceding-answer "Yes")
                (resolution "„œ—”… „« ﬁ»· «·—Ê÷…")
                (is-final yes)
            )
            (question
                (preceding-question "Â· ·œÌﬂ «·ﬂÀÌ— „‰ «·’»—ø")
                (preceding-answer "No")
                (resolution "„œ—”… «⁄œ«œÌ… ° ›’·  œ—Ì»")
                (is-final yes)
            )

        (question
            (preceding-question "Â·  Õ» «·«ÿ›«·ø")
            (preceding-answer "No")
            (display "Â· ·œÌﬂ „Â«—«  ÃÌœ… ›Ì «· ⁄«„· „⁄ «·‰«”ø")
        )

            (question
                (preceding-question "Â· ·œÌﬂ „Â«—«  ÃÌœ… ›Ì «· ⁄«„· „⁄ «·‰«”ø")
                (preceding-answer "Yes")
                (resolution " œ—Ì» „Â‰Ì")
                (is-final yes)
            )
            (question
                (preceding-question "Â· ·œÌﬂ „Â«—«  ÃÌœ… ›Ì «· ⁄«„· „⁄ «·‰«”ø")
                (preceding-answer "No")
                (resolution "ﬂ » «·ﬁ—ÿ«”Ì…")
                (is-final yes)
            )

    (question
        (preceding-question "„« ÂÊ «·«„ Ì«“ «·√›÷· »«·‰”»… ·ﬂ?")
        (preceding-answer "√‰« „ÂÊÊ” »«·’Õ…")
        (display "Â· „ÂÊÊ” »«·—Ì«÷Â")
    )

        (question
            (preceding-question "Â· „ÂÊÊ” »«·—Ì«÷Â")
            (preceding-answer "Yes")
            (resolution "«·⁄·«Ã «·»œÌ·")
            (is-final yes)
        )
        (question
            (preceding-question "Â· „ÂÊÊ” »«·—Ì«÷Â")
            (preceding-answer "No")
              (display "Â·  Õ» ﬂ—Â «·ﬁœ„")
        )

            (question
                (preceding-question "Â·  Õ» ﬂ—Â «·ﬁœ„")
                (preceding-answer "Yes")
                (display "Â·  Õ» «·ÃÌ„")
            )

                (question
                    (preceding-question "Â·  Õ» «·ÃÌ„")
                    (preceding-answer "Yes")
                    (resolution "«·’«·… «·—Ì«÷Ì…: ›’Ê· “Ê„»«")
                    (is-final yes)
                )
                (question
                    (preceding-question "Â·  Õ» «·ÃÌ„")
                    (preceding-answer "No")
                    (resolution "ÌÊÃ« ° »Ì·« Ì” °  «Ì  ‘Ì")
                    (is-final yes)
                )

            (question
                (preceding-question "Â·  Õ» ﬂ—Â «·ﬁœ„")
                (preceding-answer "No")
                (display "Â· «·⁄‰«Ì… »«·Ã”„  Â„ﬂø")
            )
                (question
                    (preceding-question "Â· «·⁄‰«Ì… »«·Ã”„  Â„ﬂø")
                    (preceding-answer "Yes")
                    (resolution "’«·Ê‰ ”»«")
                    (is-final yes)
                )
                (question
                    (preceding-question "Â· «·⁄‰«Ì… »«·Ã”„  Â„ﬂø")
                    (preceding-answer "No")
                    (resolution "„—ﬂ“ «· Œ”Ì” ° ’Ìœ·Ì…")
                    (is-final yes)
                )

    (question
        (preceding-question "„« ÂÊ «·«„ Ì«“ «·√›÷· »«·‰”»… ·ﬂ?")
        (preceding-answer "«·‰«” Ê«·√‘Ì«¡  ”Õ—‰Ì")
 (display "Â·  Õ»  ﬁœÌ„ «·‰’ÌÕ…ø")
    )

        (question
            (preceding-question "Â·  Õ»  ﬁœÌ„ «·‰’ÌÕ…ø")
            (preceding-answer "Yes")
            (display "Â· ·œÌﬂ ‘€› »«·„Ê÷…ø")
        )
            (question
                (preceding-question "Â· ·œÌﬂ ‘€› »«·„Ê÷…ø")
                (preceding-answer "Yes")
                (display "Â· √‰   ‘ —Ï ﬂÀ»Ì— „‰ «·„·«»”ø")
            )
                (question
                    (preceding-question "Â· √‰   ‘ —Ï ﬂÀ»Ì— „‰ «·„·«»”ø")
                    (preceding-answer "Yes")
                    (display "Â· Ì„ﬂ‰ﬂ «” À„«— √ﬂÀ— „‰ 50 «·› Ã‰Ì…ø")
                )
                    (question
                        (preceding-question "Â· Ì„ﬂ‰ﬂ «” À„«— √ﬂÀ— „‰ 50 «·› Ã‰Ì…ø")
                        (preceding-answer "Yes")
                        (resolution "«·›Œ«„… Ê«·⁄’—Ì…")
                        (is-final yes)
                    )
                    (question
                        (preceding-question "Â· Ì„ﬂ‰ﬂ «” À„«— √ﬂÀ— „‰ 50 «·› Ã‰Ì…ø")
                        (preceding-answer "No")
                        (resolution "„·«»” «·»Ì⁄ »«· Ã“∆…")
                        (is-final yes)
                    )
                (question
                    (preceding-question "Â· √‰   ‘ —Ï ﬂÀ»Ì— „‰ «·„·«»”ø")
                    (preceding-answer "No")
                    (resolution "«·„ÃÊÂ—«  Ê«·√À«À «·„‰“·Ì")
                    (is-final yes)
                )

            (question
                (preceding-question "Â· ·œÌﬂ ‘€› »«·„Ê÷…ø")
                (preceding-answer "No")
                (display "Â· √‰  Œ»Ì—  ﬁ‰Ìø")
            )
                (question
                    (preceding-question "Â· √‰  Œ»Ì—  ﬁ‰Ìø")
                    (preceding-answer "Yes")
                    (resolution "«·«·ﬂ —Ê‰Ì«  «·«” Â·«ﬂÌ… Ê«·ÂÊ« › «·„Õ„Ê·…")
                    (is-final yes)
                )
                (question
                    (preceding-question "Â· √‰  Œ»Ì—  ﬁ‰Ìø")
                    (preceding-answer "No")
                    (display "Â· √‰  „Œÿÿ œﬁÌﬁø")
                )
                    (question
                        (preceding-question "Â· √‰  „Œÿÿ œﬁÌﬁø")
                        (preceding-answer "Yes")
                        (display "Â·  Õ» √‰  ‰›ﬁ √ﬂÀ— „‰ «·«œŒ«—ø")
                    )
                        (question
                            (preceding-question "Â·  Õ» √‰  ‰›ﬁ √ﬂÀ— „‰ «·«œŒ«—ø")
                            (preceding-answer "Yes")
                            (resolution "Œœ„«  ”›—")
                            (is-final yes)
                        )
                        (question
                            (preceding-question "Â·  Õ» √‰  ‰›ﬁ √ﬂÀ— „‰ «·«œŒ«—ø")
                            (preceding-answer "No")
                            (resolution "«·Œœ„«  «·„«·Ì…")
                            (is-final yes)
                        )
                    (question
                        (preceding-question "Â· √‰  „Œÿÿ œﬁÌﬁø")
                        (preceding-answer "No")
                        (resolution "Œœ„«  «·“Ê«Ã")
                        (is-final yes)
                    )

        (question
            (preceding-question "Â·  Õ»  ﬁœÌ„ «·‰’ÌÕ…ø")
            (preceding-answer "No")
            (resolution "Œœ„… «·»—Ìœ «·”—Ì⁄ ° Ê ‰ŸÌ› «·”Ì«—«  ° Ê€”Ì· «·„·«»” ° Ê„‰ Ã⁄ «·√Õ–Ì…")
            (is-final yes)
        )
    (question
        (preceding-question "„« ÂÊ «·«„ Ì«“ «·√›÷· »«·‰”»… ·ﬂ?")
        (preceding-answer "√‰« √⁄Ì‘ „‰ √Ã· «·ÿ⁄«„")
        (display "Â·  Õ» √‰  ÿÂÊø")
    )
        (question
            (preceding-question "Â·  Õ» √‰  ÿÂÊø")
            (preceding-answer "Yes")
            (display "Â· √‰  ”—Ì⁄ Ê„À· «·Õ‘Êœø")
        )
            (question
                (preceding-question "Â· √‰  ”—Ì⁄ Ê„À· «·Õ‘Êœø")
                (preceding-answer "Yes")
                (display "Â· ·œÌﬂ √ﬂÀ— „‰ 300 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
            )
                (question
                    (preceding-question "Â· ·œÌﬂ √ﬂÀ— „‰ 300 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
                    (preceding-answer "Yes")
                    (resolution "„ÿ⁄„ Œœ„… ”—Ì⁄… ° ⁄‘«¡ €Ì— —”„Ì")
                    (is-final yes)
                )
                (question
                    (preceding-question "Â· ·œÌﬂ √ﬂÀ— „‰ 300 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
                    (preceding-answer "No")
                    (resolution "ﬂ‘ﬂ «·ÿ⁄«„ «·”—Ì⁄Â")
                    (is-final yes)
                )
            (question
                (preceding-question "Â· √‰  ”—Ì⁄ Ê„À· «·Õ‘Êœø")
                (preceding-answer "No")
                (resolution "ﬂ‘ﬂ ⁄œœ «·ÿ⁄«„")
                (is-final yes)
            )
        (question
            (preceding-question "Â·  Õ» √‰  ÿÂÊø")
            (preceding-answer "No")
            (display "Â· ·œÌﬂ √ﬂÀ— „‰ 500 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
        )
            (question
                (preceding-question "Â· ·œÌﬂ √ﬂÀ— „‰ 500 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
                (preceding-answer "Yes")
                (resolution "„Õ· »ﬁ«·… Ê „Ê«œ €–«∆Ì…")
                (is-final yes)
            )
            (question
                (preceding-question "Â· ·œÌﬂ √ﬂÀ— „‰ 500 ﬁœ„ „—»⁄ „‰ «·„”«Õ…ø")
                (preceding-answer "No")
                (resolution "„Õ· ¬Ì” ﬂ—Ì„ Ê„Œ»“")
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