--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF main IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT control_unit
         PORT ( CLOCK       : IN  std_logic;
                LEFT_CLICK  : IN  std_logic;
                RESET       : IN  std_logic;
                REVERSE     : IN  std_logic;
                RIGHT_CLICK : IN  std_logic;
                IS_LEFT     : OUT std_logic;
                OUTNUMBER   : OUT std_logic_vector( 15 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT frequency_divider
         PORT ( CLOCK_100   : IN  std_logic;
                RESET       : IN  std_logic;
                CLK_DIVIDED : OUT std_logic );
      END COMPONENT;

      COMPONENT ssd
         PORT ( CLK   : IN  std_logic;
                NR    : IN  std_logic_vector( 15 DOWNTO 0 );
                ANOD  : OUT std_logic_vector( 3 DOWNTO 0 );
                CATOD : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT ps2_interface
         PORT ( CLOCK       : IN  std_logic;
                PS2_CLOCK   : IN  std_logic;
                PS2_DATA    : IN  std_logic;
                RESET       : IN  std_logic;
                LEFT_CLICK  : OUT std_logic;
                RIGHT_CLICK : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus3  : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 15 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet1  <= RST;
   s_logisimNet11 <= PS_CLK;
   s_logisimNet5  <= REVERSE;
   s_logisimNet6  <= CLK;
   s_logisimNet9  <= PS_DATA;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   ANODS   <= s_logisimBus3(3 DOWNTO 0);
   CATODS  <= s_logisimBus4(6 DOWNTO 0);
   IS_LEFT <= s_logisimNet7;

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   control_unit_1 : control_unit
      PORT MAP ( CLOCK       => s_logisimNet6,
                 IS_LEFT     => s_logisimNet7,
                 LEFT_CLICK  => s_logisimNet2,
                 OUTNUMBER   => s_logisimBus8(15 DOWNTO 0),
                 RESET       => s_logisimNet1,
                 REVERSE     => s_logisimNet5,
                 RIGHT_CLICK => s_logisimNet10 );

   frequency_divider_1 : frequency_divider
      PORT MAP ( CLK_DIVIDED => s_logisimNet0,
                 CLOCK_100   => s_logisimNet6,
                 RESET       => s_logisimNet1 );

   ssd_1 : ssd
      PORT MAP ( ANOD  => s_logisimBus3(3 DOWNTO 0),
                 CATOD => s_logisimBus4(6 DOWNTO 0),
                 CLK   => s_logisimNet0,
                 NR    => s_logisimBus8(15 DOWNTO 0) );

   ps2_interface_1 : ps2_interface
      PORT MAP ( CLOCK       => s_logisimNet6,
                 LEFT_CLICK  => s_logisimNet2,
                 PS2_CLOCK   => s_logisimNet11,
                 PS2_DATA    => s_logisimNet9,
                 RESET       => s_logisimNet1,
                 RIGHT_CLICK => s_logisimNet10 );


END platformIndependent;
