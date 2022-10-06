library verilog;
use verilog.vl_types.all;
entity MinAbsAddSub_vlg_check_tst is
    port(
        InA             : in     vl_logic_vector(15 downto 0);
        InB             : in     vl_logic_vector(15 downto 0);
        InI0            : in     vl_logic_vector(15 downto 0);
        InI1            : in     vl_logic_vector(15 downto 0);
        O               : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end MinAbsAddSub_vlg_check_tst;
