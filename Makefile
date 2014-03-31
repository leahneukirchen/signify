CFLAGS?= -Wall -O2
CFLAGS+= -I.

OBJS=	crypto_api.o mod_ed25519.o mod_ge25519.o signify.o
OBJS+=	arc4random.o base64.o bcrypt_pbkdf.o blowfish.o crypto_api.o
OBJS+=	explicit_bzero.o fe25519.o mod_ed25519.o mod_ge25519.o rand_bytes.o
OBJS+=	readpassphrase.o sc25519.o sha2.o sha256hl.o sha512hl.o
OBJS+=	smult_curve25519_ref.o strlcpy.o timingsafe_bcmp.o

all: signify

signify: $(OBJS)

sha256hl.c: helper.c
	sed -e 's/hashinc/sha2.h/g' \
	    -e 's/HASH/SHA256/g' \
	    -e 's/SHA[0-9][0-9][0-9]_CTX/SHA2_CTX/g' helper.c > sha256hl.c

sha512hl.c: helper.c
	sed -e 's/hashinc/sha2.h/g' \
	    -e 's/HASH/SHA512/g' \
	    -e 's/SHA[0-9][0-9][0-9]_CTX/SHA2_CTX/g' helper.c > sha512hl.c

clean:
	rm -f *.o signify
