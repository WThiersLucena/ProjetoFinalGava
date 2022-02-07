package br.com.br.aplicacoes;

import br.com.br.dao.UserDAO;
import br.rd.com.model.User;

public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		UserDAO maca = new UserDAO();
		
		//Container maca = new Container();
		System.out.println(maca.selectAll());
		
		User laranja = new User("Sergio", "China", "maca@rd.com.br");
		maca.insert(laranja);
		System.out.println(maca.selectAll());
		
		User laranja1 = new User("Lara", "Japão", "melao@rd.com.br");
		maca.insert(laranja1);
		System.out.println(maca.selectAll());
		
		maca.removeUser(2);
		System.out.println(maca.selectAll());
		
		User laranja2 = new User("Muryllo", "Malásia", "uva@rd.com.br");
		maca.insert(laranja2);
		System.out.println(maca.selectAll());
		
		maca.removeUser(2);
		System.out.println(maca.selectAll());
		
		laranja.setPais("Holanda");
		maca.updateUser(laranja);
		System.out.println(maca.selectAll());
		
		User novo = maca.selectById(3);
		System.out.println(novo);
		
		User novo1 = maca.selectById(10);
		System.out.println(novo1);
	}

}
