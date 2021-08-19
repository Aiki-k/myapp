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
});