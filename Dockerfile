# ============================================================================
# 7. UNALLOWED COMMANDS TEST 
# ============================================================================
# File: dockerfile-unallowed-commands.dockerfile
# Expected violations: Unallowed commands (apk, apt, pip, curl, wget)

FROM alpine:3.18

RUN apk add --no-cache git
RUN apt install vim
RUN pip install requests
RUN curl -O https://example.com/file
RUN wget https://example.com/archive.tar.gz

COPY ./app /app
CMD ["./app"]