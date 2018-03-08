using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCartItem();
        }

        public void GetCartItem()
        {

            if(Convert.ToInt32(Session["UserId"])==0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {

                EmptyCart.Visible = false;
                CartItems.Visible = true;

                List<CartItem_Result> objList = new List<CartItem_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItem(Convert.ToInt32(Session["UserId"])).ToList<CartItem_Result>();
                }

                if (objList.Count!=0)
                {
                    EmptyCart.Visible = false;
                    CartItems.Visible = true;

                    CartListCarting.DataSource = objList;
                    CartListCarting.DataBind();
                }
                else
                {
                    EmptyCart.Visible = true;
                    CartItems.Visible = false;
                }
              
            }
           
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            using (var entities = new ShoppingCartEntities())
            {

                entities.Checkout(Convert.ToInt32(Session["UserId"]));

                }
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Succesfully Checkout!')", true);
        }
    }
}
