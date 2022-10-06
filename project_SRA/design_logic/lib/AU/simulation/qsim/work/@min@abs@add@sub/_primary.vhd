library verilog;
use verilog.vl_types.all;
entity MinAbsAddSub is
    port(
        InA             : out    vl_logic_vector(15 downto 0);
        R1              : in     vl_logic_vector(15 downto 0);
        C               : in     vl_logic_vector(1 downto 0);
        InB             : out    vl_logic_vector(15 downto 0);
        R2              : in     vl_logic_vector(15 downto 0);
        R3              : in     vl_logic_vector(15 downto 0);
        InI0            : out    vl_logic_vector(15 downto 0);
        InI1            : out    vl_logic_vector(15 downto 0);
        O               : out    vl_logic_vector(15 downto 0)
    );
end MinAbsAddSub;
