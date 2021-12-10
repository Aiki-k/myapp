window.addEventListener('load', () => {
  const btn1 = document.getElementById("btn1");
  const btn2 = document.getElementById("btn2");
  for (let i = 1; i < 3; i++) {
    window['btn' + i].addEventListener('mousemove',() => {
      window['btn' + i].style.color = "red"
    });
    window['btn' + i].addEventListener('mouseout',() => {
      window['btn' + i].style.color = "#0077dd"
    });
  };
});
