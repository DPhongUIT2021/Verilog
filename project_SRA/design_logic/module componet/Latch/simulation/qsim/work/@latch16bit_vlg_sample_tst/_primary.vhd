library verilog;
use verilog.vl_types.all;
entity Latch16bit_vlg_sample_tst is
    port(
        D               : in     vl_logic_vector(15 downto 0);
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Latch16bit_vlg_sample_tst;
