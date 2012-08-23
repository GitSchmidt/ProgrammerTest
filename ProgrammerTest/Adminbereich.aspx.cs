using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgrammerTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (ProgrammingTestEntities2 p = new ProgrammingTestEntities2())
            {
                Question q = new Question();
                q.QuestionTitle = txtQuestionTitle.Text;
                q.QuestionText = txtQuestionText.Text;

                int this_id = Convert.ToInt32((from f in p.Test
                                               where f.TestName == dropTopicList.SelectedItem.Text
                                               select f.id).First());
                Test t = new Test
                   {
                       id = this_id,
                       TestName = dropTopicList.SelectedItem.Text
                   };
                List<Test> icol = new List<Test>();
                icol.Add(t);
                q.TestId = 6;
                p.Question.Add(q);
                p.SaveChanges();
            }
        }
    }
}