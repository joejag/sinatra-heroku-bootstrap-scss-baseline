module MySinatraApp
  class App < Sinatra::Base

    configure do
      set :public_folder, Proc.new { File.join(root, "static") }
      Compass.add_project_configuration(File.join(root, 'config', 'compass.rb'))
    end

    get '/' do
      erb :index
    end

    get '/stylesheets/:name.css' do
      content_type 'text/css', :charset => 'utf-8'
      scss(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
    end

  end
end

