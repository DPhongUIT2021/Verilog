library verilog;
use verilog.vl_types.all;
entity Register8bitBasic_vlg_check_tst is
    port(
        O               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Register8bitBasic_vlg_check_tst;
