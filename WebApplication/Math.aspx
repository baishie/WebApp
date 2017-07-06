<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Math.aspx.cs" Inherits="WebApplication.Math" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>General Exam</title>
    <link rel="stylesheet" href="CSS/GenExam.css">
    <link rel="stylesheet" href="CSS/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>

<body>
        <form id="form" runat="server">  
               
              <div class="quiz">
                  <asp:HiddenField ID="hdnField" runat="server" value=""  />
                  <b><i>Problem Solving </i></b> <br /><br />
               <b>DIRECTIONS:</b><br /><br />
                 This is a test of your ability to think out solutions to quantitative problems. Read carefully each problem and determine the correct answer from the choices. After you
                  have decided on the best answer, select the box that corresponds to your answer. <br /><br />
                  <br />
                  <b>Example:</b>
              <h2 class="quiz-question">1.) What is the area of the shaded portion CBD of the figure shown at the bottom which is made of 16 squares? The area of each square is 4.</h2>
              <ul data-quiz-question="1">
                <li class="quiz-answer" data-quiz-answer="a">a. 9 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. 15 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 18 </li>
                <li class="quiz-answer" data-quiz-answer="d">d. 36 </li>
                <li class="quiz-answer" data-quiz-answer="e">e. 30 </li>
              </ul>

              <h2 class="quiz-question">2.) Ruby bought a set of tableware marked P2,800.00 with an offer 8% discount. By paying cash for the set, she got undid the set of additional 5% discount.
                  How much did the tableware cost?
              </h2>
              <ul data-quiz-question="2">
                <li class="quiz-answer" data-quiz-answer="a">a. P2,576.00 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. P2,547.80 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. P244.00 </li>
                <li class="quiz-answer" data-quiz-answer="d">d. P2,447.00 </li>
                <li class="quiz-answer" data-quiz-answer="e">e. P2,447.20 </li>
              </ul>

              <h2 class="quiz-question">3.) Three thousand seedlings of pineapple can be planted in a 1 hectare field. How many hectares of land is needed to plant 15,900 seedlings? </h2>
              <ul data-quiz-question="3">
                <li class="quiz-answer" data-quiz-answer="a">a. 6.3 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. 5.3 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 4.3 </li>
                <li class="quiz-answer" data-quiz-answer="d">d. 3.8 </li>
                <li class="quiz-answer" data-quiz-answer="e">e. 3.5 </li>
              </ul>

              <h2 class="quiz-question">4.) A conical container is 12 inches across the top. If filled with water 4 inches from the bottom, the surface of the water is also 4 inches across. How deep
                  is the container?
              </h2>
              <ul data-quiz-question="4">
                <li class="quiz-answer" data-quiz-answer="a">a. 10 inches </li>
                <li class="quiz-answer" data-quiz-answer="b">b. 13 inches </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 1 ft </li>
                <li class="quiz-answer" data-quiz-answer="d">d. 1.5 ft </li>
                <li class="quiz-answer" data-quiz-answer="e">e. 9 inches </li>
              </ul>

              <h2 class="quiz-question">5.) What portion of P31,750.00 must be invested at 5% to obtain an income of P1,750 if the remainder is invested at 6%? </h2>
              <ul data-quiz-question="5">
                <li class="quiz-answer" data-quiz-answer="a">a. P15,500.00 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. P15,000.00 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. P20,000.00 </li>
                <li class="quiz-answer" data-quiz-answer="d">d. P21.750</li>
                <li class="quiz-answer" data-quiz-answer="e">e. P21,700.00</li>
              </ul>

              <h2 class="quiz-question">6.) Fred noticed he had worked one-third of the problems in his math assignment and that when he had worked eight more problems,
                  he would be half way through the assignment. How many problems were in the assignment?
              </h2>
              <ul data-quiz-question="6">
                <li class="quiz-answer" data-quiz-answer="a">a. 24</li>
                <li class="quiz-answer" data-quiz-answer="b">b. 48 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 44 </li>
                <li class="quiz-answer" data-quiz-answer="d">d. 36 </li>
                <li class="quiz-answer" data-quiz-answer="e">e. None of the above</li>
              </ul>

              <h2 class="quiz-question">7.) An umbrella marked to sell for P85.00 was reduced to P60.00. What was the percent of discount? </h2>
              <ul data-quiz-question="7">
                <li class="quiz-answer" data-quiz-answer="a">a. 10% </li>
                <li class="quiz-answer" data-quiz-answer="b">b. 20% </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 30% </li>
                <li class="quiz-answer" data-quiz-answer="d">d. 35%</li>
                <li class="quiz-answer" data-quiz-answer="e">e. 50%</li>
              </ul>


              <h2 class="quiz-question">8.) Ruben's father earns P68,200.00 a year. What is his salary? </h2>
              <ul data-quiz-question="8">
                <li class="quiz-answer" data-quiz-answer="a">a. P2,750.00 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. P5,683.00</li>
                <li class="quiz-answer" data-quiz-answer="c">c. P5,000.00</li>
                <li class="quiz-answer" data-quiz-answer="d">d. P5,800.33</li>
                <li class="quiz-answer" data-quiz-answer="e">e. P6,000.00</li>
              </ul>

              <h2 class="quiz-question">9.) Cora was granted an educational assitance load of P5,000.00 at 12% interest a year. How many interest will she pay for the money she borrowes? </h2>
              <ul data-quiz-question="9">
                <li class="quiz-answer" data-quiz-answer="a">a. P16.00 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. P60.00 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. P600.00</li>
                <li class="quiz-answer" data-quiz-answer="d">d. P66.00</li>
                <li class="quiz-answer" data-quiz-answer="e">e. P660.00</li>
              </ul>

              <h2 class="quiz-question">10.) How much metal will be ibtained from 150 tons of ore if the metal is 8 1/2% of the ore? </h2>
              <ul data-quiz-question="10">
                <li class="quiz-answer" data-quiz-answer="a">a. 12.75 </li>
                <li class="quiz-answer" data-quiz-answer="b">b. 13.25 </li>
                <li class="quiz-answer" data-quiz-answer="c">c. 13.50</li>
                <li class="quiz-answer" data-quiz-answer="d">d. 14.25</li>
                <li class="quiz-answer" data-quiz-answer="e">e. 14.50</li>
              </ul>

                <br /><br />
                <b><i>Data Sufficiency</i></b> <br /><br />
                <b>DIRECTIONS:</b><br /><br />
                 Each of the questions in this test is followed by the two statements labelled 'a' and 'b' on which certaind data are given. In these questions, you do not actually compute an answer
                  but rather you have to decide whether the data given in the statement is sufficient for answering the question. Use the information given in the statement, together with your knowledge
                  in Mathematics and everyday facts in answring each item.<br /><br />               
                <br />
                <table style="width:100%">
                  <tr>
                    <td>A</td>
                    <td>If statement (1) alone is sufficient, but statement alone is not sufficient to answer the question asked</td> 
                  </tr>
                  <tr>
                    <td>B</td>
                    <td>If statement (2) alone is sufficient, but statement alone is not sufficient to answer the question asked.</td> 
                  </tr>
                  <tr>
                    <td>C</td>
                    <td>If both statements (1) and (2) are sufficient to answer the question ask, but neither statement alone is sufficient.</td> 
                  </tr>
                  <tr>
                    <td>D</td>
                    <td>If each statement is sufficient by itself to answer the question asked.</td> 
                  </tr>
                  <tr>
                    <td>E</td>
                    <td>If statement (1) and (2) together are not sufficient to answer the question asked and additional data specific to the problem are needed.</td> 
                  </tr>
                </table>
                  <br />
                <b>Example:</b>

              <h2 class="quiz-question">11.) How many applied for the job? </h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) 63 applicants failed in the screening test. </td>
                  </tr>
                  <tr>
                    <td>(2) Of the total number of applicants, only 27 successfully made it. </td>
                  </tr>
                </table>
              <ul data-quiz-question="11">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">12.) Compute for the thickness of the pipe</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) Its outer diameter is 7.5 inches </td>
                  </tr>
                  <tr>
                    <td>(2) Its inner diamter is 7.25 inches </td>
                  </tr>
                </table>
              <ul data-quiz-question="12">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">13.) How many kilograms of rice can a family of 5 consume in one year? </h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) They eat 3x a day.</td>
                  </tr>
                  <tr>
                    <td>(2) Two members can consume 4 kilograms in 3 days. </td>
                  </tr>
                </table>
              <ul data-quiz-question="13">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">14.) Determine the number of students enrolled in college</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) 50% if the total number are taking Nursing </td>
                  </tr>
                  <tr>
                    <td>(2) The remaining number are in the allied courses </td>
                  </tr>
                </table>
              <ul data-quiz-question="14">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>


              <h2 class="quiz-question">15.) How many yards of silk organza lace will be needed to make wedding gown?</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) The bride to be is 5'2. </td>
                  </tr>
                  <tr>
                    <td>(2) The cost of cloth is P300 per yard </td>
                  </tr>
                </table>
              <ul data-quiz-question="15">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>  

              <h2 class="quiz-question">16.) Find the volume of a rectangular solid</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) Two meter long </td>
                  </tr>
                  <tr>
                    <td>(2) 50 meters wide</td>
                  </tr>
                </table>
              <ul data-quiz-question="16">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>


              <h2 class="quiz-question">17.) What is the circumference of my ring?</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) Its outer diameter is 7.5 inches </td>
                  </tr>
                  <tr>
                    <td>(2) Its inner diamter is 7.25 inches </td>
                  </tr>
                </table>
              <ul data-quiz-question="17">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">18.) Ding has 10 coints in his pocket. Does he have a 25 centavo coin? </h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) He has P2.50 in his pocket. </td>
                  </tr>
                  <tr>
                    <td>(2) He has a 50 coin in his pocket.</td>
                  </tr>
                </table>
              <ul data-quiz-question="18">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">19.) How far apart are two jeepneys (A and B) in 5 hours? </h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) A travels 3 hours  faster than B. </td>
                  </tr>
                  <tr>
                    <td>(2) Both start at the same time but travel in opposite direction </td>
                  </tr>
                </table>
              <ul data-quiz-question="19">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

              <h2 class="quiz-question">20.) The population of a certain city increased by 6% every year. What was the population in 1974?</h2>
                <table style="width:70%">
                  <tr>
                    <td>(1) Its population was 89,570 in 1975.</td>
                  </tr>
                  <tr>
                    <td>(2) Its population was 55,981 in 1973. </td>
                  </tr>
                </table>
              <ul data-quiz-question="20">
                <li class="quiz-answer" data-quiz-answer="a">A</li>
                <li class="quiz-answer" data-quiz-answer="b">B </li>
                <li class="quiz-answer" data-quiz-answer="c">C</li>
                <li class="quiz-answer" data-quiz-answer="d">D</li>
                <li class="quiz-answer" data-quiz-answer="e">E</li>
              </ul>

                 <div class="one_col">
                    <asp:Button ID="proceed" runat="server" Text="Submit" type="button" OnClick="proceed_Submit" />
                </div>   
                                                                                                                                                                                                                                                                                                                
              </div>

        </form> 

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="JS/Math.js"></script>
</body>
</html>
