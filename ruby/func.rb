def layout(name, option)
 puts option.fetch(:via)
end


layout 'bomb', to: 'hello', :via => 'get'
