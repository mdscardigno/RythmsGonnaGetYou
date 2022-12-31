using System;
using System.Drawing;
using System.Linq;
using Pastel;


namespace RythmsGonnaGetYou
{
    class Program
    {
        static void Main(string[] args)
        {
            static void DisplayGreeting()
            {
                //https://www.ascii-art-generator.org/

                Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");
                Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");

                Console.WriteLine($"{"######  #     # #     # ####### #     # #     #     #####      #####  ####### #     # #     #    #        #####  ####### #######    #     # ####### #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"#     # #     #  #   #     #    #     # ##   ##    #     #    #     # #     # ##    # ##    #   # #      #     # #          #        #   #  #     # #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"#     # #     #   # #      #    #     # # # # #    #          #       #     # # #   # # #   #  #   #     #       #          #         # #   #     # #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"######  #######    #       #    ####### #  #  #     #####     #  #### #     # #  #  # #  #  # #     #    #  #### #####      #          #    #     # #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"#   #   #     #    #       #    #     # #     #          #    #     # #     # #   # # #   # # #######    #     # #          #          #    #     # #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"#    #  #     #    #       #    #     # #     #    #     #    #     # #     # #    ## #    ## #     #    #     # #          #          #    #     # #     #".Pastel(Color.Violet)}");
                Console.WriteLine($"{"#     # #     #    #       #    #     # #     #     #####      #####  ####### #     # #     # #     #     #####  #######    #          #    #######  ##### ".Pastel(Color.Violet)}");

                Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");
                Console.WriteLine($"{"############################################################################################################################################################".Pastel(Color.DarkGoldenrod)}");

                // Console.WriteLine($"{",'.-.'.".Pastel(Color.DarkGoldenrod)}");
                // Console.WriteLine($"{"'\\~ o/` ,,".Pastel(Color.DarkGoldenrod)}");
                // Console.WriteLine($"{"{ @ }".Pastel(Color.DarkGoldenrod)}");
                // Console.WriteLine($"{"f".Pastel(Color.DarkGoldenrod)}");
                // Console.WriteLine($"{"/`-'\\$".Pastel(Color.DarkGoldenrod)}");
                // Console.WriteLine($"{"(_ / -\\_)".Pastel(Color.DarkGoldenrod)}");

            };
            DisplayGreeting();
        }
    }
}
