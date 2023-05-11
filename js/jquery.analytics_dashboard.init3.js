/**
 * Theme: Metrica - Responsive Bootstrap 4 Admin Dashboard
 * Author: Mannatthemes
 * Dashboard Js
 */

// TODO 한글깨져서 고쳐야함

// https://apexcharts.com/docs/chart-types/radialbar-gauge/ < - docs
// https://apexcharts.com/docs/options/ < -docs 에서 옵션... 이거 한번보기

var CircleChart = (function (color1, color2, startLength, length) {
 
    optionsCircle =  {
        chart: {
            id: "circlechart2",
            type: 'radialBar',
            height: 280,
            // 그래프 위치
            /*offsetY: -30,
            offsetX: 20*/
        },
        plotOptions: {
            radialBar: {
                inverseOrder: true, // 시리즈 첫 번째 값을 안쪽, 바깥쪽에 놓을지 여부
                //fill: '#FFFFFF',
                hollow: { // 올라갈 게이지
                    margin: 5,
                    size: '55%', // 높을수록 얇아짐
                    background: 'transparent',
                },
                track: { // 게이지의 바탕(진행되지 않은 영역)
                    show: true,
                    background: '#ddd', // 게이지의 바탕 색깔
                    strokeWidth: '100%', // 게이지 바탕의 회색 두께
                    opacity: 1,
                    margin: 5, // margin is in pixels
                },
                dataLabels: {
                    show: true,
                    // 마우스 대면 해당 게이지 정보가 나오는 그거
                    name: {
                        fontSize: '18px',
                        color: color1,
                    },
                    value: {
                        fontSize: '25px',
                        color: color1,
                    },
                    total: {
                        fontSize: '20px',
                        color: "#B5B2FF",
                        show: true,
                        //label: 'Total',
                        label: '',
                        useSeriesColors: true,
                        // 포맷. 그런데 이거 안써놔도 기본값으로 총합을 계산해줌.
                        // 기본값은 시리즈 길이로 나눈 모든 시리즈 백분율의 합계입니다.
                        formatter: function (w) {
                            // formatter 에서 w 랑 a, b 값 알아봐서 확인하기...
                            return w.globals.seriesTotals.reduce((a, b) => {

                                //return a + b
                                return b
                            //}, 0) / w.globals.series.length + '%'
                            }, 0)  + '%'
                        }
                    },
                }
            },
        },
        series: [0, 0], // 차트 값
        labels: [startLength + ' / ' + length, 'Total'],
        colors: [color1, color2], // 가운데 텍스트, 아래 ● 색깔
        legend: {
            // 어느게 몇퍼센트 올랐는지 텍스트...
            show: true,
            position: 'bottom',
            offsetX: -40,
            offsetY: -5,
            formatter: function (val, opts) {
                //return opts.w.globals.series[opts.seriesIndex] + " - " + val
                return val + " : " + opts.w.globals.series[opts.seriesIndex] + '%'
            },
            /*labels: {
                useSeriesColors: true,
            },*/
        },
        fill: {
            type: 'gradient',
            gradient: {
                shade: 'dark',
                type: 'horizontal',
                shadeIntensity: 0.5,
                inverseColors: true,
                opacityFrom: 1,
                opacityTo: 1,
                stops: [0, 100],
                //gradientToColors: ['black', 'red', '#ff0080'] // 게이지 그라데이션
            },
            colors: [color1, color2], // 게이지 색깔
        },
        stroke: {
            lineCap: 'round'
        },
    }

    var chartCircle = new ApexCharts(document.querySelector("#circlechart2"), optionsCircle);

    chartCircle.render();


    return chartCircle;
});