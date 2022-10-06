library verilog;
use verilog.vl_types.all;
entity RFC_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Input           : in     vl_logic;
        RAE             : in     vl_logic;
        RBE             : in     vl_logic;
        Write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RFC_vlg_sample_tst;
