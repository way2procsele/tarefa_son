class CommentsController < ApplicationController

 def create
 	@tarefa = Tarefa.find(params[:tarefa_id])	
 	@comment = @tarefa.comments.build(params[:comment])
 	
 	if @comment.save
 	flash[:notice] = "Comentario inserido"
 	else	
 	flash[:alert] = "Erro ao inserir comentario"
	 end	

 	redirect_to @tarefa
 end

 def destroy
 	@comment = Comment.find(params[:id])
 	@comment.destroy
 	redirect_to @comment.tarefa, notice: "Comentario removido"
 end

end
