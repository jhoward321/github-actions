FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine3.9

LABEL version="1.0.0"

LABEL maintainer="Microsoft Corporation"
LABEL com.github.actions.name=".NET Core CLI"
LABEL com.github.actions.description="GitHub Action to build, test, package or publish a dotnet application, or run a custom dotnet command."
LABEL com.github.actions.icon="triange"
LABEL com.github.actions.color="blue"

RUN apk add nodejs

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
