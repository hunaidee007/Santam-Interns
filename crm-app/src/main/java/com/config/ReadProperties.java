package com.config;


import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.StringTokenizer;

public class ReadProperties {

	File MyFile;
	InputStream InStream;
	DataInputStream MyReader;
	
	public String[] MyTokens;
	
	public ReadProperties(){
		MyFile = new File("C:\\WorkSpaceTwo\\connectionString.txt");
		try {
			InStream = new FileInputStream(MyFile);
			MyReader = new DataInputStream(InStream);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.MyTokens = new String[(int) MyFile.length()];
	}
	
	public String[] readMyFile(){
		StringBuffer StrBuff = new StringBuffer();
		String Message = "";
		
		int i = 0;
		try {
			while((Message = MyReader.readLine()) !=  null){
				//System.out.println(Message);
				StrBuff.append(Message);
				StringTokenizer StrTokens = new StringTokenizer(Message, " ");
				while (StrTokens.hasMoreElements()) {
					this.MyTokens[i] = StrTokens.nextToken();
					
					//System.out.println(MyTokens[i]);
					i++;
				}
				
			}
			System.out.println("url: "+MyTokens[3]);
			System.out.println("Username: "+MyTokens[7]);
			System.out.println("Password: "+MyTokens[11]);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return MyTokens;
	}
}
