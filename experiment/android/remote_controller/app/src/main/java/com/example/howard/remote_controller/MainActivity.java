package com.example.howard.remote_controller;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.os.StrictMode;
import android.os.health.TimerStat;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {
    public EditText ip, port, tx_msg, rx_msg;
    public Button connect_btn, disconnect_btn, send_btn, send_up, send_down, send_stop;
    public TextView vel;
    public SeekBar ang_seek;
    public TextView seek_test;
    public String msg, recv;
    public Socket socket;
    public int veloc = 1500, servo = 1500;
    public int seek = 1500;
    public Switch blink_left, blink_right, front_light, break_light;
    private Handler mHandler = new Handler();

    private DataOutputStream writeSocket;
    private InputStream input;

    private TimerTask mTask;
    private Timer mTimer;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        StrictMode.ThreadPolicy policy=new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);

        vel = (TextView)findViewById(R.id.view_veloc);


        //ip, port, tx_msg, rx_msg를 각각의 EditText와 연결
        ip = (EditText)findViewById(R.id.input_ip);
        port = (EditText)findViewById(R.id.input_port);
        tx_msg = (EditText)findViewById(R.id.input_msg);
        rx_msg = (EditText)findViewById(R.id.recv_msg);

        //connect_btn, disconnect_btn, send_btn을 각각의 Button과 연결
        connect_btn = (Button)findViewById(R.id.connect_button);
        disconnect_btn = (Button)findViewById(R.id.disconnect_button);
        send_btn = (Button)findViewById(R.id.send_button);

        send_up = (Button)findViewById(R.id.button);
        send_down = (Button)findViewById(R.id.button2);

        send_stop = (Button)findViewById(R.id.button5);

        ang_seek = (SeekBar)findViewById(R.id.ang_seek);
        seek_test = (TextView)findViewById(R.id.textView4);

        blink_left = (Switch)findViewById(R.id.blink_left);
        blink_right = (Switch)findViewById(R.id.blink_right);
        front_light = (Switch)findViewById(R.id.front_light);
        break_light = (Switch)findViewById(R.id.break_light);


        mTask = new TimerTask() {
            @Override
            public void run() {

                try {
                    int num;
                    if(!ang_seek.isPressed()) {
                        if ((num = ang_seek.getProgress()) < 10) {

                            num += 1;
                            //seek_test.setText(Integer.toString(num));
                            ang_seek.setProgress(num);
                        } else if ((num = ang_seek.getProgress()) > 10) {
                            num -= 1;
                            //seek_test.setText(Integer.toString(num));
                            ang_seek.setProgress(num);
                        }
                    }
                }catch(Exception e){

                }
            }
        };
        mTimer = new Timer();
        mTimer.schedule(mTask,3, 200);

        blink_left.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    try {
                        byte[] msg = new byte[10240];

                        msg = ("7 1000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }
                else{
                    try {
                        byte[] msg = new byte[10240];
                        msg = ("7 0000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }

            }
        });
        blink_right.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    try {
                        byte[] msg = new byte[10240];

                        msg = ("8 1000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }
                else{
                    try {
                        byte[] msg = new byte[10240];
                        msg = ("8 0000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }

            }
        });
        front_light.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    try {
                        byte[] msg = new byte[10240];

                        msg = ("9 1000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }
                else{
                    try {
                        byte[] msg = new byte[10240];
                        msg = ("9 0000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }

            }
        });
        break_light.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
                if(b){
                    try {
                        byte[] msg = new byte[10240];

                        msg = ("10 1000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }
                else{
                    try {
                        byte[] msg = new byte[10240];
                        msg = ("10 0000000").getBytes();
                        writeSocket.write(msg, 0, msg.length);
                    }catch(Exception e){

                    }
                }

            }
        });
        ang_seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int i, boolean b) {
                seek = 500 + (20-i)*100;
                seek_test.setText(Integer.toString(seek));
                try {
                    byte[] msg = new byte[10240];
                    if(seek >= 1000)
                        msg = ("12 " +Integer.toString(seek) + "0000").getBytes();
                    else
                        msg = ("12 0" +Integer.toString(seek) + "0000").getBytes();

                    writeSocket.write(msg, 0, msg.length);
                }catch(Exception e){

                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });

        //connect_btn 버튼 클릭 이벤트 설정
        connect_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                (new Connect()).start();
            }
        });

        disconnect_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                (new Disconnect()).start();
            }
        });

        /*
         * 단순히 SEND 버튼 클릭시, input_msg에 들어있는 글자를 송신하는 예제이다.
         * 리모콘 제작시, 버튼을 여러개(방향키, 등)을 추가하여
         * 각각의 버튼마다 어떤 메세지를 보낼 것인지 프로토콜을 정하면 된다.
         * 예를 들어, 위쪽버튼, 아래쪽버튼, 왼쪽버튼, 오른쪽 버튼이 있다고 할 때,
         * 위쪽버튼 클릭시 -> u 전송
         * 아래쪽버튼 클릭시 -> d 전송
         * 왼쪽버튼 클릭시 -> l 전송
         * 오른쪽버튼 클릭시 -> r 전송
         * 이라는 프로토콜을 정하여, MCU에서도 u를 입력 받았을 때 직진,
         * d를 입력받았을 때 후진,
         * l을 입력받았을 때 좌회전
         * r을 입력받았을 때 우회전
         * 등 프로토콜을 맞춰주면 된다.
         * */
        send_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view){
                (new sendMessage()).start();
            }
        });

        send_up.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view){
                    (new send_u()).start();
            }
        });

        send_down.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view){
                (new send_d()).start();
            }
        });

        send_stop.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view){
                (new send_s()).start();
            }
        });


    }
    //소켓 연결 클래스1
    class Connect extends Thread {
        public void run() {

            String ip_addr = null;
            int port_num = 0;
            //ip와 port값이 형식에 맞게 입력됬는지 확인
            try {
                ip_addr = ip.getText().toString();
                port_num = Integer.parseInt(port.getText().toString());
            } catch (Exception e) {
                final String recvInput = "정확히 입력하세요!";
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
            //해당 ip와 port값에 socket 연결
            try {
                socket = new Socket(ip_addr, port_num);
                writeSocket = new DataOutputStream(socket.getOutputStream());
                input=socket.getInputStream();
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast("연결에 성공하였습니다.");
                        mCheckRecv.start();
                    }
                });
            } catch (Exception e) {
                final String recvInput = "연결에 실패하였습니다.";
                Log.d("Connect", e.getMessage());
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }

    //소켓 연결 해제 클래스
    class Disconnect extends Thread {
        public void run() {
            try {
                if (socket.isConnected()) {
                    socket.close();

                    mHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            // TODO Auto-generated method stub
                            setToast("연결이 종료되었습니다.");
                        }
                    });
                }
            } catch (Exception e) {
                final String recvInput = "연결을 끊는데 실패했습니다.";
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }

    //송신 쓰레드
    class sendMessage extends Thread {
        public void run() {
            try {
                byte[] msg = new byte[10240];
                msg = tx_msg.getText().toString().getBytes();
                writeSocket.write(msg,0, msg.length);
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
         //               setToast("메세지 전송 성공");
                    }
                });
            } catch (Exception e) {
                final String recvInput = "메시지 전송에 실패하였습니다.";
                Log.d("Message", e.getMessage());
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }

    class send_u extends Thread {
        public void run() {
            try {
                    if (veloc < 1530 && veloc > 1470)
                        veloc = 1530;
                    else if (veloc < 2000)
                        veloc += 5;
                    String tx = "13 " + Integer.toString(veloc) + "0000";
                    byte[] msg = new byte[10240];
                    msg = tx.getBytes();
                    writeSocket.write(msg, 0, msg.length);
                    //          vel.setText(Integer.toString(veloc));
                    for(int i=0;i<300000;i++)
                        ;

                    mHandler.post(new Runnable() {
                        @Override
                        public void run() {
                            // TODO Auto-generated method stub
                            vel.setText(Integer.toString(veloc));
           //                 setToast("메세지 전송 성공");
                        }
                    });

            } catch (Exception e) {
                final String recvInput = "메시지 전송에 실패하였습니다.";
                Log.d("Message", e.getMessage());
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }

    class send_d extends Thread {
        public void run() {
            try {
                if(veloc > 1470 && veloc < 1530)
                    veloc = 1470;
                else if(veloc > 1000)
                    veloc -= 5;
                String tx = "13 " + Integer.toString(veloc) + "0000";
                byte[] msg = new byte[10240];
                msg = tx.getBytes();
                writeSocket.write(msg,0, msg.length);
                //        vel.setText(Integer.toString(veloc));
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        vel.setText(Integer.toString(veloc));
             //           setToast("메세지 전송 성공");
                    }
                });
            } catch (Exception e) {
                final String recvInput = "메시지 전송에 실패하였습니다.";
                Log.d("Message", e.getMessage());
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }


    class send_s extends Thread {
        public void run() {
            try {
                veloc = 1500;
                String tx = "13 " + Integer.toString(veloc) + "0000";
                byte[] msg = new byte[10240];
                msg = tx.getBytes();
                writeSocket.write(msg,0, msg.length);
                //            vel.setText(Integer.toString(veloc));

                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        vel.setText(Integer.toString(veloc));
               //         setToast("메세지 전송 성공");
                    }
                });
            } catch (Exception e) {
                final String recvInput = "메시지 전송에 실패하였습니다.";
                Log.d("Message", e.getMessage());
                mHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        // TODO Auto-generated method stub
                        setToast(recvInput);
                    }
                });
            }
        }
    }

    //수신 핸들러
    @SuppressLint("HandlerLeak")
    private Handler mReceiver = new Handler() {
        public void handleMessage(Message msg) {
            //이 어플이 데이터를 수신했을 시, 어떤 동작을 할 지 작성하면 됨
            //이 예제에서는 단순히 받은 데이터를 표시하게 되어있음
        //    setToast("메세지 수신 성공");
            rx_msg.setText(recv);
        }
    };
    //수신된 메세지가 있는지 확인하고, 있다면 수신 핸들러를 동작시킴.
    private Thread mCheckRecv = new Thread(){
        public void run(){
            int size;
            byte[] words=new byte[10240];
            try{
                while(true){
                    size=input.read(words);
                    if(size<=0)
                        continue;
                    recv=new String(words,0,size,"utf-8");
                    mReceiver.sendEmptyMessage(0);
                }
            }catch(Exception e){
                Log.d("tag", "Receive error");
            }
        }
    };

    //알림 메세지 띄우기 함수
    void setToast(String msg) {
        Toast.makeText(this, msg, Toast.LENGTH_SHORT).show();
    }
}