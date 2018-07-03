package cn.bdqn.shop.dao;


import java.sql.*;

public class BaseDao {
	private final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; // 驱动
	private final String URL = "jdbc:sqlserver://localhost:6450;DatabaseName=MyShop"; // 数据库连接
	private final String UID = "sa"; // 用户名
	private final String PWD = "accp";// 密码
	protected Connection conn = null; // 可以被子类继承的Connection对象
	protected PreparedStatement pstmt = null; // 可以被子类继承的PreparedStatement对象
	protected ResultSet rs = null; // 可以被子类继承的ResultSet对象

	/**
	 * @return 打开的Connection连接
	 */
	private Connection getConnection() {
		try {
			Class.forName(DRIVER);// 加载驱动
			conn = DriverManager.getConnection(URL, UID, PWD);// 根据地址，用户名，密码建立数据库连接
		} catch (ClassNotFoundException e) {

			// e.printStackTrace();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * @param conn
	 *            要关闭的Connection连接
	 * @param stmt
	 *            要关闭的Statement对象或者PreparedStatement对象
	 * @param rs
	 *            要关闭的ResultSet对象
	 */
	public void closeAll(Connection conn, Statement stmt, ResultSet rs) {
		// 以上三个对象在关闭时都有可能引发SQLException异常所以同意加入try--catch
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	/**
	 * @param sql
	 *            要执行的增删改语句
	 * @param param
	 *            SQL中参数的值（“?”的替代值）
	 * @return 受影响行数
	 */
	public int executeUpdate(String sql, Object[] param) {
		int row = 0;
		try {
			conn = this.getConnection();// 得到一个连接
			pstmt = conn.prepareStatement(sql);// 发送参数化的sql语句
			if (param != null) { // 先判断是否需要参数值
				for (int i = 0; i < param.length; i++) { // 循环给每一个参数（？号）赋值
					pstmt.setObject(i + 1, param[i]);
				}
			}
			row = pstmt.executeUpdate(); // 执行替换后的sql语句
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, null); // 调用关闭所有连接的方法
		}
		return row;
	}

	/**
	 * @param sql
	 *            带有参数的查询语句
	 * @param param
	 *            SQL中参数的值（“?”的替代值）
	 * @return ResultSet对象
	 */
	public ResultSet executeQuery(String sql, Object[] param) {
		try {
			conn = this.getConnection();// 得到一个连接
			pstmt = conn.prepareStatement(sql);// 发送参数化的sql语句
			if (param != null) { // 先判断是否需要参数值
				for (int i = 0; i < param.length; i++) {// 循环给每一个参数（？号）赋值
					pstmt.setObject(i + 1, param[i]);
				}
			}
			rs = pstmt.executeQuery(); // 执行替换后的sql语句
		
		} catch (SQLException e) {

			e.printStackTrace();
		}
		// 注意此处不能写finally关闭所有连接，因为ResultSet对象在读取数据时必须保持整个数据库连接正常工作
		return rs;
	}
}
