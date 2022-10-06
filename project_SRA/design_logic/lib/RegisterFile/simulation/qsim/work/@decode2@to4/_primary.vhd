library verilog;
use verilog.vl_types.all;
entity Decode2To4 is
    port(
        Q               : out    vl_logic_vector(3 downto 0);
        E               : in     vl_logic;
        I               : in     vl_logic_vector(1 downto 0)
    );
end Decode2To4;
