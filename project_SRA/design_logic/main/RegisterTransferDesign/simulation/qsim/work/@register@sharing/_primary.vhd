library verilog;
use verilog.vl_types.all;
entity RegisterSharing is
    port(
        O1              : out    vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        In1             : in     vl_logic_vector(15 downto 0);
        In2             : in     vl_logic_vector(15 downto 0);
        O2              : out    vl_logic_vector(15 downto 0);
        O3              : out    vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        outR1           : out    vl_logic_vector(15 downto 0);
        outR2           : out    vl_logic_vector(15 downto 0);
        outR3           : out    vl_logic_vector(15 downto 0);
        Q               : out    vl_logic_vector(3 downto 0)
    );
end RegisterSharing;
