module PhotorHelpers

  def execute_method(object, method_name, params={})
    JSON.parse(object.send(method_name.to_sym, params).body)
  end

end