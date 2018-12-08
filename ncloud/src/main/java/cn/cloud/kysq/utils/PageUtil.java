package cn.cloud.kysq.utils;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletRequest;

import org.apache.commons.lang.StringUtils;

public class PageUtil implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 获取目标页码
	 * 
	 * @return
	 */
	public static int getTargetPage(ServletRequest request) {

		int pageNum = 0;

		String pageNumStr = request.getParameter("pageNum");

		if (StringUtils.isNotBlank(pageNumStr)) {
			try {
				pageNum = Integer.valueOf(pageNumStr);
			} catch (Exception e) {
				pageNum = 0;
			}
		}

		return pageNum;
	}

	/**
	 * 获取每页条数
	 * 
	 * @return
	 */
	public static int getPageSize(ServletRequest request) {

		int pageSize = 0;

		String pageSizeStr = request.getParameter("pageSize");

		if (StringUtils.isNotBlank(pageSizeStr)) {
			try {
				pageSize = Integer.valueOf(pageSizeStr);
			} catch (Exception e) {
				pageSize = 0;
			}
		}

		return pageSize;
	}

	/**
	 * 将Map中的查询条件，加上前缀，以&拼接
	 * 
	 * @param map
	 * @param prefix
	 *            每个参数的前缀
	 * @return
	 */
	public static String encodeParameterStringWithPrefix(Map<String, Object> map, String prefix) {

		if (null == map || map.isEmpty()) {
			return "";
		}

		StringBuffer sb = new StringBuffer();

		Iterator<Map.Entry<String, Object>> entries = map.entrySet().iterator();

		while (entries.hasNext()) {

			if (StringUtils.isNotEmpty(sb.toString())) {
				sb.append("&");
			}

			Map.Entry<String, Object> entry = entries.next();

			sb.append(prefix);
			sb.append(entry.getKey());
			sb.append("=");
			sb.append(entry.getValue());

		}

		return sb.toString();

	}

}
