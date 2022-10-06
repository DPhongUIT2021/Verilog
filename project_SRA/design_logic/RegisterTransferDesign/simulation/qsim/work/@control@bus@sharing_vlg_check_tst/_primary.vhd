library verilog;
use verilog.vl_types.all;
entity ControlBusSharing_vlg_check_tst is
    port(
        Bus2            : in     vl_logic_vector(1 downto 0);
        Bus3            : in     vl_logic_vector(2 downto 0);
        Bus4            : in     vl_logic_vector(2 downto 0);
        OE              : in     vl_logic;
        Opcode1         : in     vl_logic;
        Opcode2         : in     vl_logic_vector(1 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        RE              : in     vl_logic_vector(2 downto 0);
        WE              : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end ControlBusSharing_vlg_check_tst;
