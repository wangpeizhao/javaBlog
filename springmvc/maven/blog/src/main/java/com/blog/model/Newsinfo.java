package com.blog.model;

import java.util.Date;

public class Newsinfo {
	private Integer newsId;

    private String newsTitle;

    private String newsSummary;

    private String newsPic;

    private Date createdate;

    private Integer authorId;

    private Integer topicId;

    private String newsContent;

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public String getNewsSummary() {
        return newsSummary;
    }

    public void setNewsSummary(String newsSummary) {
        this.newsSummary = newsSummary == null ? null : newsSummary.trim();
    }

    public String getNewsPic() {
        return newsPic;
    }

    public void setNewsPic(String newsPic) {
        this.newsPic = newsPic == null ? null : newsPic.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Integer getAuthorId() {
        return authorId;
    }

    public void setAuthorId(Integer authorId) {
        this.authorId = authorId;
    }

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public String getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(String newsContent) {
        this.newsContent = newsContent == null ? null : newsContent.trim();
    }
    
    @Override
    public String toString(){
    	return "NewsInfo[newsId = "+newsId+",newsTitle = "+newsTitle+",newsSummary = "+newsSummary+",newsPic = "+newsPic
    			+",createdate = "+createdate+",authorId = "+authorId+",topicId = "+topicId+",newsContent = "+newsContent+"]";
    }
}
