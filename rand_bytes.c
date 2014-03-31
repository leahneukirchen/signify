#include <fcntl.h>
#include <unistd.h>

int RAND_bytes(unsigned char *buf, int num)
{
	int fd, r;
	
	fd = open("/dev/urandom", 0);
	if (fd < 0)
		return -1;
	r = read(fd, buf, num);
	close(fd);

	return r;
}
