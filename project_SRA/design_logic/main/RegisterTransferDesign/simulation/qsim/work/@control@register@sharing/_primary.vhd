library verilog;
use verilog.vl_types.all;
entity ControlRegisterSharing is
    port(
        WE1             : out    vl_logic;
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        WE2             : out    vl_logic;
        Add1            : out    vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(3 downto 0);
        WE3             : out    vl_logic;
        RE1             : out    vl_logic;
        RE2             : out    vl_logic;
        RE3             : out    vl_logic;
        OE              : out    vl_logic;
        Add2            : out    vl_logic_vector(1 downto 0)
    );
end ControlRegisterSharing;
