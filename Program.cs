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

            };
            DisplayGreeting();
        }
    }
}
