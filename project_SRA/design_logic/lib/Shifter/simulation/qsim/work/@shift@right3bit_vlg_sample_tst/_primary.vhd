library verilog;
use verilog.vl_types.all;
entity ShiftRight3bit_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ShiftRight3bit_vlg_sample_tst;
