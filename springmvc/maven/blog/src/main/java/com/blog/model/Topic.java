package com.blog.model;

public class Topic {
	private Integer topicId;

    private String topicName;
	public Topic(){}
	public Topic(int topicId,String topicName) {
		super();
		this.topicId = topicId;
		this.topicName = topicName;
	}

    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName == null ? null : topicName.trim();
    }
    
    @Override
    public String toString(){
    	return "Topic[topicId = "+topicId+",topicName = "+topicName+"]";
    }
    
}
