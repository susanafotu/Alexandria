class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end
  
  def show
    id = params[:id]
    @document = Document.find(id)
  end
  
  def new
  
  end
  
  def create
    @document = Document.create!(params[:document])
    #raise params[:title]
    #curFile = File.new("test file", "w")
    #curFile.write("test body").save
    #curFile.close 
    redirect_to documents_path
  end
  
  def update
    @document = Document.find params[:id]
    @document.update_attributes!(params[:document])
    curFile = File.open(params[:name]+".txt")
    curFile.write(params[:body])
    curFile.close 
    redirect_to document_path(@document)
  end
  
  def edit
    @document = Document.find params[:id]
  end
  
  def destroy
    
  end
  
  
end