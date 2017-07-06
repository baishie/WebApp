var Results;
var Flag;
var Quiz = function () {
    var self = this;
    this.init = function () {
        self._bindEvents();
    }

    this.correctAnswers = [
      { question: 1, answer: 'a' },
      { question: 2, answer: 'a' },
      { question: 3, answer: 'a' },
      { question: 4, answer: 'a' },
      { question: 5, answer: 'a' },
      { question: 6, answer: 'a' },
      { question: 7, answer: 'a' },
      { question: 8, answer: 'a' },
      { question: 9, answer: 'a' },
      { question: 10, answer: 'a' },
      { question: 11, answer: 'a' },
      { question: 12, answer: 'a' },
      { question: 13, answer: 'a' },
      { question: 14, answer: 'a' },
      { question: 15, answer: 'a' },
      { question: 16, answer: 'a' },
      { question: 17, answer: 'a' },
      { question: 18, answer: 'a' },
      { question: 19, answer: 'a' },
      { question: 20, answer: 'a' },
      { question: 21, answer: 'a' },
      { question: 22, answer: 'a' },
      { question: 23, answer: 'a' },
      { question: 24, answer: 'a' },
      { question: 25, answer: 'a' },
      { question: 26, answer: 'a' },
      { question: 27, answer: 'a' },
      { question: 28, answer: 'a' },
      { question: 29, answer: 'a' },
      { question: 30, answer: 'a' },
      { question: 31, answer: 'a' },
      { question: 32, answer: 'a' },
      { question: 33, answer: 'a' },
      { question: 34, answer: 'a' },
      { question: 35, answer: 'a' },
      { question: 36, answer: 'a' },
      { question: 37, answer: 'a' },
      { question: 38, answer: 'a' },
      { question: 39, answer: 'a' },
      { question: 40, answer: 'a' },
      { question: 41, answer: 'a' },
      { question: 42, answer: 'a' },
      { question: 43, answer: 'a' },
      { question: 44, answer: 'a' },
      { question: 45, answer: 'a' },
      { question: 46, answer: 'a' },
      { question: 47, answer: 'a' },
      { question: 48, answer: 'a' },
      { question: 49, answer: 'a' },
      { question: 50, answer: 'a' },
      { question: 51, answer: 'a' },
      { question: 52, answer: 'a' },
      { question: 53, answer: 'a' },
      { question: 54, answer: 'a' },
      { question: 55, answer: 'a' },
      { question: 56, answer: 'a' },
      { question: 57, answer: 'a' },
      { question: 58, answer: 'a' },
      { question: 59, answer: 'a' },
      { question: 60, answer: 'a' },

    ]

    this._pickAnswer = function ($answer, $answers) {
        $answers.find('.quiz-answer').removeClass('active');
        $answer.addClass('active');
    }
    this._calcResult = function () {
        var numberOfCorrectAnswers = 0;
        $('ul[data-quiz-question]').each(function (i) {
            var $this = $(this),
                chosenAnswer = $this.find('.quiz-answer.active').data('quiz-answer'),
                correctAnswer;

            for (var j = 0; j < self.correctAnswers.length; j++) {
                var a = self.correctAnswers[j];
                if (a.question == $this.data('quiz-question')) {
                    correctAnswer = a.answer;
                }
            }

            if (chosenAnswer == correctAnswer) {
                numberOfCorrectAnswers++;

                // highlight this as correct answer
                //$this.find('.quiz-answer.active').addClass('correct');
            }
            //else {
            //    $this.find('.quiz-answer[data-quiz-answer="' + correctAnswer + '"]').addClass('correct');
            //    $this.find('.quiz-answer.active').addClass('incorrect');
            //}
        });
        var tempResults = numberOfCorrectAnswers;

        var numberOfCorrectAnswers = Math.floor(((numberOfCorrectAnswers / 60) * 100));
        console.log(numberOfCorrectAnswers);
        if (numberOfCorrectAnswers <= 15) {
            Results = 'Poor';
        }
        else if ((numberOfCorrectAnswers >= 16) && (numberOfCorrectAnswers <= 36)) {
            Results = 'Below Average';
        }
        else if (numberOfCorrectAnswers > 36 && numberOfCorrectAnswers < 66) {
            Results = 'Average';
        }
        else if (numberOfCorrectAnswers > 65 && numberOfCorrectAnswers < 86) {
            Results = 'Above Average';
        }
        else if (numberOfCorrectAnswers > 85) {
            Results = 'Outstanding';
        }
    }
    this._isComplete = function () {
        Flag= false;
        var answersComplete = 0;
        $(document).on('click', 'input',  function () {
            self._calcResult();
            $('.quiz-answer').off('click');
            document.getElementById('hdnField').value = Results;
            Flag = true; 
            
        });
        if(Flag == false) {
            $('ul[data-quiz-question]').each(function () {
                if ($(this).find('.quiz-answer.active').length) {
                    answersComplete++;
                    //console.log(answersComplete);
                }
            });
            console.log("FALSE");
            return false;
        }

    }
    this._showResult = function (result) {
        $('.quiz-result').addClass(result.code).html(result.text);
    }
    this._bindEvents = function () {
        $('.quiz-answer').on('click', function () {
            var $this = $(this),
                $answers = $this.closest('ul[data-quiz-question]');
            self._pickAnswer($this, $answers);

            if (self._isComplete()) {
            }
        });
    }
}


var quiz = new Quiz();
quiz.init();

function checkForm(form) {

    if (Flag === true) {
        alert("Submitted!");
        window.close();
    }

}
