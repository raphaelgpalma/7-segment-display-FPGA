LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY 7segment IS
    PORT (
        Data_In: IN STD_LOGIC_VECTOR (3 downto 0);
        a, b, c, d, e, f, g, h: OUT STD_LOGIC
    );
END ENTITY 7segment;

ARCHITECTURE comportamental OF 7segment IS
BEGIN
    PROCESS (Data_In)
    BEGIN
        CASE Data_In IS
            WHEN "0000" =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '0';
                e <= '0';
                f <= '0';
                g <= '1';
                h <= '0';
                
            WHEN "0001" =>
                a <= '1';
                b <= '0';
                c <= '0';
                d <= '1';
                e <= '1';
                f <= '1';
                g <= '1';
                h <= '0';
                
            WHEN "0010" =>
                a <= '0';
                b <= '0';
                c <= '1';
                d <= '0';
                e <= '0';
                f <= '1';
                g <= '0';
                h <= '0';
                
            WHEN "0011" =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '0';
                e <= '1';
                f <= '1';
                g <= '0';
                h <= '1';
                
            WHEN "0100" =>
                a <= '1';
                b <= '0';
                c <= '0';
                d <= '1';
                e <= '1';
                f <= '0';
                g <= '0';
                h <= '1';
                
            WHEN "0101" =>
                a <= '0';
                b <= '1';
                c <= '0';
                d <= '0';
                e <= '1';
                f <= '0';
                g <= '0';
                h <= '1';
                
            WHEN "0110" =>
                a <= '0';
                b <= '1';
                c <= '0';
                d <= '0';
                e <= '0';
                f <= '0';
                g <= '0';
                h <= '1';
                
            WHEN "0111" =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '1';
                e <= '1';
                f <= '1';
                g <= '1';
                h <= '1';
                
            WHEN "1000" =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '0';
                e <= '0';
                f <= '0';
                g <= '0';
                h <= '1';
                
            WHEN "1001" =>
                a <= '0';
                b <= '0';
                c <= '0';
                d <= '0';
                e <= '1';
                f <= '0';
                g <= '0';
                h <= '1';
                
            WHEN OTHERS =>
                a <= '1';
                b <= '1';
                c <= '1';
                d <= '1';
                e <= '1';
                f <= '1';
                g <= '1';
                h <= '1';
        END CASE;
    END PROCESS;
END ARCHITECTURE comportamental;
