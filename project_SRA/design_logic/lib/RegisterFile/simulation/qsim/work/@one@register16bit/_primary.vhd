library verilog;
use verilog.vl_types.all;
entity OneRegister16bit is
    port(
        OutA            : out    vl_logic_vector(15 downto 0);
        RAB             : in     vl_logic;
        RAA             : in     vl_logic;
        WA              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        OutB            : out    vl_logic_vector(15 downto 0)
    );
end OneRegister16bit;
