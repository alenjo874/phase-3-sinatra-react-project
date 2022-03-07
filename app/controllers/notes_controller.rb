class NotesController < Sinatra::Base
  
    get "/notes" do
      notes = Note.all
      notes.to_json
    end
  
  end