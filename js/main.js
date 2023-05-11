//파일사이즈 형식 바꾸기
function byteCalculation(bytes) {
  var bytes = parseInt(bytes);

  var s = ["bytes", "KB", "MB", "GB", "TB", "PB"];

  var e = Math.floor(Math.log(bytes) / Math.log(1024));

  if (e == "-Infinity") {
    return "0 " + s[0];
  } else {
    return (bytes / Math.pow(1024, Math.floor(e))).toFixed(2) + " " + s[e];
  }
}
