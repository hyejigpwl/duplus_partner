/**
 * Theme: Metrica - Responsive Bootstrap 4 Admin Dashboard
 * Author: Mannatthemes
 * Dashboard Js
 */

// TODO �ѱ۱����� ���ľ���

// https://apexcharts.com/docs/chart-types/radialbar-gauge/ < - docs
// https://apexcharts.com/docs/options/ < -docs ���� �ɼ�... �̰� �ѹ�����

var CircleChart = (function (color1, color2, startLength, length) {
 
    optionsCircle =  {
        chart: {
            id: "circlechart2",
            type: 'radialBar',
            height: 280,
            // �׷��� ��ġ
            /*offsetY: -30,
            offsetX: 20*/
        },
        plotOptions: {
            radialBar: {
                inverseOrder: true, // �ø��� ù ��° ���� ����, �ٱ��ʿ� ������ ����
                //fill: '#FFFFFF',
                hollow: { // �ö� ������
                    margin: 5,
                    size: '55%', // �������� �����
                    background: 'transparent',
                },
                track: { // �������� ����(������� ���� ����)
                    show: true,
                    background: '#ddd', // �������� ���� ����
                    strokeWidth: '100%', // ������ ������ ȸ�� �β�
                    opacity: 1,
                    margin: 5, // margin is in pixels
                },
                dataLabels: {
                    show: true,
                    // ���콺 ��� �ش� ������ ������ ������ �װ�
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
                        // ����. �׷��� �̰� �Ƚ���� �⺻������ ������ �������.
                        // �⺻���� �ø��� ���̷� ���� ��� �ø��� ������� �հ��Դϴ�.
                        formatter: function (w) {
                            // formatter ���� w �� a, b �� �˾ƺ��� Ȯ���ϱ�...
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
        series: [0, 0], // ��Ʈ ��
        labels: [startLength + ' / ' + length, 'Total'],
        colors: [color1, color2], // ��� �ؽ�Ʈ, �Ʒ� �� ����
        legend: {
            // ����� ���ۼ�Ʈ �ö����� �ؽ�Ʈ...
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
                //gradientToColors: ['black', 'red', '#ff0080'] // ������ �׶��̼�
            },
            colors: [color1, color2], // ������ ����
        },
        stroke: {
            lineCap: 'round'
        },
    }

    var chartCircle = new ApexCharts(document.querySelector("#circlechart2"), optionsCircle);

    chartCircle.render();


    return chartCircle;
});