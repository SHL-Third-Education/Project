from flask import Flask, request
import socket

ip = '127.0.0.1'
port = 4000

app = Flask(__name__)

@app.route('/')
def index():
	return '''<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        .slidecontainer {
            width: 100%;
        }

        .slider {
            -webkit-appearance: none;
            /* width: 100%; */
            width: 150px;
            height: 25px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }

        .slider:hover {
            opacity: 1;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            background: #4CAF50;
            cursor: pointer;
        }
        /*
        .slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            background: #4CAF50;
            cursor: pointer;
        }
        */
    </style>
    <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>
</head>
<body>

<h1>Custom Range Slider</h1>

<div class="slidecontainer">
    <p>Custom range slider:</p>
    <input type="range" min="1000" max="2000" value="1500" class="slider" id="myRange">
</div>
<div id="motor_speed"></div>
<script>
    const motorSpeed = document.getElementById('motor_speed');
    const slider = document.getElementById('myRange');
    /*
    slider.addEventListener('change', () => {
       //console.log(slider.value);
        motorSpeed.innerText = `Range: ${slider.value}`;
    });
    */

    let isClicked = false;
    slider.addEventListener('mousedown', () => {
        isClicked = true;
    });

    slider.addEventListener('mousemove', () => {
       if(isClicked){
           motorSpeed.innerText = `Range: ${slider.value}`;
           $.ajax({
               //url: `http://192.168.43.1:5000/speed/${slider.value}`,
               url: `/speed/${slider.value}`,
               type: 'GET'
           })
       }
    });

    slider.addEventListener('mouseup', () => {
       isClicked = true;
    });
</script>
</body>
</html>'''

@app.route('/speed/<v>')
def recv(v):
    #return 'Hello: %s' % v
    #return v
    #msg = v.receive()
    #v.send(msg)
    #print(v)
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((ip, port))
        print('success')
        #line = input('>>>')
        d = str(v).encode()
        #print('13 '.encode() + d)
        s.sendall('13 '.encode() + d)
        #s.sendall(str(v).encode())
        #s.sendall('1600'.encode())
        response = s.recv(8192)
        #print(response.decode())
        #print(v)
        return response.decode()

if __name__ == '__main__':
    app.run(debug=True)
