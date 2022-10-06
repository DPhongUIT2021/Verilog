library verilog;
use verilog.vl_types.all;
entity MinAbsAddSub_vlg_sample_tst is
    port(
        C               : in     vl_logic_vector(1 downto 0);
        R1              : in     vl_logic_vector(15 downto 0);
        R2              : in     vl_logic_vector(15 downto 0);
        R3              : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end MinAbsAddSub_vlg_sample_tst;
