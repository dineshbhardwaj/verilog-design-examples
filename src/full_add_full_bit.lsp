(module :name full_add_full_bit
        ;; as soon as any of the signal is used or generated, it should be described for better understanding of code
        ;;
        (vif (clk,reset)
            :carry_o "carry generated is stored here" ;; not necessary but for added caritiy on signal uses
            :sum_o "sum of the imputs are stored here" ;; not necessary but for added caritiy on signal uses
            :a_in "input a " ;;not necessary but for added caritiy on signal uses
            :b_in "input b " ;;not necessary but for added caritiy on signal uses
            :d  "full adder code"
            :rst_default ('h0) ;; not required as default is 0, useful only if the default is different than 0
            :reset ((carry_o 1'b0) (sum_o 3'b0)) ;; not required as default is programmed 0
            :FPGA_reset ((carry_o 1'b0) (sum_o 3'b0));; FPGA reset are sync and async - sync is default for FPGA
            (({carry_o[0],sum_o[3:0]} = a_in[3:0] + b_in[3:0])) ;;use of signal should be defined width
            )
        )
