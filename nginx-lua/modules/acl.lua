local acl = {}

acl.needs_authorization = function(filterUri)
  if filterUri == "/oauth/token" and "POST" == ngx.req.get_method() then
    return false
  end
  return true
end

return acl;