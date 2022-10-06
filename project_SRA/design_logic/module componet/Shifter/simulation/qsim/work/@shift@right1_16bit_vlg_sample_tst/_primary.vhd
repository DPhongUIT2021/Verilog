library verilog;
use verilog.vl_types.all;
entity ShiftRight1_16bit_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end ShiftRight1_16bit_vlg_sample_tst;
