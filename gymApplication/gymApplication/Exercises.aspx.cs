using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;


// Description:
// in this section the page is separed by the request variable came from another page 
// the database will be open and the workout data will be used for this page
// this page replace any label and buttons according with the database


namespace gymApplication
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(hashed.constring))
            {

                if (Session["user"] != null)
                {
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "SELECT * FROM Workouts_table ";
                    connection.Open();
                    DataTable dt = new DataTable();
                    SqlDataAdapter sqladapter = new SqlDataAdapter(cmd);
                    sqladapter.Fill(dt);
                    //query
                    string r = dt.Rows[0]["WorkoutName"].ToString();
                    

                    if (Request.QueryString["selected"].ToString() == "beginer1")
                    {
                        if (Request.QueryString["action"] != null)
                        {
                            active.Text = "Delete from your training";
                        }

                        name.Text = "<b>Training : " + Request.QueryString["selected"].ToString() + "</b>";

                        // <------------ Leg variables ----------------->
                        string legn1, legn2, legd1, legd2, legp1, legp2, legb1, legb2;
                        legn1 = legn2 = legd1 = legd2 = legp1 = legp2 = legb1 = legb2 = "";
                        // <------------ abs variables ----------------->
                        string absn1, absn2, abs1d, abs2d, abs1p, abs2p, absb1, absb2;
                        absn1 = absn2 = abs1d = abs2d = abs1p = abs2p = absb1 = absb2 = "";
                        // <------------ Back variables ----------------->
                        string backn1, backn2, back1d, back2d, back1p, back2p, backb1, backb2;
                        backn1 = backn2 = back1d = back2d = back1p = back2p = backb1 = backb2 = "";
                        // <------------ Biceps variables ----------------->
                        string bicepsn1, bicepsn2, biceps1d, biceps2d, biceps1p, biceps2p, bicepsb1, bicepsb2;
                        bicepsn1 = bicepsn2 = biceps1d = biceps2d = biceps1p = biceps2p = bicepsb1 = bicepsb2 = "";
                        // <------------ Chest variables ----------------->
                        string chestn1, chestn2, chest1d, chest2d, chest1p, chest2p, chestb1, chestb2;
                        chestn1 = chestn2 = chest1d = chest2d = chest1p = chest2p = chestb1 = chestb2 = "";
                        // <------------ Triceps variables ----------------->
                        string tricepsn1, tricepsn2, triceps1d, triceps2d, triceps1p, triceps2p, tricepsb1, tricepsb2;
                        tricepsn1 = tricepsn2 = triceps1d = triceps2d = triceps1p = triceps2p = tricepsb1 = tricepsb2 = "";


                        for (int i = 0; i < 17; i++)
                        {
                            if (i == 0)
                            {
                                legn1 = dt.Rows[i]["WorkoutName"].ToString();
                                legd1 = dt.Rows[i]["Description"].ToString();
                                legp1 = dt.Rows[i]["Workout_image"].ToString();
                                legb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 2)
                            {
                                legn2 = dt.Rows[i]["WorkoutName"].ToString();
                                legd2 = dt.Rows[i]["Description"].ToString();
                                legp2 = dt.Rows[i]["Workout_image"].ToString();
                                legb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 4)
                            {
                                absn1 = dt.Rows[i]["WorkoutName"].ToString();
                                abs1d = dt.Rows[i]["Description"].ToString();
                                abs1p = dt.Rows[i]["Workout_image"].ToString();
                                absb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 3)
                            {
                                absn2 = dt.Rows[i]["WorkoutName"].ToString();
                                abs2d = dt.Rows[i]["Description"].ToString();
                                abs2p = dt.Rows[i]["Workout_image"].ToString();
                                absb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 8)
                            {
                                backn1 = dt.Rows[i]["WorkoutName"].ToString();
                                back1d = dt.Rows[i]["Description"].ToString();
                                back1p = dt.Rows[i]["Workout_image"].ToString();
                                backb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 6)
                            {
                                backn2 = dt.Rows[i]["WorkoutName"].ToString();
                                back2d = dt.Rows[i]["Description"].ToString();
                                back2p = dt.Rows[i]["Workout_image"].ToString();
                                backb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 9)
                            {
                                bicepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps1d = dt.Rows[i]["Description"].ToString();
                                biceps1p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 11)
                            {
                                bicepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps2d = dt.Rows[i]["Description"].ToString();
                                biceps2p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 12)
                            {
                                tricepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps1d = dt.Rows[i]["Description"].ToString();
                                triceps1p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 13)
                            {
                                tricepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps2d = dt.Rows[i]["Description"].ToString();
                                triceps2p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 15)
                            {
                                chestn1 = dt.Rows[i]["WorkoutName"].ToString();
                                chest1d = dt.Rows[i]["Description"].ToString();
                                chest1p = dt.Rows[i]["Workout_image"].ToString();
                                chestb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 16)
                            {
                                chestn2 = dt.Rows[i]["WorkoutName"].ToString();
                                chest2d = dt.Rows[i]["Description"].ToString();
                                chest2p = dt.Rows[i]["Workout_image"].ToString();
                                chestb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            // <------------------------- legs labels ----------------------->
                            lblleg1.Text = legn1;
                            lblleg1d.Text = legd1;
                            lblleg1p.ImageUrl = legp1;
                            lblleg2.Text = legn2;
                            lblleg2d.Text = legd2;
                            lblleg2p.ImageUrl = legp2;
                            btnlegs1.Text = "repetitions :" + legb1.ToString();
                            btnlegs2.Text = "repetitions :" + legb2.ToString();
                            // <------------------------- abs labels----------------------->

                            lblabs1.Text = absn1;
                            lblabsd1.Text = abs1d;
                            lblabsp1.ImageUrl = abs1p;
                            lblabs2.Text = absn2;
                            lblabsd2.Text = abs2d;
                            lblabsp2.ImageUrl = abs2p;
                            btnabs1.Text = "repetitions :" + absb1.ToString();
                            btnabs2.Text = "repetitions :" + absb2.ToString();

                            // <------------------------- back labels----------------------->

                            lblback1.Text = backn1;
                            lblbackd1.Text = back1d;
                            lblbackp1.ImageUrl = back1p;
                            lblback2.Text = backn2;
                            lblbackd2.Text = back2d;
                            lblbackp2.ImageUrl = back2p;
                            btnback1.Text = "repetitions :" + backb1.ToString();
                            btnback2.Text = "repetitions :" + backb1.ToString();

                            // <------------------------- Chest labels----------------------->

                            lblchest1.Text = chestn1;
                            lblchestd1.Text = chest1d;
                            lblchestp1.ImageUrl = chest1p;
                            lblchest2.Text = chestn2;
                            lblchestd2.Text = chest2d;
                            lblchestp2.ImageUrl = chest2p;
                            btnchest1.Text = "repetitions :" + chestb1.ToString();
                            btnchest2.Text = "repetitions :" + chestb1.ToString();


                            // <------------------------- biceps labels----------------------->

                            lblbiceps1.Text = bicepsn1;
                            lblbicepsd1.Text = biceps1d;
                            lblbicepsp1.ImageUrl = biceps1p;
                            lblbiceps2.Text = bicepsn2;
                            lblbicepsd2.Text = biceps2d;
                            lblbicepsp2.ImageUrl = biceps2p;
                            btnbiceps1.Text = "repetitions :" + bicepsb1.ToString();
                            btnbiceps2.Text = "repetitions :" + bicepsb1.ToString();


                            // <------------------------- triceps labels----------------------->

                            lbltriceps1.Text = tricepsn1;
                            lbltricepsd1.Text = triceps1d;
                            lbltricepsp1.ImageUrl = triceps1p;
                            lbltriceps2.Text = tricepsn2;
                            lbltricepsd2.Text = triceps2d;
                            lbltricepsp2.ImageUrl = triceps2p;
                            btntriceps1.Text = "repetitions :" + tricepsb1.ToString();
                            btntriceps2.Text = "repetitions :" + tricepsb1.ToString();




                        }




                    }
                    if (Request.QueryString["selected"].ToString() == "intermediate1")
                    {

                        if (Request.QueryString["action"] != null)
                        {
                            active.Text = "Delete from your training";
                        }

                        name.Text = "<b>Training : " + Request.QueryString["selected"].ToString() + "</b>";

                        // <------------ Leg variables ----------------->
                        string legn1, legn2, legd1, legd2, legp1, legp2, legb1, legb2;
                        legn1 = legn2 = legd1 = legd2 = legp1 = legp2 = legb1 = legb2 = "";
                        // <------------ abs variables ----------------->
                        string absn1, absn2, abs1d, abs2d, abs1p, abs2p, absb1, absb2;
                        absn1 = absn2 = abs1d = abs2d = abs1p = abs2p = absb1 = absb2 = "";
                        // <------------ Back variables ----------------->
                        string backn1, backn2, back1d, back2d, back1p, back2p, backb1, backb2;
                        backn1 = backn2 = back1d = back2d = back1p = back2p = backb1 = backb2 = "";
                        // <------------ Biceps variables ----------------->
                        string bicepsn1, bicepsn2, biceps1d, biceps2d, biceps1p, biceps2p, bicepsb1, bicepsb2;
                        bicepsn1 = bicepsn2 = biceps1d = biceps2d = biceps1p = biceps2p = bicepsb1 = bicepsb2 = "";
                        // <------------ Chest variables ----------------->
                        string chestn1, chestn2, chest1d, chest2d, chest1p, chest2p, chestb1, chestb2;
                        chestn1 = chestn2 = chest1d = chest2d = chest1p = chest2p = chestb1 = chestb2 = "";
                        // <------------ Triceps variables ----------------->
                        string tricepsn1, tricepsn2, triceps1d, triceps2d, triceps1p, triceps2p, tricepsb1, tricepsb2;
                        tricepsn1 = tricepsn2 = triceps1d = triceps2d = triceps1p = triceps2p = tricepsb1 = tricepsb2 = "";


                        for (int i = 0; i < 17; i++)
                        {
                            if (i == 1)
                            {
                                legn1 = dt.Rows[i]["WorkoutName"].ToString();
                                legd1 = dt.Rows[i]["Description"].ToString();
                                legp1 = dt.Rows[i]["Workout_image"].ToString();
                                legb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 0)
                            {
                                legn2 = dt.Rows[i]["WorkoutName"].ToString();
                                legd2 = dt.Rows[i]["Description"].ToString();
                                legp2 = dt.Rows[i]["Workout_image"].ToString();
                                legb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 3)
                            {
                                absn1 = dt.Rows[i]["WorkoutName"].ToString();
                                abs1d = dt.Rows[i]["Description"].ToString();
                                abs1p = dt.Rows[i]["Workout_image"].ToString();
                                absb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 5)
                            {
                                absn2 = dt.Rows[i]["WorkoutName"].ToString();
                                abs2d = dt.Rows[i]["Description"].ToString();
                                abs2p = dt.Rows[i]["Workout_image"].ToString();
                                absb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 6)
                            {
                                backn1 = dt.Rows[i]["WorkoutName"].ToString();
                                back1d = dt.Rows[i]["Description"].ToString();
                                back1p = dt.Rows[i]["Workout_image"].ToString();
                                backb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 7)
                            {
                                backn2 = dt.Rows[i]["WorkoutName"].ToString();
                                back2d = dt.Rows[i]["Description"].ToString();
                                back2p = dt.Rows[i]["Workout_image"].ToString();
                                backb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 9)
                            {
                                bicepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps1d = dt.Rows[i]["Description"].ToString();
                                biceps1p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 11)
                            {
                                bicepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps2d = dt.Rows[i]["Description"].ToString();
                                biceps2p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 12)
                            {
                                tricepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps1d = dt.Rows[i]["Description"].ToString();
                                triceps1p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 13)
                            {
                                tricepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps2d = dt.Rows[i]["Description"].ToString();
                                triceps2p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 15)
                            {
                                chestn1 = dt.Rows[i]["WorkoutName"].ToString();
                                chest1d = dt.Rows[i]["Description"].ToString();
                                chest1p = dt.Rows[i]["Workout_image"].ToString();
                                chestb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 16)
                            {
                                chestn2 = dt.Rows[i]["WorkoutName"].ToString();
                                chest2d = dt.Rows[i]["Description"].ToString();
                                chest2p = dt.Rows[i]["Workout_image"].ToString();
                                chestb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            // <------------------------- legs labels ----------------------->
                            lblleg1.Text = legn1;
                            lblleg1d.Text = legd1;
                            lblleg1p.ImageUrl = legp1;
                            lblleg2.Text = legn2;
                            lblleg2d.Text = legd2;
                            lblleg2p.ImageUrl = legp2;
                            btnlegs1.Text = "repetitions :" + legb1.ToString();
                            btnlegs2.Text = "repetitions :" + legb2.ToString();
                            // <------------------------- abs labels----------------------->

                            lblabs1.Text = absn1;
                            lblabsd1.Text = abs1d;
                            lblabsp1.ImageUrl = abs1p;
                            lblabs2.Text = absn2;
                            lblabsd2.Text = abs2d;
                            lblabsp2.ImageUrl = abs2p;
                            btnabs1.Text = "repetitions :" + absb1.ToString();
                            btnabs2.Text = "repetitions :" + absb2.ToString();

                            // <------------------------- back labels----------------------->

                            lblback1.Text = backn1;
                            lblbackd1.Text = back1d;
                            lblbackp1.ImageUrl = back1p;
                            lblback2.Text = backn2;
                            lblbackd2.Text = back2d;
                            lblbackp2.ImageUrl = back2p;
                            btnback1.Text = "repetitions :" + backb1.ToString();
                            btnback2.Text = "repetitions :" + backb1.ToString();

                            // <------------------------- Chest labels----------------------->

                            lblchest1.Text = chestn1;
                            lblchestd1.Text = chest1d;
                            lblchestp1.ImageUrl = chest1p;
                            lblchest2.Text = chestn2;
                            lblchestd2.Text = chest2d;
                            lblchestp2.ImageUrl = chest2p;
                            btnchest1.Text = "repetitions :" + chestb1.ToString();
                            btnchest2.Text = "repetitions :" + chestb1.ToString();


                            // <------------------------- biceps labels----------------------->

                            lblbiceps1.Text = bicepsn1;
                            lblbicepsd1.Text = biceps1d;
                            lblbicepsp1.ImageUrl = biceps1p;
                            lblbiceps2.Text = bicepsn2;
                            lblbicepsd2.Text = biceps2d;
                            lblbicepsp2.ImageUrl = biceps2p;
                            btnbiceps1.Text = "repetitions :" + bicepsb1.ToString();
                            btnbiceps2.Text = "repetitions :" + bicepsb1.ToString();


                            // <------------------------- triceps labels----------------------->

                            lbltriceps1.Text = tricepsn1;
                            lbltricepsd1.Text = triceps1d;
                            lbltricepsp1.ImageUrl = triceps1p;
                            lbltriceps2.Text = tricepsn2;
                            lbltricepsd2.Text = triceps2d;
                            lbltricepsp2.ImageUrl = triceps2p;
                            btntriceps1.Text = "repetitions :" + tricepsb1.ToString();
                            btntriceps2.Text = "repetitions :" + tricepsb1.ToString();




                        }




                    }
                    if (Request.QueryString["selected"].ToString() == "advanced1")
                    {


                        if (Request.QueryString["action"] != null)
                        {
                            active.Text = "Delete from your training";
                        }
                        name.Text = "<b>Training : " + Request.QueryString["selected"].ToString() + "</b>";

                        // <------------ Leg variables ----------------->
                        string legn1, legn2, legd1, legd2, legp1, legp2,legb1,legb2;
                        legn1 = legn2 = legd1 = legd2 = legp1 = legp2=legb1=legb2 = "";
                        // <------------ abs variables ----------------->
                        string absn1, absn2, abs1d, abs2d, abs1p, abs2p,absb1,absb2;
                        absn1 = absn2 = abs1d = abs2d = abs1p = abs2p=absb1=absb2 = "";
                        // <------------ Back variables ----------------->
                        string backn1, backn2, back1d, back2d, back1p, back2p,backb1,backb2;
                        backn1 = backn2 = back1d = back2d = back1p = back2p=backb1=backb2 = "";
                        // <------------ Biceps variables ----------------->
                        string bicepsn1, bicepsn2, biceps1d, biceps2d, biceps1p, biceps2p,bicepsb1,bicepsb2;
                        bicepsn1 = bicepsn2 = biceps1d = biceps2d = biceps1p = biceps2p=bicepsb1=bicepsb2 = "";
                        // <------------ Chest variables ----------------->
                        string chestn1, chestn2, chest1d, chest2d, chest1p, chest2p,chestb1,chestb2;
                        chestn1 = chestn2 = chest1d = chest2d = chest1p = chest2p=chestb1=chestb2 = "";
                        // <------------ Triceps variables ----------------->
                        string tricepsn1, tricepsn2, triceps1d, triceps2d, triceps1p, triceps2p,tricepsb1,tricepsb2;
                        tricepsn1 = tricepsn2 = triceps1d = triceps2d = triceps1p = triceps2p=tricepsb1=tricepsb2 = "";


                        for (int i = 0; i < 17; i++)
                        {
                            if (i == 2)
                            {
                                legn1 = dt.Rows[i]["WorkoutName"].ToString();
                                legd1 = dt.Rows[i]["Description"].ToString();
                                legp1 = dt.Rows[i]["Workout_image"].ToString();
                                legb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 0)
                            {
                                legn2 = dt.Rows[i]["WorkoutName"].ToString();
                                legd2 = dt.Rows[i]["Description"].ToString();
                                legp2 = dt.Rows[i]["Workout_image"].ToString();
                                legb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 3)
                            {
                                absn1 = dt.Rows[i]["WorkoutName"].ToString();
                                abs1d = dt.Rows[i]["Description"].ToString();
                                abs1p = dt.Rows[i]["Workout_image"].ToString();
                                absb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 5)
                            {
                                absn2 = dt.Rows[i]["WorkoutName"].ToString();
                                abs2d = dt.Rows[i]["Description"].ToString();
                                abs2p = dt.Rows[i]["Workout_image"].ToString();
                                absb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 7)
                            {
                                backn1 = dt.Rows[i]["WorkoutName"].ToString();
                                back1d = dt.Rows[i]["Description"].ToString();
                                back1p = dt.Rows[i]["Workout_image"].ToString();
                                backb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 6)
                            {
                                backn2 = dt.Rows[i]["WorkoutName"].ToString();
                                back2d = dt.Rows[i]["Description"].ToString();
                                back2p = dt.Rows[i]["Workout_image"].ToString();
                                backb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 9)
                            {
                                bicepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps1d = dt.Rows[i]["Description"].ToString();
                                biceps1p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 11)
                            {
                                bicepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                biceps2d = dt.Rows[i]["Description"].ToString();
                                biceps2p = dt.Rows[i]["Workout_image"].ToString();
                                bicepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 12)
                            {
                                tricepsn1 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps1d = dt.Rows[i]["Description"].ToString();
                                triceps1p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 13)
                            {
                                tricepsn2 = dt.Rows[i]["WorkoutName"].ToString();
                                triceps2d = dt.Rows[i]["Description"].ToString();
                                triceps2p = dt.Rows[i]["Workout_image"].ToString();
                                tricepsb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 15)
                            {
                                chestn1 = dt.Rows[i]["WorkoutName"].ToString();
                                chest1d = dt.Rows[i]["Description"].ToString();
                                chest1p = dt.Rows[i]["Workout_image"].ToString();
                                chestb1 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            if (i == 16)
                            {
                                chestn2 = dt.Rows[i]["WorkoutName"].ToString();
                                chest2d = dt.Rows[i]["Description"].ToString();
                                chest2p = dt.Rows[i]["Workout_image"].ToString();
                                chestb2 = dt.Rows[i]["Repetitions"].ToString();
                            }
                            // <------------------------- legs labels ----------------------->
                            lblleg1.Text = legn1;
                            lblleg1d.Text = legd1;
                            lblleg1p.ImageUrl = legp1;
                            lblleg2.Text = legn2;
                            lblleg2d.Text = legd2;
                            lblleg2p.ImageUrl = legp2;
                            btnlegs1.Text = "repetitions :" + legb1.ToString();
                            btnlegs2.Text = "repetitions :" + legb2.ToString();
                            // <------------------------- abs labels----------------------->

                            lblabs1.Text = absn1;
                            lblabsd1.Text = abs1d;
                            lblabsp1.ImageUrl = abs1p;
                            lblabs2.Text = absn2;
                            lblabsd2.Text = abs2d;
                            lblabsp2.ImageUrl = abs2p;
                            btnabs1.Text = "repetitions :" + absb1.ToString();
                            btnabs2.Text = "repetitions :" + absb2.ToString();

                            // <------------------------- back labels----------------------->

                            lblback1.Text = backn1;
                            lblbackd1.Text = back1d;
                            lblbackp1.ImageUrl = back1p;
                            lblback2.Text = backn2;
                            lblbackd2.Text = back2d;
                            lblbackp2.ImageUrl = back2p;
                            btnback1.Text = "repetitions :" + backb1.ToString();
                            btnback2.Text = "repetitions :" + backb1.ToString();

                            // <------------------------- Chest labels----------------------->

                            lblchest1.Text = chestn1;
                            lblchestd1.Text = chest1d;
                            lblchestp1.ImageUrl = chest1p;
                            lblchest2.Text = chestn2;
                            lblchestd2.Text = chest2d;
                            lblchestp2.ImageUrl = chest2p;
                            btnchest1.Text = "repetitions :" + chestb1.ToString();
                            btnchest2.Text = "repetitions :" + chestb1.ToString();


                            // <------------------------- biceps labels----------------------->

                            lblbiceps1.Text = bicepsn1;
                            lblbicepsd1.Text = biceps1d;
                            lblbicepsp1.ImageUrl = biceps1p;
                            lblbiceps2.Text = bicepsn2;
                            lblbicepsd2.Text = biceps2d;
                            lblbicepsp2.ImageUrl = biceps2p;
                            btnbiceps1.Text = "repetitions :" + bicepsb1.ToString();
                            btnbiceps2.Text = "repetitions :" + bicepsb1.ToString();


                            // <------------------------- triceps labels----------------------->

                            lbltriceps1.Text = tricepsn1;
                            lbltricepsd1.Text = triceps1d;
                            lbltricepsp1.ImageUrl = triceps1p;
                            lbltriceps2.Text = tricepsn2;
                            lbltricepsd2.Text = triceps2d;
                            lbltricepsp2.ImageUrl = triceps2p;
                            btntriceps1.Text = "repetitions :" + tricepsb1.ToString();
                            btntriceps2.Text = "repetitions :" + tricepsb1.ToString();


                        }




                    }
                }
                else
                {
                    Response.Redirect("login.aspx");
                }

            }

        }
        protected void Active_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["action"] != null)
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {
                        connection.Open();
                        string s = "DELETE FROM UserWorkOuts_Table WHERE UserEmail = '" + Session["user"] + "'";
                        SqlCommand command2 = new SqlCommand(s, connection);
                        command2.ExecuteNonQuery();
                        Response.Redirect("Profile.aspx?action=Deleted");
                    
                }

            }
            if (IsPostBack) 
            {
                using (SqlConnection connection = new SqlConnection(hashed.constring))
                {   
                    // first: check if the user already exist in the database
                    // second: if "yes" add the new training to it
                    // third: if "not" just insert the new user to the data base  
                    connection.Open();
                    string checkWorkoutName = "SELECT COUNT(*) FROM UserWorkOuts_Table WHERE UserEmail = '" + Session["user"] + "'";
                    SqlCommand command = new SqlCommand(checkWorkoutName, connection);
                    int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        string s = "UPDATE UserWorkOuts_Table set WorkoutName = '" + Request.QueryString["selected"].ToString() + "'";
                        SqlCommand command2 = new SqlCommand(s, connection);
                        command2.ExecuteNonQuery();
                        Response.Redirect("Profile.aspx");
                    }
                    else
                    {
                        string insertQuery = "INSERT INTO UserWorkOuts_Table ( WorkoutName,UserEmail, Date) VALUES(@WorkoutName,@UserEmail,@Date)";
                        SqlCommand command3 = new SqlCommand(insertQuery, connection);
                        command3.Parameters.AddWithValue("@UserEmail", Session["user"].ToString());
                        command3.Parameters.AddWithValue("@WorkoutName", Request.QueryString["selected"].ToString());
                        command3.Parameters.AddWithValue("@Date", DateTime.Now.ToString());

                        command3.ExecuteNonQuery();//Execute Query
                        Response.Redirect("Profile.aspx");
                    }

                }

            }
            
        }


    }
}