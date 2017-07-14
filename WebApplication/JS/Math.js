var Results;
var Flag;
var Quiz = function () {
    var self = this;
    this.init = function () {
        self._bindEvents();
    }
    //replace answer with correct answer key
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
            }
        });
        var tempResults = numberOfCorrectAnswers;

        var numberOfCorrectAnswers = Math.floor(((numberOfCorrectAnswers / 20) * 100));
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
        Flag = false;
        var answersComplete = 0;
        $(document).on('click', 'input', function () {
            self._calcResult();
            $('.quiz-answer').off('click');
            document.getElementById('hdnField').value = Results;
            Flag = true;

        });
        if (Flag == false) {
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

var clicked = sessionStorage.getItem('clicked');
console.log(clicked + "CLICKED NI");
if (clicked === 'true') {
    $('.quiz-answer').off('click');
    document.getElementById("submit").disabled = true;
}
else {
    var quiz = new Quiz();
    quiz.init();
}


function checkForm(form) {
    if (Flag === true) {
        sessionStorage.setItem('clicked', 'true');
        alert("Answer Submitted. You may close this after.");
    }

}
