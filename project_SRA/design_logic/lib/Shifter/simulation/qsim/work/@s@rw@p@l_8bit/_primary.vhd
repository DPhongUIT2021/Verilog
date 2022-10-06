library verilog;
use verilog.vl_types.all;
entity SRwPL_8bit is
    port(
        Q7              : out    vl_logic;
        CLK             : in     vl_logic;
        IL              : in     vl_logic;
        IR              : in     vl_logic;
        I7              : in     vl_logic;
        I6              : in     vl_logic;
        I5              : in     vl_logic;
        I4              : in     vl_logic;
        I3              : in     vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        Q6              : out    vl_logic;
        Q5              : out    vl_logic;
        Q3              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic;
        Q4              : out    vl_logic
    );
end SRwPL_8bit;
