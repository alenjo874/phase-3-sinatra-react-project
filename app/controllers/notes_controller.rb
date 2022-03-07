class NotesController < Sinatra::Base
  
    get "/notes" do
      notes = Note.all
      notes.to_json
    end

    post "/notes" do
      new_note = Note.create(params)
      new_note.to_json
    end

    patch "/notes/:id" do
      edit_note = Note.find(params[:id])
      edit_note.update(params)
      edit_note.to_json
    end

    delete "/notes/:id" do
      delete_note = Note.find(params[:id])
      delete_note.destroy
    end
  
  end