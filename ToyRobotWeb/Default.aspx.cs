using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ToyRobot;

namespace ToyRobotWeb
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbt_Go_Click(object sender, EventArgs e)
        {
            if (this.FileUpload1.HasFile)
            {
                //folder path to save uploaded file
                string folderPath = Server.MapPath("~/Upload/");

                //Check whether Directory (Folder) exists, although we have created, if it si not created this code will check
                if (!Directory.Exists(folderPath))
                {
                    //If folder does not exists. Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //save file in the specified folder and path
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                string[] commands = File.ReadAllLines(folderPath + Path.GetFileName(FileUpload1.FileName));
                string message = "";
                Command obj = new Command();
                if (obj != null)
                {
                    message = obj.Start(commands);
                }
                lbl_Output.Text = "Output: " + message;
            }
        }

    }
}