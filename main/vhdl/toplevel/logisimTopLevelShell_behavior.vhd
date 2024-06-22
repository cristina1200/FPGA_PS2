--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : MouseProject_modif                                           ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT main
         PORT ( CLK     : IN  std_logic;
                PS_CLK  : IN  std_logic;
                PS_DATA : IN  std_logic;
                REVERSE : IN  std_logic;
                RST     : IN  std_logic;
                ANODS   : OUT std_logic_vector( 3 DOWNTO 0 );
                CATODS  : OUT std_logic_vector( 6 DOWNTO 0 );
                IS_LEFT : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_ANODS   : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_CATODS  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_CLK     : std_logic;
   SIGNAL s_IS_LEFT : std_logic;
   SIGNAL s_PS_CLK  : std_logic;
   SIGNAL s_PS_DATA : std_logic;
   SIGNAL s_REVERSE : std_logic;
   SIGNAL s_RST     : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   IS_LEFT_0  <= s_IS_LEFT;
   n_ANODS_0  <=  NOT s_ANODS(0);
   n_ANODS_1  <=  NOT s_ANODS(1);
   n_ANODS_2  <=  NOT s_ANODS(2);
   n_ANODS_3  <=  NOT s_ANODS(3);
   n_CATODS_0 <=  NOT s_CATODS(0);
   n_CATODS_1 <=  NOT s_CATODS(1);
   n_CATODS_2 <=  NOT s_CATODS(2);
   n_CATODS_3 <=  NOT s_CATODS(3);
   n_CATODS_4 <=  NOT s_CATODS(4);
   n_CATODS_5 <=  NOT s_CATODS(5);
   n_CATODS_6 <=  NOT s_CATODS(6);
   s_CLK      <= CLK_0;
   s_PS_CLK   <= PS_CLK_0;
   s_PS_DATA  <= PS_DATA_0;
   s_REVERSE  <= REVERSE_0;
   s_RST      <= RST_0;

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : main
      PORT MAP ( ANODS   => s_ANODS,
                 CATODS  => s_CATODS,
                 CLK     => s_CLK,
                 IS_LEFT => s_IS_LEFT,
                 PS_CLK  => s_PS_CLK,
                 PS_DATA => s_PS_DATA,
                 REVERSE => s_REVERSE,
                 RST     => s_RST );
END platformIndependent;
