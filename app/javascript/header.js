window.addEventListener('load',() => {
  const btn1 = document.getElementById("btn1");
  const btn2 = document.getElementById("btn2");
  const btn3 = document.getElementById("btn3");
  const btn4 = document.getElementById("btn4");
  btn1.addEventListener('mousemove',() => {
    btn1.style.color = "red"
  });
  btn1.addEventListener('mouseout',() => {
    btn1.style.color = "black"
  });
  btn2.addEventListener('mousemove',() => {
    btn2.style.color = "red"
  });
  btn2.addEventListener('mouseout',() => {
    btn2.style.color = "black"
  });
  btn3.addEventListener('mousemove',() => {
    btn3.style.color = "red"
  });
  btn3.addEventListener('mouseout',() => {
    btn3.style.color = "black"
  });
  btn4.addEventListener('mousemove',() => {
    btn4.style.color = "red"
  });
  btn4.addEventListener('mouseout',() => {
    btn4.style.color = "black"
  });
});
