package ServiceImpl;
import com.util.Real_monitor;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.StringTokenizer;
import com.util.DBUtil;

public class ServerThread implements Runnable {
	ArrayList<String> listGSuper = new ArrayList<String>();//超级列表对所有的子字符串进行存取，全局
	private Socket client = null;
	public ServerThread(Socket client) {
		this.client = client;
	}
	public void run() {
		Real_monitor real_monitor = new Real_monitor();
		//定义两个列表分别对心率和时间进行存取，其他的参数类似
		ArrayList<String> heartList = new ArrayList<String>();
		ArrayList<String> realtimeList = new ArrayList<String>();
		listGSuper = this.ServerReciveData();
		//获取列表中对应的字段的子字符串
		String heart = listGSuper.get(0);//心率
		String realtime = listGSuper.get(1);//时间
		//在服务端输出数据
		System.out.println("listGSuper:"+listGSuper);
		System.out.println("heart:"+heart);
		System.out.println("realtime:"+realtime);
		//对解析到的子字符串进行分割
		// 采集到的心率
		String hea[] = heart.split("/");
		for (int i = 0; i < hea.length; i++) {
			heart.add(hea[i]); 
		}
		// 采集到的时间
		String rea[] = realtime.split("/");
		for (int i = 0; i < rea.length; i++) {
			realtimeList.add(rea[i]);
		}
		//对area对象内的字段进行设置参数
		for (int j = 0; j < 8; j++) {
			real_monitor.setid(j + 1);
			real_monitor.setHeart(heartList.get(j));
			real_monitor.setRealtime(realtimeList.get(j));
		DBUtil.insert(real_monitor);  //插入到数据库
	}
		DBUtil.getAll(); //查询数据库
	}

	public ArrayList<String> ServerReciveData() {
		ArrayList<String> listSuper = new ArrayList<String>();
		try {
			// 获取Socket的输出流，用来向客户端发送数据
			PrintStream out = new PrintStream(client.getOutputStream());
			// 获取Socket的输入流，用来接收从客户端发送过来的数据
			BufferedReader buf = new BufferedReader(new InputStreamReader(client.getInputStream()));
			boolean flag = true;
			while (flag) {
				// 接收从客户端发送过来的数据
				String str = buf.readLine();
				if (str == null || "".equals(str)) {
					flag = false;
				} else {	
					StringTokenizer st = new StringTokenizer(str, ";");//解析出以“;”分割的子字符串
					//int n=0;
					while (st.hasMoreElements()) {
						listSuper.add(st.nextToken());//等价于下列的各种判断
					}
					return listSuper;	
				}
			}
			out.close();
			client.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return listSuper;
	}
}
