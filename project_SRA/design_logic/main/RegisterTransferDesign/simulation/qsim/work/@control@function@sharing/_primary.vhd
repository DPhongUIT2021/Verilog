library verilog;
use verilog.vl_types.all;
entity ControlFunctionSharing is
    port(
        RE1             : out    vl_logic;
        Q               : out    vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        WE1             : out    vl_logic;
        Add2            : out    vl_logic;
        RE2             : out    vl_logic;
        WE2             : out    vl_logic;
        RE3             : out    vl_logic;
        WE3             : out    vl_logic;
        Opcode1         : out    vl_logic;
        OE              : out    vl_logic;
        Add1            : out    vl_logic_vector(1 downto 0);
        Opcode2         : out    vl_logic_vector(1 downto 0)
    );
end ControlFunctionSharing;
