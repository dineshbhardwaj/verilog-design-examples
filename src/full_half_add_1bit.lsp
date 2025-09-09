(module :name full_half_add_1bit
        ;; as soon as any of the signal is used or generated, it should be described for better understanding of code
        ;;
        (assign #{param:full_addr:0_1}
            :h_carry_o "carry generated is stored here" ;; not necessary but for added caritiy on signal uses
            :h_sum_o "sum of the imputs are stored here" ;; not necessary but for added caritiy on signal uses
            :a_in "input a single bit" ;;not necessary but for added caritiy on signal uses
            :b_in "input b single bit" ;;not necessary but for added caritiy on signal uses
            (if (= full_addr 0)
                (:d  "full adder code"
                     ({h_carry_o[0],h_sum_o[0]} = a_in[0] + b_in[0]) ;;use of signal should be defined width anywhere at one place
                     )
                (:d "half adder code"
                    :c_in "carry input"
                     ({h_carry_o[0],h_sum_o[0]} = a_in[0] + b_in[0] + c_in[0]) ;;use of signal should be defined width anywhere at one place
                    )
                )
            )
        )
