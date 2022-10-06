library verilog;
use verilog.vl_types.all;
entity Main_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        \In\            : in     vl_logic_vector(7 downto 0);
        RA              : in     vl_logic_vector(2 downto 0);
        RE              : in     vl_logic;
        WA              : in     vl_logic_vector(2 downto 0);
        WE              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Main_vlg_sample_tst;
