// function check() {
//   const tweets = document.querySelectorAll(".check-btn");
//   tweets.forEach(function (tweet) {
//     tweet.addEventListener("click", () => {
//       // const tweetId = tweet.getAttribute("data-id");
//       const XHR = new XMLHttpRequest();
//       XHR.open("POST",`/posts`, true);
//       XHR.responseType = "json";
//       XHR.send();



//       XHR.onload = () => {
//         if (XHR.status != 200) {
//           alert(`Error ${XHR.status}: ${XHR.statusText}`);
//           return null;
//         };
//         const item = XHR.response.tweet;
//         if (item.checked === true) {
//           tweet.setAttribute("data-check", "true");
//         }else if (item.checked === false) {
//           tweet.removeAttribute("data-check");
//         };
//       };
//     });
//   });
// }

// window.addEventListener("load", check);
