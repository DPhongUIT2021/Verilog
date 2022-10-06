library verilog;
use verilog.vl_types.all;
entity Multi2_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Multi2_vlg_sample_tst;
