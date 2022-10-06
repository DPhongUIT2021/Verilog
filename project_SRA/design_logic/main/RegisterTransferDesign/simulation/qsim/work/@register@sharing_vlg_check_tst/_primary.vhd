library verilog;
use verilog.vl_types.all;
entity RegisterSharing_vlg_check_tst is
    port(
        O1              : in     vl_logic_vector(15 downto 0);
        O2              : in     vl_logic_vector(15 downto 0);
        O3              : in     vl_logic_vector(15 downto 0);
        \Out\           : in     vl_logic_vector(15 downto 0);
        outR1           : in     vl_logic_vector(15 downto 0);
        outR2           : in     vl_logic_vector(15 downto 0);
        outR3           : in     vl_logic_vector(15 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end RegisterSharing_vlg_check_tst;
