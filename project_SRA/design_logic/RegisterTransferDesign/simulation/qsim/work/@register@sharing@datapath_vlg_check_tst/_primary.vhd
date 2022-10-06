library verilog;
use verilog.vl_types.all;
entity RegisterSharingDatapath_vlg_check_tst is
    port(
        O1              : in     vl_logic_vector(15 downto 0);
        O2              : in     vl_logic_vector(15 downto 0);
        O3              : in     vl_logic_vector(15 downto 0);
        ourR1           : in     vl_logic_vector(15 downto 0);
        \Out\           : in     vl_logic_vector(15 downto 0);
        outR2           : in     vl_logic_vector(15 downto 0);
        outR3           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end RegisterSharingDatapath_vlg_check_tst;
