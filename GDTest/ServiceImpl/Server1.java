package ServiceImpl;

import java.net.InetAddress;
import java.net.ServerSocket;  
import java.net.Socket;

public class Server1 {
	
	public static void main(String args[]) throws Exception{
		System.out.println("本机的IP = " + InetAddress.getLocalHost());
        //服务端在20006端口监听客户端请求的TCP连接  ///获取自己的IP
        ServerSocket server = new ServerSocket(10000);  
        Socket client = null;  
        boolean f = true;  
        while(f){  
            //等待客户端的连接，如果没有获取连接  
            client = server.accept();  
            System.out.println("与客户端连接成功！");  
            //为每个客户端连接开启一个线程  
            new Thread(new ServerThread(client)).start();  
        }  
        server.close();  		
	}
}
