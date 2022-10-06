library verilog;
use verilog.vl_types.all;
entity AddSub16bit is
    port(
        R               : out    vl_logic_vector(15 downto 0);
        Opcode          : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0)
    );
end AddSub16bit;
