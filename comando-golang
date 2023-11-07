#instalar golang
sudo apt install golang

#crear carpetas donde se descarga información de los modulos con que se trabaje
mkdir -p $HOME/go/{bin,src}

#configurar parametros .profile
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# set PATH so it includes user's private bin if it exists
if [ -d "$GOPATH/bin" ] ; then
    PATH="$GOPATH/bin:$PATH"
fi

#comando solucionar problema Installing 1 tool at the configured GOBIN: /usr/local/go/bin in module mode. gopls VSCODE
export GOBIN=$HOME/go/bin #agregar en .profile
go install -v golang.org/x/tools/gopls@latest

#instalar el gotcl para compilar los protoc
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
GO111MODULE=on go install github.com/zeromicro/go-zero/tools/goctl@v1.5.6

#instalar protoc para compilar los archivos .proto de Golang
sudo apt install -y protobuf-compiler libprotobuf-dev libprotoc-dev

#instalar el compilardor de protoc-ge-go
go install github.com/golang/protobuf/protoc-gen-go

#version mas actualizar de los componentes
go get github.com/grpc-ecosystem/grpc-gateway/v2/internal/descriptor@v2.6.0
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway
go get github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-swagger
go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

##esta version es la anterior
#go get github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway/descriptor@v1.16.0
#go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway
#go install github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger

#rescatar repo bitbucket
# agregar clave publica en https://bitbucket.org/account/settings/ssh-keys/
cd .ssh
ssh-keygen -t ed25519 -b 4096 -C "{username@emaildomain.com}" -f id_25519
ssh -T git@bitbucket.org

# crear clave para rescatar git-submodule https://bitbucket.org/account/settings/app-passwords/
usuariobitbucket
tokengenerado

### Recuperar los repos de los sub-modulos
git submodule update --init --recursive

#proto-clean:
	rm src/controller/pb/*.go

#swagger-clean:
	rm src/controller/swagger/*.swagger.json

#compilacion de los protos (ejemplo
protoc --proto_path=src/controller/proto \
                    src/controller/proto/BulkheadConsulta.proto \
                    src/controller/proto/CoreConsulta.proto \
       --go_out=plugins=grpc:src/controller/pb \
       --grpc-gateway_out=:src/controller/pb \
       --swagger_out=:src/controller/swagger

#comprobar paquetes de proyectos
go mod tidy
