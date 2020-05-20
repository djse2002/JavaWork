package com.lec.beans;

public class CountBean {

		//멤버변수
		private int cntNumber;
		
		//기본 생성자
		public CountBean(){
			System.out.println("CountBean 생성 !!!!");
		}
		
		public void setCount(int n){
			cntNumber += n;  // 기존의 값에 더해진다!
		}
		
		public int getCount(){
			return cntNumber;
		}
	}

