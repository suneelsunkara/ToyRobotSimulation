using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
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
            string[] commands=null;
            if (!string.IsNullOrEmpty(Convert.ToString(InputCode1.Text)))
            {
                commands = Regex.Split(InputCode1.Text.Trim(), "\r\n");
            }
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