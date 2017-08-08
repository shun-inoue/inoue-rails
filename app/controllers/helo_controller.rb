class HeloController < ApplicationController
    layout 'helo'
  def index
    @header = 'layouts sample'
    @footer = 'copyright SYDDA-Tuyano 2016.'
    @title = 'New Layout'
    @msg = 'this is sample page!'
  end
end
