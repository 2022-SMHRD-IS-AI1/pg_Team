<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>ZingSoft Demo</title>
  <script nonce="undefined" src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <style>
    .zc-body {
      background: #252d47;
    }

    /* Tablet: Portrait+ */

    @media screen and (min-width: 768px) {
      .zc-demo {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
      }
    }

    .zc-ref {
      display: none;
    }
  </style>
</head>

<body class="zc-body">

  <div class="zc-demo">
    <section id="chart1"></section>
  </div>

  <a href="https://www.zingchart.com/" rel="noopener" class="zc-ref">Powered by ZingChart</a>
	
  <script>
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "b55b025e438fa8a98e32482b5f768ff5"]; // DEFINE CHART LOCATIONS (IDS)
    // -----------------------------
    // Main chart render location
    let chart1Id = 'chart1';

    // Constants
    let white = '#fff';
    let transparent = 'transparent';
    let lightBlue = '#53688b';
    let lightPink = '#c3a9c6';
    let lightGreen = '#82ebc1';

    // CHART CONFIG
    // -----------------------------

    // Chart 1
    let chart1Data = {
                type: 'radar',
                globals: {
                    fontFamily: 'Nunito',
                },
                backgroundColor: transparent,
                title: {
                    text: 'Body Index',
                    align: 'center',
                    fontColor: white,
                    
                },
                legend: {
                    backgroundColor: transparent,
                    borderWidth: '0px',
                    align: 'center',
                    margin: '60px 0px 0px 0px',
                    marker: {
                        type: 'circle',
                        borderWidth: '0px',
                    },
                    x: '16px',
                    y: '48px',
                },
                plot: {
                    aspect: 'area',
                    alphaArea: '.6',
                },
                scaleK: {
                    labels: [
                        'BMI',
                        'RFM',
                        'BAI',
                        'WHR',
                        'WHTH',
                    ],
                    item: {
                        fontColor: white,
                    },
                    guide: {
                        lineStyle: 'solid',
                        lineColor: white,
                        backgroundColor: transparent,
                    },
                    tick: {
                        lineColor: white,
                    },
                },
                scaleV: {
                    guide: {
                        backgroundColor: transparent,
                        lineColor: white,
                        lineStyle: 'solid',
                    },
                    item: {
                        visible: false,
                    },
                },
                plotarea: {
                    margin: '0px 0px 0px 20px',
                },
                series: [{
                    text: 'last month',
                    values: [16, 20, 24, 20, 16],
                    backgroundColor: lightBlue,
                    lineColor: lightBlue,
                    legendItem: {
                        fontColor: lightBlue,
                    },
                },
                {
                    text: 'current month',
                    values: [24, 14, 20, 16, 24],
                    backgroundColor: lightPink,
                    lineColor: lightPink,
                    legendItem: {
                        fontColor: lightPink,
                    },
                },
                ],
            };

    // RENDER CHARTS
    // -----------------------------

    // Chart 1
    zingchart.render({
      id: chart1Id,
      data: chart1Data,
      height: '450px',
      width: '100%',
    });
    
  </script>
  
</body>

</html>
