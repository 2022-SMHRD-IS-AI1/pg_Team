<html class="zc-html">

<head>
  <meta charset="utf-8">
  <title></title>
  <script nonce="undefined" src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <style>
    .chart--container {
      height: 100%;
      width: 100%;
      min-height: 600px;
    }

    .zc-ref {
      display: none;
    }
  </style>
</head>
​

<body class="zc-body">
  ​
  <div id="myChart" class="chart--container">
    <a href="https://www.zingchart.com/" rel="noopener" class="zc-ref"></a>
  </div>

  <script>
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "b55b025e438fa8a98e32482b5f768ff5"]; // HELPER METHODS
    // -----------------------------
    window.plot_jsRule = (p) => {
      return {
        backgroundColor: barColors[p.plotindex][p.nodeindex],
        fontColor: p.nodeindex > 3 ? '#fff' : '#000',
      };
    };

    // DEFINE DATA
    // -----------------------------
    let barColors = [
      [
        '#F1D4D4',
        '#E3A9A9',
        '#D67F7F',
        '#C85454',
        '#BA2929',
        '#8C1F1F',
        '#631515',
        '#4a1111',
      ],
      [
        '#DFD9E2',
        '#BFB4C5',
        '#9F8EA7',
        '#7F698A',
        '#5F436D',
        '#523a5f',
        '#3e2c48',
        '#2e2135',
      ],
      [
        '#CCFFE5',
        '#99FFCC',
        '#66FFB2',
        '#33FF99',
        '#00FF80',
        '#00CC66',
        '#00994C',
        '#003319',
      ],
      [
        '#D4E9F3',
        '#A9D4E6',
        '#7DBEDA',
        '#52A9CD',
        '#2793C1',
        '#1D6E91',
        '#175773',
        '#124256',
      ],
    ];

    let legendColors = [
      '#D3D3D3',
      '#A7A7A7',
      '#929292',
      '#808080',
      '#6b6b6b',
      '#4c4c4c',
      '#1f1f1f',
      '#000',
    ];

    // CHART CONFIG
    // -----------------------------
    let chartConfig = {
      type: 'bar',
      backgroundColor: '#E0E0E0',
      clustered: true,
      title: {
        text: 'My Body History',
        padding: '0px',
        fontColor: '#606060',
        fontSize: '25px',
        fontWeight: 'bold',
        textAlign: 'center',
      },
      
      legend: {
        padding: '0px',
        borderWidth: '0px',
        item: {
          fontColor: '#222',
          fontSize: '14px',
          fontWeight: 'bold',
        },
        layout: 'x4',
        marker: {
          size: '8px',
        },
        offsetY: '40px',
        toggleAction: 'disabled',
      },
      plot: {
        valueBox: {
          fontColor: '#000',
          fontSize: '12px',
          offsetY: '5px',
          placement: 'top',
        },
        barWidth: '90%',
        jsRule: 'plot_jsRule()',
      },
      plotarea: {
        margin: '90px 40px 50px 40px',
      },
      scaleX: {
        values: ['Height', 'Mass', 'Waist', 'Hip'],
        item: {
          fontColor: '#000',
          fontSize: '16px',
          fontWeight: 'bold',
          textAlign: 'center',
        },
        lineWidth: '2px',
        maxItems: 99,
        tick: {
          visible: false,
        },
      },
      scaleY: {
        values: '0:210:10',
        item: {
          fontColor: '#7A7A7A',
        },
        lineWidth: '0px',
        maxValue: 210,
        minValue: 0,
        tick: {
          visible: false,
        },
      },
      tooltip: {
          text: '%plot-text',
          color: '#000',
          fontSize: '19px',
          fontWeight: 'bold',
          jsRule: 'plot_jsRule()',
        },
      series: [{
          text: 'Date 2022.1',
          values: [165.3 , 165.1 , 165.3 , 164.9 , 165.1 , 164.8 , 165.2 , 165.1 , 165.3 ],
          clustered: true,
          legendMarker: {
            backgroundColor: legendColors[0],
          },
        },
        {
          text: 'Date 2022.2',
          values: [67, 65, 64, 63, 61, 62, 61, 59, 57],
          clustered: true,
          legendMarker: {
            backgroundColor: legendColors[1],
          },
        },
        {
          text: 'Date 2022.3',
          values: [88, 85, 83, 82, 79, 81, 79, 76, 74],
          clustered: true,
          legendMarker: {
            backgroundColor: legendColors[2],
          },
        },
        {
          text: 'Date 2022.4',
          values: [102, 100, 98, 97, 95, 96, 95, 94, 93],
          clustered: true,
          legendMarker: {
            backgroundColor: legendColors[3],
          },
        },
        {
          text: 'Date 2022.5',
          values: [],
          legendMarker: {
            backgroundColor: legendColors[4],
          },
        },
        {
          text: 'Date 2022.6',
          values: [],
          legendMarker: {
            backgroundColor: legendColors[5],
          },
        },
        {
          text: 'Date 2022.7',
          values: [],
          legendMarker: {
            backgroundColor: legendColors[5],
          },
        },
        {
          text: 'Date 2022.8',
          values: [],
          legendMarker: {
            backgroundColor: legendColors[5],
          },
        },
        {
          text: 'Date 2022.9',
          values: [],
          legendMarker: {
            backgroundColor: legendColors[5],
          },
        },
      ],
    };

    // RENDER CHARTS
    // -----------------------------
    window.addEventListener('load', () => {
      zingchart.render({
        id: 'myChart',
        data: chartConfig,
        output: 'svg',
      });
    });
  </script>
</body>

</html>