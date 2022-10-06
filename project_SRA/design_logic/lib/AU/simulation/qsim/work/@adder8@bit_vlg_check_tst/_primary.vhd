library verilog;
use verilog.vl_types.all;
entity Adder8Bit_vlg_check_tst is
    port(
        CaryOut         : in     vl_logic;
        O               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Adder8Bit_vlg_check_tst;
