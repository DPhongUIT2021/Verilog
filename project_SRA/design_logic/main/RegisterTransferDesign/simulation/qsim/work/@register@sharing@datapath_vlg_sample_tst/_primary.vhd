library verilog;
use verilog.vl_types.all;
entity RegisterSharingDatapath_vlg_sample_tst is
    port(
        AddR1           : in     vl_logic_vector(2 downto 0);
        AddR2           : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        In1             : in     vl_logic_vector(15 downto 0);
        In2             : in     vl_logic_vector(15 downto 0);
        OE              : in     vl_logic;
        RE1             : in     vl_logic;
        RE2             : in     vl_logic;
        RE3             : in     vl_logic;
        WE1             : in     vl_logic;
        WE2             : in     vl_logic;
        WE3             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RegisterSharingDatapath_vlg_sample_tst;
