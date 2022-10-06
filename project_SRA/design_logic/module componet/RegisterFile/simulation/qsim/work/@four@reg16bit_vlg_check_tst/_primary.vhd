library verilog;
use verilog.vl_types.all;
entity FourReg16bit_vlg_check_tst is
    port(
        OutA            : in     vl_logic_vector(15 downto 0);
        OutB            : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end FourReg16bit_vlg_check_tst;
