package cn.bdqn.shop.util;

public class Page {
	private int pageIndex;
	private int pageCount;
	private int Row;
	private int index;

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getRow() {
		return Row;
	}

	public void setRow(int row) {
		Row = row;
	}


	public void setIndex(int index) {
		this.Row = index;
		// 计算总页数
		if (Row % pageCount == 0) {
			this.index = Row / pageCount;
		} else {
			this.index = Row / pageCount + 1;
		}
	}

	public int getIndex() {
		return index;
	}

	

}
