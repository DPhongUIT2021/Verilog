library verilog;
use verilog.vl_types.all;
entity FourReg16bit is
    port(
        OutA            : out    vl_logic_vector(15 downto 0);
        RAB             : in     vl_logic_vector(1 downto 0);
        RAA             : in     vl_logic_vector(1 downto 0);
        WE              : in     vl_logic;
        WA              : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0);
        OutB            : out    vl_logic_vector(15 downto 0)
    );
end FourReg16bit;
