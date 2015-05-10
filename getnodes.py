import xmlrpclib
api_server = xmlrpclib.ServerProxy('https://www.planet-lab.org/PLCAPI/', allow_none=True)

# Create an empty dictionary (XML-RPC struct)
auth = {}
# Specify password authentication
auth['AuthMethod'] = 'password'
# Username and password
auth['Username'] = 'boj@mail.ustc.edu.cn'
auth['AuthString'] = 'Google-Age-Limit'

authorized = api_server.AuthCheck(auth)
if not authorized:
    print 'We are authorized!'
    exit(1)

all_nodes = api_server.GetNodes(auth)
print all_nodes
