$(document).ready(function () {
    getNext();

    var newQuote;
    var newAuthor;

    function getNext() {
        $.ajax({
            url: 'https://api.forismatic.com/api/1.0/',
            jsonp: 'jsonp',
            dataType: 'jsonp',
            data: {
                method: 'getQuote',
                lang: 'en',
                format: 'jsonp'
            },
            success: function (res) {
                newQuote = res.quoteText;
                newAuthor = res.quoteAuthor;
                $('.quote').html(newQuote);
                $('.author').html(newAuthor);
            }
        });

    }

    $(".qBtn").on("click", function () {
        getNext();
    });

    $(".twBtn").on("click", function () {
        window.open("https://twitter.com/intent/tweet?text=" + "\"" + newQuote + "\"" + "  --" + newAuthor)
    });
});