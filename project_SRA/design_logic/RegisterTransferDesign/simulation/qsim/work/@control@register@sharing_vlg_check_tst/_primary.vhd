library verilog;
use verilog.vl_types.all;
entity ControlRegisterSharing_vlg_check_tst is
    port(
        Add1            : in     vl_logic_vector(2 downto 0);
        Add2            : in     vl_logic_vector(1 downto 0);
        OE              : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        RE1             : in     vl_logic;
        RE2             : in     vl_logic;
        RE3             : in     vl_logic;
        WE1             : in     vl_logic;
        WE2             : in     vl_logic;
        WE3             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ControlRegisterSharing_vlg_check_tst;
