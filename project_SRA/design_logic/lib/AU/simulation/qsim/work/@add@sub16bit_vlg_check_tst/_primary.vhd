library verilog;
use verilog.vl_types.all;
entity AddSub16bit_vlg_check_tst is
    port(
        R               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end AddSub16bit_vlg_check_tst;
