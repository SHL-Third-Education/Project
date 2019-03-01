#include <stdio.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
 
#define DIE(format,...) do {perror(NULL); printf(format, ##__VA_ARGS__); exit(1);} while(0)
 
int say_something (int sock)
{
    char buff[256];
    int len, flags;
 
    flags = fcntl(sock, F_GETFL);
    flags = flags & (~ O_NONBLOCK);
    if (fcntl(sock, F_SETFL, flags))
        DIE("fcntl() failed\n");
 
    snprintf(buff, sizeof(buff), "Hello. I'm %d", getpid());
    printf("sending %s\n", buff);
    if (send(sock, buff, strlen(buff) + 1, 0) != strlen(buff) + 1)
        DIE("send() failed\n");
 
    len = recv(sock, buff, sizeof(buff), 0);
    if (len <= 0)
        DIE("recv() failed\n");
    printf("received %s\n", buff);
 
    return 0;
}
 
// TODO address type, length...
int getaddr (struct sockaddr *addr, const char *host, const char *port)
{
    struct addrinfo hints, *res;
 
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = 0;
    hints.ai_flags = AI_PASSIVE;
 
    if (getaddrinfo(host, port, &hints, &res))
        return -1;
 
    if (res == NULL)
        return -1;
 
    memcpy(addr, res->ai_addr, res->ai_addrlen);
    freeaddrinfo(res);
    return 0;
}
 
int main (int argc, char *argv[])
{
    int ssock, csock;
    struct sockaddr_in local_addr, remote_addr;
    fd_set rfds, wfds;
    struct timeval tv;
    int i;
    socklen_t len;
 
    if (argc != 4) {
        printf("Usage: %s localport remotehost remoteport\n", argv[0]);
        exit(0);
    }
 
    if (getaddr((struct sockaddr *)&local_addr, NULL, argv[1]))
        DIE("getaddr() failed\n");
    if (getaddr((struct sockaddr *)&remote_addr, argv[2], argv[3]))
        DIE("getaddr() failed\n");
 
    if ((ssock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
        DIE("socket() failed\n");
    if ((csock = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0)
        DIE("socket() failed\n");
 
    i = 1;
    if (setsockopt(ssock, SOL_SOCKET, SO_REUSEADDR, &i, sizeof(int)))
        DIE("setsockopt() failed\n");
    if (setsockopt(csock, SOL_SOCKET, SO_REUSEADDR, &i, sizeof(i)))
        DIE("setsockopt() failed\n");
 
    if (bind(ssock, (const struct sockaddr *)&local_addr, sizeof(local_addr)))
        DIE("bind() failed\n");
    if (bind(csock, (const struct sockaddr *)&local_addr, sizeof(local_addr)))
        DIE("bind() failed\n");
 
    if (fork()) {
        close(csock);
 
        if (listen(ssock, 1))
            DIE("listen() failed\n");
        while (1) {
            len = sizeof(remote_addr);
            i = accept(ssock, (struct sockaddr *)&remote_addr, &len);
            if (i < 0) {
                perror("accept() failed.");
            } else {
                printf("accept() succeed.");
                return say_something(i);
            }
        }
    } else {
        close(ssock);
        srandom(getpid());
 
        for (i = 0; i < 3; i ++) {
            if (connect(csock, (const struct sockaddr *)&remote_addr, sizeof(remote_addr))) {
                int sleeptime = random() * 1000000.0 / RAND_MAX + 1000000.0;
                sleeptime = sleeptime << i;
                perror("connect() failed");
                if (i < 2) {
                    printf("sleeping for %.2f sec to retry\n", sleeptime / 1000000.0);
                    usleep(sleeptime);
                }
            } else {
                printf("connect() succeed");
                return say_something(csock);
            }
        }
        return 1;
    }
}
