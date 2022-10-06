library verilog;
use verilog.vl_types.all;
entity RFC is
    port(
        OutA            : out    vl_logic;
        CLK             : in     vl_logic;
        Input           : in     vl_logic;
        Write           : in     vl_logic;
        RAE             : in     vl_logic;
        OutB            : out    vl_logic;
        RBE             : in     vl_logic
    );
end RFC;
