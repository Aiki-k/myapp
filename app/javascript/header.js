
window.addEventListener('load',() => {
  i = i + 1
  const aaa = document.getElementsByClassName("text")[0];
  aaa.addEventListener('mousemove', () => {
    aaa.style.color = "red"
    aaa.shadowBlur = 0;
  });
  aaa.addEventListener('mouseout', () => {
    aaa.style.color = "black"
  });
});


    // console.log("クリックされました");


