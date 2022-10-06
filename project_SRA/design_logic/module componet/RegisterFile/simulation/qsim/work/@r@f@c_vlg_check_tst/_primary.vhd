library verilog;
use verilog.vl_types.all;
entity RFC_vlg_check_tst is
    port(
        OutA            : in     vl_logic;
        OutB            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end RFC_vlg_check_tst;
