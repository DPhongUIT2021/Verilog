library verilog;
use verilog.vl_types.all;
entity Latch16bit is
    port(
        Q               : out    vl_logic_vector(15 downto 0);
        EN              : in     vl_logic;
        D               : in     vl_logic_vector(15 downto 0)
    );
end Latch16bit;
