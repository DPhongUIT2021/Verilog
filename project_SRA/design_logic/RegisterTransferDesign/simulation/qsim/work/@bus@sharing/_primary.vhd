library verilog;
use verilog.vl_types.all;
entity BusSharing is
    port(
        \Out\           : out    vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        In1             : in     vl_logic_vector(15 downto 0);
        In2             : in     vl_logic_vector(15 downto 0);
        Q               : out    vl_logic_vector(3 downto 0)
    );
end BusSharing;
