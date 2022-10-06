library verilog;
use verilog.vl_types.all;
entity Decode_vlg_sample_tst is
    port(
        E               : in     vl_logic;
        I               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decode_vlg_sample_tst;
