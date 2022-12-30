<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
  <meta charset="utf-8">
  <style>
    #title{
        ;
    }
  </style>
  
</head>
<body style="height: 100%;">
    
    <div id="title"><h1 align="center">BMI</h1></div>
    <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.4.1/dist/echarts.min.js"></script>
    
    <div id="container" style="height: 100%;"></div>
    
    <script type="text/javascript">
        var dom = document.getElementById('container');
        var myChart = echarts.init(dom, null, {
            renderer: 'canvas',
            useDirtyRect: false
        });
        var app = {};
        
        var option;
        
        option = {
            
  series: [
    {
      type: 'gauge',
      startAngle: 180,
      endAngle: 0,
      center: ['50%', '75%'],
      radius: '90%',
      min: 0.80,
      max: 1.1,
      splitNumber: -1,
      axisLine: {
        lineStyle: {
          width: 30,
          color: [
            [0.333, '#88b14b'],
            [0.666, '#f6a54c'],
            [1.1, '#FF6E76']
          ]
        }
      },
      pointer: {
        icon: 'path://M12.8,0.7l12,40.1H0.7L12.8,0.7z',
        length: '12%',
        width: 20,
        offsetCenter: [0, '-60%'],
        itemStyle: {
          color: 'auto'
        }
      },
     
      title: {
        offsetCenter: [0, '-10%'],
        fontSize: 30
      },
      detail: {
        fontSize: 50,
        offsetCenter: [0, '-35%'],
        valueAnimation: true,
       
        color: 'auto'
      },
      data: [
        {
          value: 0.89,
          name: 'Low'
        }
      ]
    }
  ]
};

    if (option && typeof option === 'object') {
      myChart.setOption(option);
    }

    window.addEventListener('resize', myChart.resize);
  </script>
  
</body>
</html>