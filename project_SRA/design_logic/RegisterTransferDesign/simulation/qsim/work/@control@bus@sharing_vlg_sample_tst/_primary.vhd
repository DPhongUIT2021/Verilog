library verilog;
use verilog.vl_types.all;
entity ControlBusSharing_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControlBusSharing_vlg_sample_tst;
