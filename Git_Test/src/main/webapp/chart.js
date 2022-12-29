

var mychart = $("#line-chart");
var myLineChart = new Chart(mychart, {
	type: "line",
	data: {
		labels: ["서연", "세빈", "성용", "윤제", "건우"],
		datasets: [{
			label: "피지컬 갤러리1",
			data: [9, 10, 8, 9, 10]
		}, {
			label: "피지컬 갤러리2",
			data: [5, 3, 2, 4, 1]
		}]
	}
});
