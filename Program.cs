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
                Console.WriteLine($"{"#################################################-----------------------WELCOME TO-----------------------###################################################".Pastel(Color.FromArgb(165, 229, 250))}");
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


                static char PressAnyKey(string prompt)
                {
                    Console.WriteLine(prompt);
                    var keyPress = Console.ReadKey().KeyChar;
                    return keyPress;
                }


                static string WelcomeMessage()
                {
                    Console.Clear();

                    Console.WriteLine("Please enter your name: ");
                    var name = Console.ReadLine();

                    Console.WriteLine($"Welcome to the RythmsGonnaGetYou, {name}!");
                    PressAnyKey("Press any key to continue...");

                    return name;
                }

                static void DisplayMenu()
                {
                    var keepGoing = true;
                    Console.Clear();

                    //Select an option from the menu below:
                    //Add New Band, Search for a Band Name, Update Band, Delete.
                    //--Update Band: Would you like to update: Band Name, Genre, Number of Members, Website, Signed/Unsigned?
                    // Console.WriteLine("Please select an option from the menu below:");
                    // Console.WriteLine("1. Add New Band");
                    // Console.WriteLine("2. View All Bands");
                    // Console.WriteLine("3. Search for a Band");
                    // Console.WriteLine("4. Delete a Band");
                    // Console.WriteLine("5. Add an Album for a Band");
                    // Console.WriteLine("6. View All Albums");
                    // Console.WriteLine("7. View All Albums for a Band");//submenu: Enter Band Name. Display all albums for that band.
                    // Console.WriteLine("8. Search for an Album");
                    // Console.WriteLine("9. Delete an Album");
                    // Console.WriteLine("10. Add a Song to an Album");
                    // Console.WriteLine("11. View All Songs");
                    // Console.WriteLine("12. View All Songs for an Album"); //submenu: Enter Album Name. Display all Songs for that Album.
                    // Console.WriteLine("12. Search for a Song");
                    // Console.WriteLine("13. Delete a Song");
                    // Console.WriteLine("14. Exit");
                    // Console.WriteLine("14. Exit");
                }
            }

        }
    }
}

