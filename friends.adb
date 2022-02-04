with Ada.Text_IO;
with Ada.Strings.Unbounded;
with ada.Text_IO.Unbounded_IO;
with Ada.IO_Exceptions;

with Ada.Command_Line, Ada.Text_IO;
use Ada.Command_Line, Ada.Text_IO;
procedure Friends is
   -- Initializing
   Read_From     : Ada.Strings.Unbounded.Unbounded_String;
   Write_To      : Ada.Strings.Unbounded.Unbounded_String;
   name          : Ada.Strings.Unbounded.Unbounded_String;

   Input, Output : File_Type;
begin

   -- taking inputs

   Put_Line ("Please enter the name of your friend:");
   ada.Text_IO.Unbounded_IO.Get_Line(name);
   


   
   begin
     



     ada.Text_IO.Open (File => Input, Mode => In_File, Name => "out.txt");
      exception
      when Ada.IO_Exceptions.Name_Error =>
        Ada.Text_IO.create (File => Input, Mode => In_File, Name => "out.txt");
   
   end;
   -- Creating new file file

   begin
            Ada.Text_IO.Open (File => Output,
                        Name => "friends.txt",
                        Mode => Ada.Text_IO.Append_File);
   exception
      when Ada.IO_Exceptions.Name_Error =>
        Ada.Text_IO.Create (File => Output,
             Name => "friends.txt",
            Mode => Ada.Text_IO.Append_File);
         return;
   end;
   -- Here is the loop.............................................
   ------------------
   loop
      declare
         Line : String := Get_Line (Input);
      begin
         
         Put_Line (Output, Line);
         Put_Line (Ada.Strings.Unbounded.To_String(name) &  " Has been added to your friends list");

      end;
   end loop;
exception
   when End_Error =>
      if Is_Open (Input) then
         Close (Input);
      end if;
      if Is_Open (Output) then
         Close (Output);
      end if;
end Friends;
