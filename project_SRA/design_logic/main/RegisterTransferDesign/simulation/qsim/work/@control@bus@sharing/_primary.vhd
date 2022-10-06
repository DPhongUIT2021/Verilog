library verilog;
use verilog.vl_types.all;
entity ControlBusSharing is
    port(
        Opcode1         : out    vl_logic;
        Q               : out    vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        OE              : out    vl_logic;
        Bus2            : out    vl_logic_vector(1 downto 0);
        Bus3            : out    vl_logic_vector(2 downto 0);
        Bus4            : out    vl_logic_vector(2 downto 0);
        Opcode2         : out    vl_logic_vector(1 downto 0);
        RE              : out    vl_logic_vector(2 downto 0);
        WE              : out    vl_logic_vector(2 downto 0)
    );
end ControlBusSharing;
