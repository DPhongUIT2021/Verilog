library verilog;
use verilog.vl_types.all;
entity Min_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Min_vlg_sample_tst;
