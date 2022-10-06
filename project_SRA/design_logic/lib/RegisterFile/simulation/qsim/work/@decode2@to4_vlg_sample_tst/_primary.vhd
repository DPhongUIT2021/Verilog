library verilog;
use verilog.vl_types.all;
entity Decode2To4_vlg_sample_tst is
    port(
        E               : in     vl_logic;
        I               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Decode2To4_vlg_sample_tst;
