library verilog;
use verilog.vl_types.all;
entity ALULap04 is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Opcode          : in     vl_logic_vector(1 downto 0)
    );
end ALULap04;
