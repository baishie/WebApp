<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vocabulary.aspx.cs" Inherits="WebApplication.Vocabulary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>General Exam</title>
    <link rel="stylesheet" href="CSS/GenExam.css">
    <link rel="stylesheet" href="CSS/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
</head>

<body>
        <form id="form" runat="server" onsubmit="return checkForm(this);">  
              <asp:HiddenField ID="hdnField" runat="server" value=""   />
              <div class="quiz">
                  <b><i>VOCABULARY (Synonyms)</i></b> <br /><br />
               <b>DIRECTIONS:</b><br /><br />
                  Each of the items below consists of phrase which is followed by five words labeled a,b,c,d,e. Choose the one which is most <u>similar</u> meaning to the <u>underlined</u> word in the phrase. <br /><br />
                  <br />
                  <b>Example:</b>
              <h2 class="quiz-question">1.) <u>Mellow </u>Touch</h2>
              <ul data-quiz-question="1">
                <li class="quiz-answer" data-quiz-answer="a">a. Firm </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Soft </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Rough </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Light </li>
                <li class="quiz-answer" data-quiz-answer="e">e. Cool </li>
              </ul>

              <h2 class="quiz-question">2.) <u>Coalition</u> of Nations </h2>
              <ul data-quiz-question="2">
                <li class="quiz-answer" data-quiz-answer="a">a. Defense </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Alliance </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Coercion </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Oppression </li>
                <li class="quiz-answer" data-quiz-answer="e">e. Grievance </li>
              </ul>

              <h2 class="quiz-question">3.) An <u>awkward</u> remark </h2>
              <ul data-quiz-question="3">
                <li class="quiz-answer" data-quiz-answer="a">a. inspiring </li>
                <li class="quiz-answer" data-quiz-answer="b">b. unnecessary </li>
                <li class="quiz-answer" data-quiz-answer="c">c. embarassing </li>
                <li class="quiz-answer" data-quiz-answer="d">d. acceptable </li>
                <li class="quiz-answer" data-quiz-answer="e">e. unlikely </li>
              </ul>

              <h2 class="quiz-question">4.) Splendid <u>stamina</u> </h2>
              <ul data-quiz-question="4">
                <li class="quiz-answer" data-quiz-answer="a">a. endurance </li>
                <li class="quiz-answer" data-quiz-answer="b">b. enthusiasm </li>
                <li class="quiz-answer" data-quiz-answer="c">c. posture </li>
                <li class="quiz-answer" data-quiz-answer="d">d. manage </li>
                <li class="quiz-answer" data-quiz-answer="e">e. performance </li>
              </ul>

              <h2 class="quiz-question">5.) To <u>unlock</u> a secret </h2>
              <ul data-quiz-question="5">
                <li class="quiz-answer" data-quiz-answer="a">a. distort </li>
                <li class="quiz-answer" data-quiz-answer="b">b. disown </li>
                <li class="quiz-answer" data-quiz-answer="c">c. dispute </li>
                <li class="quiz-answer" data-quiz-answer="d">d. disclose</li>
                <li class="quiz-answer" data-quiz-answer="e">e. disregard</li>
              </ul>

              <h2 class="quiz-question">6.) <u>Mainstay</u> of the family </h2>
              <ul data-quiz-question="6">
                <li class="quiz-answer" data-quiz-answer="a">a. Oldest daughter</li>
                <li class="quiz-answer" data-quiz-answer="b">b. Chief Support </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Paid Helper </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Unmarried daughter </li>
                <li class="quiz-answer" data-quiz-answer="e">e. Oldest</li>
              </ul>

              <h2 class="quiz-question">7.) <u>Inculate</u> love of country </h2>
              <ul data-quiz-question="7">
                <li class="quiz-answer" data-quiz-answer="a">a. Instill </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Increase </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Convey </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Stimulate</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Cultivate</li>
              </ul>


              <h2 class="quiz-question">8.) To <u>comply</u> with legal requirements</h2>
              <ul data-quiz-question="8">
                <li class="quiz-answer" data-quiz-answer="a">a. provide </li>
                <li class="quiz-answer" data-quiz-answer="b">b. reckon</li>
                <li class="quiz-answer" data-quiz-answer="c">c. agree</li>
                <li class="quiz-answer" data-quiz-answer="d">d. contend</li>
                <li class="quiz-answer" data-quiz-answer="e">e. dispense</li>
              </ul>

              <h2 class="quiz-question">9.) To <u>interrogate</u> intensely </h2>
              <ul data-quiz-question="9">
                <li class="quiz-answer" data-quiz-answer="a">a. frighten </li>
                <li class="quiz-answer" data-quiz-answer="b">b. explain </li>
                <li class="quiz-answer" data-quiz-answer="c">c. torture</li>
                <li class="quiz-answer" data-quiz-answer="d">d. search</li>
                <li class="quiz-answer" data-quiz-answer="e">e. question</li>
              </ul>

              <h2 class="quiz-question">10.) Care of the <u>indigent</u> </h2>
              <ul data-quiz-question="10">
                <li class="quiz-answer" data-quiz-answer="a">a. abandoned </li>
                <li class="quiz-answer" data-quiz-answer="b">b. elderly </li>
                <li class="quiz-answer" data-quiz-answer="c">c. sick</li>
                <li class="quiz-answer" data-quiz-answer="d">d. orphan</li>
                <li class="quiz-answer" data-quiz-answer="e">e. needy</li>
              </ul>

              <h2 class="quiz-question">11.) <u>Drones</u> flying over the place </h2>
              <ul data-quiz-question="11">
                <li class="quiz-answer" data-quiz-answer="a">a. Male beetles</li>
                <li class="quiz-answer" data-quiz-answer="b">b. Houseflies </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Male bees</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Termintes</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Mosquitoes</li>
              </ul>

              <h2 class="quiz-question">12.) <u>Phlegmatic</u> spouse</h2>
              <ul data-quiz-question="12">
                <li class="quiz-answer" data-quiz-answer="a">a. Tactless </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Penniless </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Shameless</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Passionless</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Careless</li>
              </ul>

              <h2 class="quiz-question">13.) Extricate the culprit </h2>
              <ul data-quiz-question="13">
                <li class="quiz-answer" data-quiz-answer="a">a. describe </li>
                <li class="quiz-answer" data-quiz-answer="b">b. elderly </li>
                <li class="quiz-answer" data-quiz-answer="c">c. protect</li>
                <li class="quiz-answer" data-quiz-answer="d">d. orphan</li>
                <li class="quiz-answer" data-quiz-answer="e">e. pardon</li>
              </ul>

              <h2 class="quiz-question">14.) <u>Vicious</u> substance</h2>
              <ul data-quiz-question="14">
                <li class="quiz-answer" data-quiz-answer="a">a. Slippery </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Sticky </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Filmy</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Salty</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Dirty</li>
              </ul>

              <h2 class="quiz-question">15.) <u>Camouflage</u> their headquarters</h2>
              <ul data-quiz-question="15">
                <li class="quiz-answer" data-quiz-answer="a">a. Repair </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Change </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Burn</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Hide</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Repaint</li>
              </ul>  

              <h2 class="quiz-question">16.) <u>Congenial</u> person</h2>
              <ul data-quiz-question="16">
                <li class="quiz-answer" data-quiz-answer="a">a. Good-for-nothing </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Good-tempered </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Good-natured</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Good-looking</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Good-humored</li>
              </ul>

              <h2 class="quiz-question">17.) <u>Despotic</u> ruler</h2>
              <ul data-quiz-question="17">
                <li class="quiz-answer" data-quiz-answer="a">a. Autocratic </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Nationalistic </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Socialistic</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Anarchic</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Erratic</li>
              </ul>

              <h2 class="quiz-question">18.) A <u>terse</u> statement</h2>
              <ul data-quiz-question="18">
                <li class="quiz-answer" data-quiz-answer="a">a. wordy </li>
                <li class="quiz-answer" data-quiz-answer="b">b. written </li>
                <li class="quiz-answer" data-quiz-answer="c">c. frank</li>
                <li class="quiz-answer" data-quiz-answer="d">d. sharp</li>
                <li class="quiz-answer" data-quiz-answer="e">e. brief</li>
              </ul>

              <h2 class="quiz-question">19.) Flame of <u>fury</u> </h2>
              <ul data-quiz-question="19">
                <li class="quiz-answer" data-quiz-answer="a">a. anger </li>
                <li class="quiz-answer" data-quiz-answer="b">b. interest </li>
                <li class="quiz-answer" data-quiz-answer="c">c. love</li>
                <li class="quiz-answer" data-quiz-answer="d">d. desire</li>
                <li class="quiz-answer" data-quiz-answer="e">e. greed</li>
              </ul>

              <h2 class="quiz-question">20.) <u>Perpetual</u> custom</h2>
              <ul data-quiz-question="20">
                <li class="quiz-answer" data-quiz-answer="a">a. General </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Common </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Universal</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Endless</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Leading</li>
              </ul>
                <br /><br />
                <b><i>VERBAL RELATIONSHIP (Single-Word Approach)</i></b> <br /><br />
                <b>DIRECTIONS:</b><br /><br />
                In each of the following items, there are three words which are followed by five other words labeled a,b,c,d,e. Choose the word which is <u>related</u> to the third word in the same way as the second is related to the first.<br /><br />
                <br />
                <b>Example:</b>

              <h2 class="quiz-question">21.) Cereal:Corn :: Legume: _______</h2>
              <ul data-quiz-question="21">
                <li class="quiz-answer" data-quiz-answer="a">a. Patola </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Beans </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Rice</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Tomatoes</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Squash</li>
              </ul>  

              <h2 class="quiz-question">22.) Cradele:Swing :: Branch: _______</h2>
              <ul data-quiz-question="22">
                <li class="quiz-answer" data-quiz-answer="a">a. Fall </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Rock </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Sway</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Touch</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Lean</li>
              </ul> 

              <h2 class="quiz-question">23.) Plumber:Pipe :: Mason: _______</h2>
              <ul data-quiz-question="23">
                <li class="quiz-answer" data-quiz-answer="a">a. Wood </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Stone </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Plastic</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Glass</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Clay</li>
              </ul>                                               

              <h2 class="quiz-question">24.) Composure:Self-Control :: Decorum: _______</h2>
              <ul data-quiz-question="24">
                <li class="quiz-answer" data-quiz-answer="a">a. Good manners </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Good physique </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Good grooming</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Good planning</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Good looks</li>
              </ul> 

              <h2 class="quiz-question">25.) Analgestic:relieves pain :: Antiseptic: _______</h2>
              <ul data-quiz-question="25">
                <li class="quiz-answer" data-quiz-answer="a">a. calms nerves </li>
                <li class="quiz-answer" data-quiz-answer="b">b. freshens breath </li>
                <li class="quiz-answer" data-quiz-answer="c">c. kill germs</li>
                <li class="quiz-answer" data-quiz-answer="d">d. stimulates growth</li>
                <li class="quiz-answer" data-quiz-answer="e">e. cures illness</li>
              </ul> 

              <h2 class="quiz-question">26.) Beauty Queen:Crown and Scepter :: Boxing Champion: _______</h2>
              <ul data-quiz-question="26">
                <li class="quiz-answer" data-quiz-answer="a">a. Trophy and sash </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Gloves and trunks </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Medal and plaque</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Belt and purse</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Crown and ring</li>
              </ul> 

              <h2 class="quiz-question">27.) Aquatic:Water :: Terrestrial: _______</h2>
              <ul data-quiz-question="27">
                <li class="quiz-answer" data-quiz-answer="a">a. Planet </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Land </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Air</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Forest</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Microbes</li>
              </ul> 

              <h2 class="quiz-question">28.) Nutritionist:Food :: Paleontologist: _______</h2>
              <ul data-quiz-question="28">
                <li class="quiz-answer" data-quiz-answer="a">a. Fossils </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Antiques</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Races</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Genes</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Ease</li>
              </ul> 
  
              <h2 class="quiz-question">29.) Trip:Journey :: Comfort: _______</h2>
              <ul data-quiz-question="29">
                <li class="quiz-answer" data-quiz-answer="a">a. Mood </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Land</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Strength</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Forest</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Ease</li>
              </ul> 
                  
              <h2 class="quiz-question">30.) Belittle:Praise :: Puzzle: _______</h2>
              <ul data-quiz-question="30">
                <li class="quiz-answer" data-quiz-answer="a">a. Clarify </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Perplex</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Surprise</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Pursue</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Disturb</li>
              </ul> 
                  
              <h2 class="quiz-question">31.) Ice:Freezing :: Dew: _______</h2>
              <ul data-quiz-question="31">
                <li class="quiz-answer" data-quiz-answer="a">a. Drying </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Vaporizing</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Heating</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Condensing</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Cooling</li>
              </ul>                                                       

              <h2 class="quiz-question">32.) Summer:Winter :: Daybreak: _______</h2>
              <ul data-quiz-question="32">
                <li class="quiz-answer" data-quiz-answer="a">a. Morning </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Sunrise</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Dawn</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Sunset</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Evening</li>
              </ul>
                  
              <h2 class="quiz-question">33.) Airport:Porter :: Seaport: _______</h2>
              <ul data-quiz-question="33">
                <li class="quiz-answer" data-quiz-answer="a">a. Stevedore </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Sailor</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Steward</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Conductor</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Captain</li>
              </ul>
                  
              <h2 class="quiz-question">34.) Savor:Flavor :: Aroma: _______</h2>
              <ul data-quiz-question="34">
                <li class="quiz-answer" data-quiz-answer="a">a. Appetite </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Relish</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Smell</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Feel</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Color</li>
              </ul>
                  
              <h2 class="quiz-question">35.) Vertical:Upright :: Oblique: _______</h2>
              <ul data-quiz-question="35">
                <li class="quiz-answer" data-quiz-answer="a">a. Angular </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Circular</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Arched</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Zigzag</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Inclined</li>
              </ul>

              <h2 class="quiz-question">36.) Bravert:Cowardice :: Integrity: _______</h2>
              <ul data-quiz-question="36">
                <li class="quiz-answer" data-quiz-answer="a">a. Uncertainty </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Genuineness</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Corruptability</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Honesty</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Uprightness</li>
              </ul>   

              <h2 class="quiz-question">37.) Airplane:Pilot :: Train: _______</h2>
              <ul data-quiz-question="37">
                <li class="quiz-answer" data-quiz-answer="a">a. Steward </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Engineer</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Conductor</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Purser</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Mechanic</li>
              </ul>   
                  <br /><br />  
                <b><i>(Answer the following items in Filipino in the same manner</i></b> <br />

              <h2 class="quiz-question">38.) PAG-ASA:Panahon :: PAG-IBIG: _______</h2>
              <ul data-quiz-question="38">
                <li class="quiz-answer" data-quiz-answer="a">a. Payuhan </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Pabahay</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Patanim</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Pamuhunan</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Palupa</li>
              </ul>  
  
              <h2 class="quiz-question">39.) Kamay:Palakpak :: Metal: _______</h2>
              <ul data-quiz-question="39">
                <li class="quiz-answer" data-quiz-answer="a">a. Kiskis </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Dagundong</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Pagakpak</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Tagiktik</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Mechanic</li>
              </ul>  
                  
              <h2 class="quiz-question">40.) Karapatan Pulitikal:Pagtatag ng partido :: Karapatang Sibil: _______</h2>
              <ul data-quiz-question="40">
                <li class="quiz-answer" data-quiz-answer="a">a. Magtanggol sa sarili </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Maghalal ng pinuno</li>
                <li class="quiz-answer" data-quiz-answer="c">c. Conductor</li>
                <li class="quiz-answer" data-quiz-answer="d">d. Purser</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Magpatala sa halalan</li>
              </ul>                                      

                <br /><br />
                <b><i>Analogy (Paired Approach)</i></b> <br /><br />
                <b>DIRECTIONS:</b><br /><br />
                Each item consists of a pair of words which relate to each other in certain way. Below the item are five other pairs labeled a,b,c,d,e. Choose the letter which <u>relates to each other </u>in the same way as the words in the original pair<br /><br />
                <br />
                <b>Example:</b>                  

              <h2 class="quiz-question">41.) Crayon : Coloring :: _______ : _______</h2>
              <ul data-quiz-question="41">
                <li class="quiz-answer" data-quiz-answer="a">a. Varnish : Polishing </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Relish: ?? </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Machine : Duplicating </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Cloth : Patching</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Paper : Printing</li>
              </ul> 
                  
              <h2 class="quiz-question">42.) Skin : Hair :: _______ : _______</h2>
              <ul data-quiz-question="42">
                <li class="quiz-answer" data-quiz-answer="a">a. Lap : Mouth </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Nail: Finger </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Gum : Teeth </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Leg : Knee</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Hand : Palm</li>
              </ul>                                     

              <h2 class="quiz-question">43.) Wage : Laborer :: _______ : _______</h2>
              <ul data-quiz-question="43">
                <li class="quiz-answer" data-quiz-answer="a">a. Honorarium : Honorea </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Donation: Beneficiary </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Contribution : Volunteer </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Pension : Retiree</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Inheritance : Heir</li>
              </ul>  
                  
              <h2 class="quiz-question">44.) Helmet : Head :: _______ : _______</h2>
              <ul data-quiz-question="44">
                <li class="quiz-answer" data-quiz-answer="a">a. Socks : Feet </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Bandage: Arm </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Girdle : Waist </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Spectacles : Eye</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Armor : Bodyt</li>
              </ul>  
                  
              <h2 class="quiz-question">45.) Clock : Time :: _______ : _______</h2>
              <ul data-quiz-question="45">
                <li class="quiz-answer" data-quiz-answer="a">a. Book : Memoir </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Seismograph: Tremor </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Diary : Event </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Vane : Direction</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Distance : Lane</li>
              </ul>  
                  
              <h2 class="quiz-question">46.) Express : Restrain :: _______ : _______</h2>
              <ul data-quiz-question="46">
                <li class="quiz-answer" data-quiz-answer="a">a. Observe : Watch </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Reduce: Reject </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Excite : Stimulate </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Propose : Arrange</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Elevate : Depress</li>
              </ul>    
                  
              <h2 class="quiz-question">47.) Composer : Song :: _______ : _______</h2>
              <ul data-quiz-question="47">
                <li class="quiz-answer" data-quiz-answer="a">a. Photographer : Picture </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Musician : Melody </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Artist : Drama </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Sculptor : Model</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Painter : Canvass</li>
              </ul>                                       

              <h2 class="quiz-question">48.) Illuminate : Darken :: _______ : _______</h2>
              <ul data-quiz-question="48">
                <li class="quiz-answer" data-quiz-answer="a">a. Suffice : Refuse </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Deploy : Display </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Implement : Provide </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Dehydrate : Soak</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Intrude : Emphasize</li>
              </ul>  

              <h2 class="quiz-question">49.) Peaceable : Amicably :: _______ : _______</h2>
              <ul data-quiz-question="49">
                <li class="quiz-answer" data-quiz-answer="a">a. Habitually : Regularly </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Usually : Currently </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Normally : Specifically </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Generally : Particularly</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Ordinarilly : Originally</li>
              </ul>   
                  
              <h2 class="quiz-question">50.) Fantastic : Common :: _______ : _______</h2>
              <ul data-quiz-question="50">
                <li class="quiz-answer" data-quiz-answer="a">a. Lofty : Excellent </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Imaginary : Actual </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Festive : Lively </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Docile : Obedient</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Harmonic : Melodious</li>
              </ul>   
                  
              <h2 class="quiz-question">51.) Crocheting : Hook :: _______ : _______</h2>
              <ul data-quiz-question="51">
                <li class="quiz-answer" data-quiz-answer="a">a. Patching : Design </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Tatting : Thread </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Weaving : Fabric </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Knitting : Needle</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Stitching : Frame</li>
              </ul>   
                                                                        
              <h2 class="quiz-question">52.) Ignition : Spark :: _______ : _______</h2>
              <ul data-quiz-question="52">
                <li class="quiz-answer" data-quiz-answer="a">a. Circulation : Air </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Precipitation : Rain </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Oxidation : Rust </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Irrigation : Water</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Coloration : Stain</li>
              </ul>   
                  
              <h2 class="quiz-question">53.) Scuba : Divers :: _______ : _______</h2>
              <ul data-quiz-question="53">
                <li class="quiz-answer" data-quiz-answer="a">a. Ball : Athletes </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Compass : Mariners </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Hose : Gardeners </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Trapeze : Acrobats</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Pipe : Carpenters</li>
              </ul>                                       
                    
              <h2 class="quiz-question">54.) Teeth : Tartar :: _______ : _______</h2>
              <ul data-quiz-question="54">
                <li class="quiz-answer" data-quiz-answer="a">a. Foot : Callous </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Skin : Freckle </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Festive : Lively </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Face : Acne</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Harmonic : Melodious</li>
              </ul>        
                                    
              <h2 class="quiz-question">55.) Wizard : Magic :: _______ : _______</h2>
              <ul data-quiz-question="55">
                <li class="quiz-answer" data-quiz-answer="a">a. Chef : Food </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Virtuoso : Music </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Neophyte : Training </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Apprentice : Job</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Artist : Craft</li>
              </ul>        
                  
              <h2 class="quiz-question">56.) Insigma : Authority :: _______ : _______</h2>
              <ul data-quiz-question="56">
                <li class="quiz-answer" data-quiz-answer="a">a. Crown : Victory </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Siren : Sound </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Blinker : Light </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Wave : Welcome</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Salute : Parade</li>
              </ul>        
                                                      
              <h2 class="quiz-question">57.) Birds : Chirp :: _______ : _______</h2>
              <ul data-quiz-question="57">
                <li class="quiz-answer" data-quiz-answer="a">a. Cattle : Ruminate </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Rats : Gnaw </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Dogs : Wag </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Horses : Gallop</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Sheep : Bleat</li>
              </ul>        

              <h2 class="quiz-question">58.) Egg : Shell :: _______ : _______</h2>
              <ul data-quiz-question="58">
                <li class="quiz-answer" data-quiz-answer="a">a. Fly : Wing </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Larva : Cocoon </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Bee : Flower </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Earthworm : Soil</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Ant : Hill</li>
              </ul>        

                  <br /><br />  
                <b><i>(Answer the following items in Filipino in the same manner</i></b> <br />

              <h2 class="quiz-question">59.) Haplusin : Kuskusin :: _______ : _______</h2>
              <ul data-quiz-question="59">
                <li class="quiz-answer" data-quiz-answer="a">a. Pahiran : Lagyan </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Dagdagan : Bawasan </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Pigilan : Bayaan </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Alisin : Walisin</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Dampian : Punasan</li>
              </ul>  
  

              <h2 class="quiz-question">60.) Tungkulin : Gampanan :: _______ : _______</h2>
              <ul data-quiz-question="60">
                <li class="quiz-answer" data-quiz-answer="a">a. Pangako : Limutin </li>
                <li class="quiz-answer" data-quiz-answer="b">b. Payo : Isipin </li>
                <li class="quiz-answer" data-quiz-answer="c">c. Tuntunin : Sundin </li>
                <li class="quiz-answer" data-quiz-answer="d">d. Utos : Liwanagin</li>
                <li class="quiz-answer" data-quiz-answer="e">e. Habilin : Sabihin</li>
              </ul> 
                                     
                 <div class="one_col">
                    <%--<input type="button" OnClick="proceed_Submit" id="proceed" value="Submit"></input>--%>
                    <asp:Button ID="submit" runat="server" Text="Submit" type="button" OnClick="proceed_Submit" />
                    <%--<asp:Button ID="submit" runat="server" Text="Submit" type="button" OnClick="proceed_Submit" UseSubmitBehavior="false" OnClientClick="this.disabled='true';this.value='Submitted'" />--%>
                </div>                                                                                                                                                                                                                                                                                             
              </div>

        </form> 

<%--    <div class="quiz-result"></div>--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="JS/Exam.js"></script>
</body>
</html>
