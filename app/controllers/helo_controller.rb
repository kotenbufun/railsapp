class HeloController < ApplicationController
  # protect_from_forgery CSRF対策をoffにする
  layout 'helo'

  # def index

    # simple text
    # render plain:"Hello. This is Rails sample page"

    # The way to write HTML
    # msg = '<html>
    #        <body>
    #           <h1>Sample Page</h1>
    #           <p>This is Rails smaple page!</p>
    #        </body>
    #        </html>
    #        '
    #
    #        render html: msg.html_safe

    # if params['msn'] != nil
    #   msn = "Hello, " + params['msn'] + "!"
    # else
    #   msn = "this is smaple page"
    # end
    # html = '
    # <html>
    # <body>
    #   <h1>Sample Page</h1>
    #   <p> ' + msn + ' </p>
    # </body>
    # </html>
    # '
    #
    # render html: html.html_safe

    # インスタンス変数を使ってviewファイルをコントロール
    # @title = "Viewサンプル"
    # @msg = "コントローラーに用意した値です。"

  # リダイレクト（失敗）
  # def index
  #   if params['msg'] != nil
  #     @title = params['msg']
  #   else
  #     @title = "index"
  #   end
  #   @msg = "this is redirect sample..."
  # end
  #
  # def other
  #   redirect_to ation: :index , params:{'msg': 'from other page'}
  # end

  def index

    @header = 'layout sample'
    @footer = 'copyright SYODA-Tuyano 2016,'
    @title = 'New Layout'
    @msg = 'this is a sample page!'
  end
end
