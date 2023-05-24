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

// Date(YYYY-MM-DD) + n일
function StringToDate(date, n) {
	let yyyy = date.substring(0, 4);
	let mm = date.substring(5, 7);
	let dd = date.substring(8, 10);
	mm = Number(mm) - 1;
    
	let stringNewDate = new Date(yyyy, mm, dd);
	stringNewDate.setDate(stringNewDate.getDate() + n);
    
	return stringNewDate.getFullYear() +
		"-" + ((stringNewDate.getMonth() + 1) > 9 ? (stringNewDate.getMonth() + 1).toString() : "0" + (stringNewDate.getMonth() + 1)) +
		"-" + (stringNewDate.getDate() > 9 ? stringNewDate.getDate().toString() : "0" + stringNewDate.getDate().toString());
}

function dateCalculator(date, n) {
	return new Date(date.setDate(date.getDate() + n));
}

function dateFormat(date) {
	let dateFormat2 = date.getFullYear() +
		'-' + ( (date.getMonth()+1) < 9 ? "0" + (date.getMonth()+1) : (date.getMonth()+1) )+
		'-' + ( (date.getDate()) < 9 ? "0" + (date.getDate()) : (date.getDate()) );
	return dateFormat2;
}


//콤마찍기
function comma(str) {
  str = String(str);
  return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

//콤마풀기
function uncomma(str) {
  str = String(str);
  return str.replace(/[^\d]+/g, '');
}


// let curDateYYMMDD = today.getFullYear() +
// 	'-' + ( (today.getMonth()+1) < 9 ? "0" + (today.getMonth()+1) : (today.getMonth()+1) )+
// 	'-' + ( (today.getDate()) < 9 ? "0" + (today.getDate()) : (today.getDate()) );