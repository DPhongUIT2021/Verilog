library verilog;
use verilog.vl_types.all;
entity RegisterSharingDatapath is
    port(
        O1              : out    vl_logic_vector(15 downto 0);
        outR2           : out    vl_logic_vector(15 downto 0);
        RE2             : in     vl_logic;
        WE2             : in     vl_logic;
        CLK             : in     vl_logic;
        O2              : out    vl_logic_vector(15 downto 0);
        In2             : in     vl_logic_vector(15 downto 0);
        RE1             : in     vl_logic;
        WE1             : in     vl_logic;
        AddR2           : in     vl_logic_vector(1 downto 0);
        outR3           : out    vl_logic_vector(15 downto 0);
        RE3             : in     vl_logic;
        WE3             : in     vl_logic;
        O3              : out    vl_logic_vector(15 downto 0);
        In1             : in     vl_logic_vector(15 downto 0);
        AddR1           : in     vl_logic_vector(2 downto 0);
        ourR1           : out    vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        OE              : in     vl_logic
    );
end RegisterSharingDatapath;
