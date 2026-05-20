----------------------------------------------------------------------------------
-- Company: HS Bremerhaven 
-- Engineer: Mohammad Mahdi Mohammadi 
-- 
-- Create Date: 05/20/2026 04:27:22 PM
-- Design Name: 
-- Module Name: basic_io - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Just a test on the pynq_z2 for the basic io. 
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


entity basic_io is
    port(sw : in std_logic_vector(1 downto 0); 
         led : out std_logic_vector(1 downto 0)); 
end basic_io;

architecture Behavioral of basic_io is
begin
    led <= sw; 
end Behavioral;
