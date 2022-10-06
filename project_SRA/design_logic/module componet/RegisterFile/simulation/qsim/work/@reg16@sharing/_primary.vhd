library verilog;
use verilog.vl_types.all;
entity Reg16Sharing is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        RE              : in     vl_logic;
        WE              : in     vl_logic;
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(15 downto 0)
    );
end Reg16Sharing;
