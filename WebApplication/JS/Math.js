var Results;
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

        var numberOfCorrectAnswers = Math.floor(((numberOfCorrectAnswers / 20) * 100));
        if (numberOfCorrectAnswers <= 15) {
            Results = 'Poor';
            return { code: 'bad', text: 'Poor ' };
        }
        else if ((numberOfCorrectAnswers >= 16) && (numberOfCorrectAnswers <= 36)) {
            Results = 'Below Average';
            return { code: 'belowAve', text: 'Below Average' };
        }
        else if (numberOfCorrectAnswers > 36 && numberOfCorrectAnswers < 66) {
            Results = 'Average';
            return { code: 'ave', text: 'Average ' };
        }
        else if (numberOfCorrectAnswers > 65 && numberOfCorrectAnswers < 86) {
            Results = 'Above Average';
            return { code: 'aboveAve', text: 'Above Average ' };
        }
        else if (numberOfCorrectAnswers > 85) {
            Results = 'Outstanding';
            return { code: 'good', text: 'Outstanding' };
        }
    }
    this._isComplete = function () {
        var clicked = false;
        var answersComplete = 0;
        $(document).on('click', 'input', function () {
            self._calcResult();
            //console.log(Results);
            $('.quiz-answer').off('click');
            document.getElementById('hdnField').value = Results;
            clicked = true;
        });
        if (clicked == false) {
            $('ul[data-quiz-question]').each(function () {
                if ($(this).find('.quiz-answer.active').length) {
                    answersComplete++;
                    //console.log(answersComplete);
                }
            });
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
