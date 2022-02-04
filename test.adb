with Ada.Text_IO;
with Ada.Strings.Unbounded;
with ada.Text_IO.Unbounded_IO;

procedure test is
 User_Input : Ada.Strings.Unbounded.Unbounded_String; 
Line : Ada.Strings.Unbounded.Unbounded_String;
  use Ada.Text_IO;


   F : File_Type;
    G: File_type;

begin
    Put_Line ("Please enter your report:  ");
    User_Input  := ada.Text_IO.Unbounded_IO.Get_Line; 
   Create (F, Out_file, "Report.txt");

      Put_Line (F, Ada.Strings.Unbounded.To_String(User_Input));
      Close (F);
                Ada.Text_IO.Open (File => G,
                        Name => "Input.txt",
                        Mode => Ada.Text_IO.Append_File);


                         
         Line := ada.Text_IO.Unbounded_IO.get_Line(F);

         Put_Line (G, Ada.Strings.Unbounded.To_String(Line));

    



 
 
   
   close (G);
   Put_Line ("Thank you for your report!");
end test;
