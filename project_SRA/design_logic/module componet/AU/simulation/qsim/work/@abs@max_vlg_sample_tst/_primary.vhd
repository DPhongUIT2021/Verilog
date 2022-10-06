library verilog;
use verilog.vl_types.all;
entity AbsMax_vlg_sample_tst is
    port(
        C               : in     vl_logic;
        R1              : in     vl_logic_vector(15 downto 0);
        R2              : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end AbsMax_vlg_sample_tst;
