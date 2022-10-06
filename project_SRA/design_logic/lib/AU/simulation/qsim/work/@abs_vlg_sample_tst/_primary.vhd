library verilog;
use verilog.vl_types.all;
entity Abs_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Abs_vlg_sample_tst;
