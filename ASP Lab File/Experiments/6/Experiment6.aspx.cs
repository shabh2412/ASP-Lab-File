using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Lab_File.Experiments._6
{
    public partial class Experiment6 : System.Web.UI.Page
    {
        private string[] Activities;
        private double[] ValuesOfActivity;
        protected void Page_Load(object sender, EventArgs e)
        {
            Activities = new string[160];    //string values of activies
            ValuesOfActivity = new double[160];   //MET values of activities

            //populate the arrays
            set_activity_array();
            set_activity_values();

            //Add activities and their MET Values to dropdown
            for (int i = 0; i < Activities.Length; i++)
            {
                activityInput.Items.Add(new ListItem(Activities[i]));
            }

            errorLabel.Visible = false;
        }
        protected void calculateCaloriesBurned_Click(object sender, EventArgs e)
        {
            //Only calculate if all fields are filled.
            if (heightInput.Text != ""
                && weightInput.Text != ""
                && ageInput.Text != ""
                && lenInput.Text != ""
                && activityInput.SelectedValue != ""
                && (genderInputMale.Checked || genderInputFemale.Checked))
            {
                errorLabel.Text = "";
                errorLabel.Visible = false;
                //Caculate result and display
                calculate();
            }
            else
            {
                //Display error and reset output
                errorLabel.Visible = true;
                errorLabel.Text = "Error: Please fill all fields!";
                activityLabel.Text = "";
                lenLabel.Text = "0";
                kcalLabel.Text = "0";
                kjLabel.Text = "0";
                kcalLabelHour.Text = "0";
                kjLabelHour.Text = "0";
            }
        }
        private void calculate()
        {
            //Get inputs
            int height = int.Parse(heightInput.Text);
            int weight = int.Parse(weightInput.Text);
            int age = int.Parse(ageInput.Text);
            int time = int.Parse(lenInput.Text);

            double v1, v2, vres, vreskJ;
            double mets = ValuesOfActivity[activityInput.SelectedIndex];

            if (genderInputMale.Checked)
                v1 = 66.5 + (13.75 * weight) + (5.003 * height) - (6.775 * age);
            else
                v1 = 655.1 + (9.563 * weight) + (1.85 * height) - (4.676 * age);

            //Calories burned per hour
            v1 = (v1 * mets) / 24; //in kcal
            v2 = v1 * 4.184; //in kJ

            kcalLabelHour.Text = Convert.ToString(Math.Round(v1));
            kjLabelHour.Text = Convert.ToString(Math.Round(v2));

            //Calories burned in given time
            vres = Math.Round(v1 * time / 60); //in kcal
            vreskJ = Math.Round(v2 * time / 60); //in kJ

            kcalLabel.Text = Convert.ToString(vres);
            kjLabel.Text = Convert.ToString(vreskJ);

            activityLabel.Text = Activities[activityInput.SelectedIndex];
            lenLabel.Text = lenInput.Text;
        }
        private void set_activity_array()
        {
            Activities[0] = "";
            Activities[1] = "Aqua aerobics";
            Activities[2] = "Athletics, high jump, long jump, triple jump, javelin, pole vault";
            Activities[3] = "Athletics, shot, discus, hammer";
            Activities[4] = "Athletics, steeplechase, hurdles";
            Activities[5] = "Badminton, competitive";
            Activities[6] = "Badminton, social";
            Activities[7] = "Baseball";
            Activities[8] = "Basketball, game";
            Activities[9] = "Basketball, shooting baskets";
            Activities[10] = "Bowling";
            Activities[11] = "Boxing, punching bag";
            Activities[12] = "Boxing, sparring";
            Activities[13] = "Calisthenics, heavy, vigorous effort";
            Activities[14] = "Calisthenics, light or moderate effort";
            Activities[15] = "Canoeing, rowing, light effort";
            Activities[16] = "Canoeing, rowing, moderate effort";
            Activities[17] = "Canoeing, rowing, vigorous effort";
            Activities[18] = "Carpentry, general";
            Activities[19] = "Carpentry, rain gutters, fencing";
            Activities[20] = "Carpentry, sawing hardwood";
            Activities[21] = "Carpet laying/removal";
            Activities[22] = "Carrying groceries upstairs";
            Activities[23] = "Chopping wood";
            Activities[24] = "Circuit training, general";
            Activities[25] = "Cleaning gutters";
            Activities[26] = "Cleaning, house, general";
            Activities[27] = "Conditioning exercise, health club exercise, general";
            Activities[28] = "Conditioning exercise, stretching, hatha yoga";
            Activities[29] = "Cricket [batting, bowling]";
            Activities[30] = "Cycling, less than 16.1 km/height";
            Activities[31] = "Cycling, 16.1-19.2 km/height";
            Activities[32] = "Cycling, 19.3-22.4 km/height";
            Activities[33] = "Cycling, 22.5-25.6 km/height";
            Activities[34] = "Cycling, 25.7-30.6 km/height, racing not drafting";
            Activities[35] = "Cycling, drafting at more than 30.6 km/height, very fast, racing general";
            Activities[36] = "Cycling, more than 32.2 km/height, racing not drafting";
            Activities[37] = "Cycling, BMX or mountain";
            Activities[38] = "Cycling, general";
            Activities[39] = "Cycling, stationary, 50 watts, very light effort";
            Activities[40] = "Cycling, stationary, 100 watts, light effort";
            Activities[41] = "Cycling, stationary, 150 watts, moderate effort";
            Activities[42] = "Cycling, stationary, 200 watts, vigorous effort";
            Activities[43] = "Cycling, stationary, 250 watts, very vigorous effort";
            Activities[44] = "Dancing, aerobic general";
            Activities[45] = "Dancing, ballet, modern, jazz, tap, jitterbug";
            Activities[46] = "Dancing, ballroom, slow";
            Activities[47] = "Dancing, Greek, Middle Eastern, hula, flamenco, belly, swing";
            Activities[48] = "Diving, springboard or platform";
            Activities[49] = "Elliptical trainer";
            Activities[50] = "Fencing";
            Activities[51] = "Fishing, general";
            Activities[52] = "Football, competitive";
            Activities[53] = "Frisbee, general";
            Activities[54] = "Frisbee, ultimate";
            Activities[55] = "Gardening, digging";
            Activities[56] = "Gardening, general";
            Activities[57] = "Gardening, mowing lawn";
            Activities[58] = "Gardening, planting trees";
            Activities[59] = "Gardening, raking lawn";
            Activities[60] = "Golf, general";
            Activities[61] = "Gymnastics";
            Activities[62] = "Handball, team";
            Activities[63] = "Hockey, field or ice";
            Activities[64] = "Horseback riding, general";
            Activities[65] = "Household cleaning, general";
            Activities[66] = "Household tasks, moderate effort";
            Activities[67] = "Hunting, general";
            Activities[68] = "Ice skating";
            Activities[69] = "Ironing";
            Activities[70] = "Judo, jujitsu, karate, kickboxing, tae kwan do";
            Activities[71] = "Kayaking";
            Activities[72] = "Lacrosse";
            Activities[73] = "Lawn bowls";
            Activities[74] = "Motorcross";
            Activities[75] = "Moving furniture, household items, carrying boxes";
            Activities[76] = "Orienteering";
            Activities[77] = "Painting, papering, plastering";
            Activities[78] = "Pilates";
            Activities[79] = "Polo";
            Activities[80] = "Rock climbing, ascending";
            Activities[81] = "Rock climbing, rappelling";
            Activities[82] = "Rollerblading";
            Activities[83] = "Rollerskating";
            Activities[84] = "Roofing";
            Activities[85] = "Rowing machine, general";
            Activities[86] = "Rugby";
            Activities[87] = "Running, 3 mins 26 secs per km";
            Activities[88] = "Running, 3 mins 44 secs per km";
            Activities[89] = "Running, 4 mins 9 secs per km";
            Activities[90] = "Running, 4 mins 20 secs per km";
            Activities[91] = "Running, 4 mins 40 secs per km";
            Activities[92] = "Running, 5 mins per km";
            Activities[93] = "Running, 5.5 mins per km";
            Activities[94] = "Running, 6 mins 12 secs per km";
            Activities[95] = "Running, 7 mins 10 secs per km";
            Activities[96] = "Running, 7.5 mins per km";
            Activities[97] = "Running, cross country";
            Activities[98] = "Running, jog/walk combination";
            Activities[99] = "Running, up stairs";
            Activities[100] = "Sailing, competition";
            Activities[101] = "Sailing, general";
            Activities[102] = "Scuba diving";
            Activities[103] = "Sexual activity, light effort";
            Activities[104] = "Sexual activity, moderate effort";
            Activities[105] = "Sexual activity, vigorous effort";
            Activities[106] = "Skateboarding";
            Activities[107] = "Skiing";
            Activities[108] = "Skipping, with rope";
            Activities[109] = "Sledding, tobogganing";
            Activities[110] = "Snorkelling";
            Activities[111] = "Snow shoeing";
            Activities[112] = "Soccer, casual";
            Activities[113] = "Soccer, competitive";
            Activities[114] = "Softball";
            Activities[115] = "Softball, pitching";
            Activities[116] = "Speed skating competitive";
            Activities[117] = "Squash";
            Activities[118] = "Stair-treadmill ergometer, general";
            Activities[119] = "Step aerobics, high step";
            Activities[120] = "Step aerobics, low step";
            Activities[121] = "Stretching";
            Activities[122] = "Surfing, body or board";
            Activities[123] = "Sweeping floors, carpets";
            Activities[124] = "Swimming laps, freestyle, moderate or light effort";
            Activities[125] = "Swimming laps, freestyle, vigorous";
            Activities[126] = "Swimming, backstroke";
            Activities[127] = "Swimming, breaststroke";
            Activities[128] = "Swimming, butterfly";
            Activities[129] = "Table tennis [ping pong]";
            Activities[130] = "Tai chi";
            Activities[131] = "Tennis, doubles";
            Activities[132] = "Tennis, general";
            Activities[133] = "Tennis, singles";
            Activities[134] = "Touch football";
            Activities[135] = "Trampoline";
            Activities[136] = "Vacuuming";
            Activities[137] = "Volleyball, 6-9 member team";
            Activities[138] = "Volleyball, beach";
            Activities[139] = "Volleyball, indoor competitive";
            Activities[140] = "Walk/run, playing with animals - moderate";
            Activities[141] = "Walk/run, playing with children - moderate";
            Activities[142] = "Walking the dog";
            Activities[143] = "Walking, 3.2 kph";
            Activities[144] = "Walking, 4.02 kph";
            Activities[145] = "Walking, 4.82 kph";
            Activities[146] = "Walking, 5.6 kph";
            Activities[147] = "Walking, 6.4 kph";
            Activities[148] = "Walking, 7.24 kph";
            Activities[149] = "Walking, 8 kph";
            Activities[150] = "Watching TV, sitting quietly";
            Activities[151] = "Water aerobics";
            Activities[152] = "Water jogging";
            Activities[153] = "Water polo";
            Activities[154] = "Waterskiiing";
            Activities[155] = "Weight lifting, light or moderate effort";
            Activities[156] = "Weight lifting, vigorous effort";
            Activities[157] = "Wiring, plumbing";
            Activities[158] = "Wrestling match";
            Activities[159] = "Yoga, hatha";
        }

        private void set_activity_values()
        {
            ValuesOfActivity[0] = -1;
            ValuesOfActivity[1] = 4;
            ValuesOfActivity[2] = 6;
            ValuesOfActivity[3] = 4;
            ValuesOfActivity[4] = 10;
            ValuesOfActivity[5] = 7;
            ValuesOfActivity[6] = 4.5;
            ValuesOfActivity[7] = 5;
            ValuesOfActivity[8] = 8;
            ValuesOfActivity[9] = 4.5;
            ValuesOfActivity[10] = 3;
            ValuesOfActivity[11] = 6;
            ValuesOfActivity[12] = 9;
            ValuesOfActivity[13] = 8;
            ValuesOfActivity[14] = 3.5;
            ValuesOfActivity[15] = 3;
            ValuesOfActivity[16] = 7;
            ValuesOfActivity[17] = 12;
            ValuesOfActivity[18] = 3;
            ValuesOfActivity[19] = 6;
            ValuesOfActivity[20] = 7.5;
            ValuesOfActivity[21] = 4.5;
            ValuesOfActivity[22] = 7.5;
            ValuesOfActivity[23] = 6;
            ValuesOfActivity[24] = 8;
            ValuesOfActivity[25] = 5;
            ValuesOfActivity[26] = 3;
            ValuesOfActivity[27] = 5.5;
            ValuesOfActivity[28] = 2.5;
            ValuesOfActivity[29] = 5;
            ValuesOfActivity[30] = 4;
            ValuesOfActivity[31] = 6;
            ValuesOfActivity[32] = 8;
            ValuesOfActivity[33] = 10;
            ValuesOfActivity[34] = 12;
            ValuesOfActivity[35] = 12;
            ValuesOfActivity[36] = 16;
            ValuesOfActivity[37] = 8.5;
            ValuesOfActivity[38] = 8;
            ValuesOfActivity[39] = 3;
            ValuesOfActivity[40] = 5.5;
            ValuesOfActivity[41] = 7;
            ValuesOfActivity[42] = 10.5;
            ValuesOfActivity[43] = 12.5;
            ValuesOfActivity[44] = 6.5;
            ValuesOfActivity[45] = 4.79999999999999;
            ValuesOfActivity[46] = 3;
            ValuesOfActivity[47] = 4.5;
            ValuesOfActivity[48] = 3;
            ValuesOfActivity[49] = 7;
            ValuesOfActivity[50] = 6;
            ValuesOfActivity[51] = 3;
            ValuesOfActivity[52] = 9;
            ValuesOfActivity[53] = 3;
            ValuesOfActivity[54] = 8;
            ValuesOfActivity[55] = 5;
            ValuesOfActivity[56] = 4;
            ValuesOfActivity[57] = 5.5;
            ValuesOfActivity[58] = 4.5;
            ValuesOfActivity[59] = 4.29999999999999;
            ValuesOfActivity[60] = 4.5;
            ValuesOfActivity[61] = 4;
            ValuesOfActivity[62] = 8;
            ValuesOfActivity[63] = 8;
            ValuesOfActivity[64] = 4;
            ValuesOfActivity[65] = 3;
            ValuesOfActivity[66] = 3.5;
            ValuesOfActivity[67] = 5;
            ValuesOfActivity[68] = 7;
            ValuesOfActivity[69] = 2.29999999999999;
            ValuesOfActivity[70] = 10;
            ValuesOfActivity[71] = 5;
            ValuesOfActivity[72] = 8;
            ValuesOfActivity[73] = 3;
            ValuesOfActivity[74] = 4;
            ValuesOfActivity[75] = 6;
            ValuesOfActivity[76] = 9;
            ValuesOfActivity[77] = 3;
            ValuesOfActivity[78] = 3.5;
            ValuesOfActivity[79] = 8;
            ValuesOfActivity[80] = 11;
            ValuesOfActivity[81] = 8;
            ValuesOfActivity[82] = 12.5;
            ValuesOfActivity[83] = 7;
            ValuesOfActivity[84] = 6;
            ValuesOfActivity[85] = 7;
            ValuesOfActivity[86] = 10;
            ValuesOfActivity[87] = 18;
            ValuesOfActivity[88] = 16;
            ValuesOfActivity[89] = 15;
            ValuesOfActivity[90] = 14;
            ValuesOfActivity[91] = 13.5;
            ValuesOfActivity[92] = 12.5;
            ValuesOfActivity[93] = 11;
            ValuesOfActivity[94] = 10;
            ValuesOfActivity[95] = 9;
            ValuesOfActivity[96] = 8;
            ValuesOfActivity[97] = 9;
            ValuesOfActivity[98] = 6;
            ValuesOfActivity[99] = 15;
            ValuesOfActivity[100] = 5;
            ValuesOfActivity[101] = 3;
            ValuesOfActivity[102] = 7;
            ValuesOfActivity[103] = 1;
            ValuesOfActivity[104] = 1.3;
            ValuesOfActivity[105] = 1.5;
            ValuesOfActivity[106] = 5;
            ValuesOfActivity[107] = 7;
            ValuesOfActivity[108] = 10;
            ValuesOfActivity[109] = 7;
            ValuesOfActivity[110] = 5;
            ValuesOfActivity[111] = 8;
            ValuesOfActivity[112] = 7;
            ValuesOfActivity[113] = 10;
            ValuesOfActivity[114] = 5;
            ValuesOfActivity[115] = 6;
            ValuesOfActivity[116] = 15;
            ValuesOfActivity[117] = 12;
            ValuesOfActivity[118] = 9;
            ValuesOfActivity[119] = 10;
            ValuesOfActivity[120] = 8.5;
            ValuesOfActivity[121] = 2.5;
            ValuesOfActivity[122] = 3;
            ValuesOfActivity[123] = 3.29999999999999;
            ValuesOfActivity[124] = 7;
            ValuesOfActivity[125] = 10;
            ValuesOfActivity[126] = 7;
            ValuesOfActivity[127] = 10;
            ValuesOfActivity[128] = 11;
            ValuesOfActivity[129] = 4;
            ValuesOfActivity[130] = 4;
            ValuesOfActivity[131] = 6;
            ValuesOfActivity[132] = 7;
            ValuesOfActivity[133] = 8;
            ValuesOfActivity[134] = 8;
            ValuesOfActivity[135] = 3.5;
            ValuesOfActivity[136] = 3.5;
            ValuesOfActivity[137] = 3;
            ValuesOfActivity[138] = 8;
            ValuesOfActivity[139] = 8;
            ValuesOfActivity[140] = 4;
            ValuesOfActivity[141] = 4;
            ValuesOfActivity[142] = 3;
            ValuesOfActivity[143] = 2.5;
            ValuesOfActivity[144] = 3;
            ValuesOfActivity[145] = 3.29999999999999;
            ValuesOfActivity[146] = 3.79999999999999;
            ValuesOfActivity[147] = 5;
            ValuesOfActivity[148] = 6.29999999999999;
            ValuesOfActivity[149] = 8;
            ValuesOfActivity[150] = 1;
            ValuesOfActivity[151] = 4;
            ValuesOfActivity[152] = 8;
            ValuesOfActivity[153] = 10;
            ValuesOfActivity[154] = 6;
            ValuesOfActivity[155] = 3;
            ValuesOfActivity[156] = 6;
            ValuesOfActivity[157] = 3;
            ValuesOfActivity[158] = 6;
            ValuesOfActivity[159] = 2.5;
        }
    }
}