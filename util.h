#include <stdint.h>
#include <sys/types.h>

     size_t
     strlcpy(char *dst, const char *src, size_t size);

       void explicit_bzero(void *s, size_t n);

int
timingsafe_bcmp(const void *b1, const void *b2, size_t n);


void
arc4random_buf(void *buf, size_t n);

int	bcrypt_pbkdf(const char *, size_t, const uint8_t *, size_t,
    uint8_t *, size_t, unsigned int);

int RAND_bytes(unsigned char *buf, int num);

int
b64_ntop(u_char const *src, size_t srclength, char *target, size_t targsize);
int
  b64_pton(char const *src, u_char *target, size_t targsize);

void * reallocarray(void *optr, size_t nmemb, size_t size);

