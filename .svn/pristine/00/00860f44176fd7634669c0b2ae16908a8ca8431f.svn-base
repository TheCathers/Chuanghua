package club.chuanghua.util;

import club.chuanghua.pojo.Topic;

import java.util.ArrayList;
import java.util.List;

//分页工具类
public class PageUtil {
    //当前页码-来自于用户输入
    private int currentPageNo = 1;

    //总数量（表）
    private int totalCount = 0;

    //页面容量
    private int pageSize = 5;

    //总页数-totalCount/pageSize（+1）
    private int totalPageCount = 1;

    public PageUtil(int currentPageNo, int totalCount) {
        this.currentPageNo = currentPageNo;
        this.totalCount = totalCount;
        this.pageSize = pageSize;
    }

    public int getCurrentPageNo() {
        return currentPageNo;
    }

    public void setCurrentPageNo(int currentPageNo) {
        if (currentPageNo > 0) {
            this.currentPageNo = currentPageNo;
        }
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        if (totalCount > 0) {
            this.totalCount = totalCount;
            //设置总页数
            this.setTotalPageCountByRs();
        }
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        if (pageSize > 0) {
            this.pageSize = pageSize;
        }
    }

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public void setTotalPageCountByRs() {
        if (this.totalCount % this.pageSize == 0) {
            this.totalPageCount = this.totalCount / this.pageSize;
        } else if (this.totalCount % this.pageSize > 0) {
            this.totalPageCount = this.totalCount / this.pageSize + 1;
        } else {
            this.totalPageCount = 0;
        }
    }

    public List<Topic> sublist(List<Topic> list) {
        List<Topic> subList = new ArrayList<Topic>();
        if (currentPageNo * pageSize > list.size()) {
            subList = list.subList((currentPageNo-1) * pageSize, list.size());
        } else {
            subList = list.subList((currentPageNo-1) * pageSize, currentPageNo * pageSize);
        }
        return subList;
    }
}