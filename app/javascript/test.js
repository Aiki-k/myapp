$(function(){
  $(".check-btn").on("click", function(){
    const tweets = document.querySelectorAll(".new_link");
    tweets.forEach(function(tweet){
        const tweetId = document.getElementById("tweet_id");
        const userId = document.getElementById("current_user_id");
        $.ajax({
          url: "/post", //指定したアクションに送る
          type: "POST",
          dataType: "json",
          async: true,
          data: {
            tweet_id: tweetId.value,
            user_id: userId.value
          },
        })
        .done(function(data){
          console.log("hello")
        })
    });
  });
});

// window.addEventListener("load", )
