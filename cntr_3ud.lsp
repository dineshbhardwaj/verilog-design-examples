(module :name cntr_3ud
        ;; as soon as any of the signal is used or generated, it should be described for better understanding of code
        (vif (clk,reset) ;; first is always clock, second is always reset
             ;; since reset does not have _n in last, it means reset is active high
            :up_down_in "when set counter up or set counter data" ;; not necessary but for added caritiy on signal uses
            :bin_count_o "output of the 3 bit counter" ;;not necessary but for added caritiy on signal uses
            :d "counter logic up or down"
            :rst_default ('h0) ;; not required, useful only if the default is different than 0
            :reset ((bit_count_o 3'b0)) ;; not required as default is programmed 0
            (up_down_in) ;; test is first statement after
            ((bit_count_o[2:0] = bit_count_o + 1)) ;; up counter
            ((bit_count_o[2:0] = bit_count_o + 1)) ;; down counter
            )
        )
