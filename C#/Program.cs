using System;
class Calculator
{
    public static void Main()
    {
        string s;
        do
        {
            Calculator c = new Calculator();
            Console.WriteLine("Enter 1st no");
            int a = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter 2nd no");
            int b = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter a for addition/nEnter b for substraction/n" +
                "Enter c for multiplication/nEnter d for division ");
            char x = char.Parse(Console.ReadLine());
            if (x == 'a')
                Console.WriteLine("Addition = " + (a + b));
            else if (x == 'b')
                Console.WriteLine("Substarction = " + Math.Abs(a - b));
            else if (x == 'c')
                Console.WriteLine("Multiplication = " + (a * b));
            else if (x == 'd')
            {
                if (b == 0)
                {
                    Console.WriteLine("2nd no cannot be zero");
                }

                else
                {
                    float f = a / b;
                    Console.WriteLine("Division = " + Convert.ToString(f));
                }
            }
            else
                Console.WriteLine("Enter valid character");
            Console.WriteLine("Do you want to do again ? write Yes or No");
             s = Console.ReadLine();
        }
        while (s.ToUpper() == "YES");

        Console.WriteLine("Thank you for using the Calculator");
    }
}