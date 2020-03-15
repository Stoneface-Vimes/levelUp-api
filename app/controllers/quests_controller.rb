class QuestsController < ApplicationController

  include Response
  include ExceptionHandler

    # GET /quests
    def index
      @quests = Quest.all
      json_response(@quests)
    end

    # GET /quest_object/:id
    # Will return a Quest JSON object containing the quest,
    # and all relevant nodes, posts and comments
    def object
    @quest = Quest.find(params[:id])
    @nodes = Node.where(quest_id: @quest.id)
    @posts = []
    @nodes.each do |node| 
      @posts.append(Post.where(node_id: node.id))
    end
    @comments = []
    @posts.each do |post|
      post.each do |post2|
      @comments.append(Comment.where(post_id: post2.id))
    end
  end
    
  @response = {
    :quest => @quest,
    :nodes => @nodes,
    :posts => @posts,
    :comments => @comments
  }

    json_response(@response)
    end
  

    # POST /quests
    def create
      @quest = Quest.create!(quest_params)
      json_response(@quest, :created)
    end
  
    # GET /quests/:id
    def show
      json_response(@quest)
    end
  
    # PUT /quests/:id
    def update
      @quest.update(quest_params)
      head :no_content
    end
  
    # DELETE /quests/:id
    def destroy
      @quest.destroy
      head :no_content
    end
  
    private
  
    def quest_params
      # whitelist params
      params.permit(:party_key, :user_key, :title, :quest_description, :status, :mentor_id)
    end
  
    def set_quest
      @quest = Quest.find(params[:id])
    end
  end
  
