library verilog;
use verilog.vl_types.all;
entity Latch8bit is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        D               : in     vl_logic_vector(7 downto 0);
        EN              : in     vl_logic
    );
end Latch8bit;
