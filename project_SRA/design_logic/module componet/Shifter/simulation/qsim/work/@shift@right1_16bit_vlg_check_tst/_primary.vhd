library verilog;
use verilog.vl_types.all;
entity ShiftRight1_16bit_vlg_check_tst is
    port(
        O               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ShiftRight1_16bit_vlg_check_tst;
