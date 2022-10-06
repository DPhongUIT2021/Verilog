library verilog;
use verilog.vl_types.all;
entity ControlRegisterSharing_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ControlRegisterSharing_vlg_sample_tst;
