from http.server import BaseHTTPRequestHandler, HTTPServer

hostName = "127.0.0.1"
serverPort = 1234


class MyServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(
            bytes("\n\nGot response from server running on localhost! \n\n", "utf-8"))
        exit()


if __name__ == "__main__":
    print("starting...")
    webServer = HTTPServer((hostName, serverPort), MyServer)
    print("Server started http://%s:%s" % (hostName, serverPort))
    webServer.serve_forever()
