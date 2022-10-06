library verilog;
use verilog.vl_types.all;
entity Main is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        RE              : in     vl_logic;
        RA              : in     vl_logic_vector(2 downto 0);
        WE              : in     vl_logic;
        WA              : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        \In\            : in     vl_logic_vector(7 downto 0)
    );
end Main;
