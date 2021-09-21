window.addEventListener('load', () => {
  const btn1 = document.getElementById("btn1");
  const btn2 = document.getElementById("btn2");
  const btn3 = document.getElementById("btn3");
  const btn4 = document.getElementById("btn4");
  for (let i = 1; i < 5; i++) {
    window['btn' + i].addEventListener('mousemove',() => {
      window['btn' + i].style.color = "red"
    });
    window['btn' + i].addEventListener('mouseout',() => {
      window['btn' + i].style.color = "black"
    });
  };

  const showLink = document.querySelectorAll(".show-link");
  const tweetTitle = document.getElementById("tweet-title");
  for (let x = 1; x < 2; x++) {
    showLink.addEventListener('mousemove',() => {
      tweetTitle.style.color = "lightblue"
    });
    showLink.addEventListener('mouseout',() => {
      tweetTitle.style.color = "black"
    });
  }
});

window.addEventListener('load', () => {

});

document.addEventListener("DOMContentLoaded", function() {
  const check = document.getElementById("check");
  check.onclick = function() {
    let name = prompt('あなたの名前は何ですか？');
    alert('こんにちは、' + name + 'さん、初めまして！');
  };
});