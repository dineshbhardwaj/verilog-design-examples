(module :name lfsr
        ;; as soon as any of the signal is used or generated, it should be described for better understanding of code
        (vif (clk,reset) ;; first is always clock, second is always reset
             ;; since reset does not have _n in last, it means reset is active high
            :data_out "Data out of LFSR - feedback is from 0 and 1 bit" ;; not necessary but for added caritiy on signal uses
            :d "LFSR logic"
            :rst_default ('h0) ;; not required, useful only if the default is different than 0
            :reset ((bit_count_o 4'b0)) ;; not required as default is programmed 0
            ((data_out[3:0] = {data_out[2:0],#(data_out[1] ^ data_out[0])) ;; up counter
            )
        )
