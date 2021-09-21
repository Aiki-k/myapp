// function createCheck() {
//   const creates = document.getElementById("check-btn");
//   creates.forEach(function (create) {
//     create.addEventListener("click",(e) => {
//       // const formData = new formData(document.getElementById("check-btn"));
//       const XHR = new XMLHttpRequest;
//       XHR.open("POST", "/checks", true);
//       XHR.responseType = "json";
//       XHR.send();

//       XHR.onload = () => {
//         if (XHR.status != 200) {
//           alert(`Error ${XHR.status}: ${XHR.statusText}`);
//           return null;
//         }

//         const bbb = XHR.response.create
        
//       };
//     });
//   });
// }

// window.addEventListener("load", createCheck);