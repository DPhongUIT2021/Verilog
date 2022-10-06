library verilog;
use verilog.vl_types.all;
entity Decode4To10_vlg_sample_tst is
    port(
        I               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decode4To10_vlg_sample_tst;
