package book.controller;


import book.action.BookAction;
import book.action.BookDeletAction;
import book.action.BookInsertAction;
import book.action.BookListAction;
import book.action.BookModifyAction;
import book.action.BookSearchAction;

public class BookActionFactory {
private static BookActionFactory bookActionFactory=null;

private BookAction action;
private BookActionFactory() {}

public static BookActionFactory getInstance() {
	if(bookActionFactory==null) {
		bookActionFactory =new BookActionFactory();
	}return bookActionFactory;
}
	public BookAction action(String cmd) {
		if(cmd.equals("/list.do")) {
			action=new BookListAction("/selectindex.jsp");
		}else if (cmd.equals("/insert.do")) {
			//성공하면 
			action = new BookInsertAction("/list.do");
		}else if (cmd.equals("/modify.do")) {
			action= new BookModifyAction("/list.do");
		}else if(cmd.equals("/delete.do")){
			action = new BookDeletAction("/list.do");
		}else if(cmd.equals("/search.do")) {
			action=new BookSearchAction("/searchIndex.jsp");
		}
		return action;
	}
}

