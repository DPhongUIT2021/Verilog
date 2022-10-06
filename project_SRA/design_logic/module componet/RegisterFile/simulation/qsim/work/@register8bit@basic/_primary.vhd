library verilog;
use verilog.vl_types.all;
entity Register8bitBasic is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0)
    );
end Register8bitBasic;
