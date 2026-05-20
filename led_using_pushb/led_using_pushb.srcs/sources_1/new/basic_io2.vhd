----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2026 04:42:26 PM
-- Design Name: 
-- Module Name: basic_io2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity basic_io2 is
    port(pushb : in std_logic_vector(3 downto 0); 
         led : out std_logic_vector(3 downto 0)); 
end basic_io2;

architecture Behavioral of basic_io2 is

begin
    
    led <= pushb; 

end Behavioral;
