library verilog;
use verilog.vl_types.all;
entity Decode is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        E               : in     vl_logic;
        I               : in     vl_logic_vector(2 downto 0)
    );
end Decode;
