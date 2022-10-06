library verilog;
use verilog.vl_types.all;
entity Decode4To10_vlg_check_tst is
    port(
        O               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Decode4To10_vlg_check_tst;
